import 'dart:convert';
import 'dart:io';

import 'package:swagger_dart_generator/src/core/models/endpoint_model.dart';
import 'package:swagger_dart_generator/src/utils/string_utils.dart';

/// Parses Swagger/OpenAPI JSON files and extracts endpoint information.
class SwaggerParser {
  final String swaggerPath;
  final String outputDir;

  SwaggerParser({
    required this.swaggerPath,
    required this.outputDir,
  });

  /// Parses the Swagger file and returns a list of endpoint categories.
  Future<List<EndpointCategory>> parse() async {
    final file = File(swaggerPath);
    if (!file.existsSync()) {
      throw FileSystemException('Swagger file not found', swaggerPath);
    }

    final jsonStr = await file.readAsString();
    final decoded = json.decode(jsonStr);
    final swagger = _toStringKeyMap(decoded) ?? {};

    final paths = _toStringKeyMap(swagger['paths']) ?? {};
    final components = _toStringKeyMap(swagger['components']) ?? {};
    final rawSchemas = _toStringKeyMap(components['schemas']) ?? _toStringKeyMap(swagger['definitions']) ?? {};
    final schemas = <String, dynamic>{}..addAll(rawSchemas);

    final endpointsByCategory = <String, List<EndpointModel>>{};

    paths.forEach((path, methods) {
      final methodsMap = _toStringKeyMap(methods);
      if (methodsMap == null) return;

      methodsMap.forEach((method, details) {
        if (!_isHttpMethod(method)) return;

        final detailsMap = _toStringKeyMap(details);
        if (detailsMap == null) return;

        final category = _extractCategory(detailsMap);
        final endpointName = _generateEndpointName(path, category, method);

        final parameters = _extractParameters(detailsMap, schemas);
        final response = _extractResponse(detailsMap, schemas);

        final endpoint = EndpointModel(
          name: endpointName,
          path: path,
          method: HttpMethod.fromString(method),
          category: category,
          queryParams: parameters.query,
          pathParams: parameters.path,
          requestBody: parameters.body,
          responseBody: response,
          description: detailsMap['description'] as String? ?? detailsMap['summary'] as String?,
        );

        endpointsByCategory.putIfAbsent(category, () => []);
        endpointsByCategory[category]!.add(endpoint);
      });
    });

    return endpointsByCategory.entries.map((e) => EndpointCategory(name: e.key, endpoints: e.value)).toList();
  }

  /// Converts a map to Map<String, dynamic>.
  Map<String, dynamic>? _toStringKeyMap(dynamic value) {
    if (value == null) return null;
    if (value is Map<String, dynamic>) return value;
    if (value is Map) {
      return value.map((k, v) => MapEntry(k.toString(), v));
    }
    return null;
  }

  /// Checks if a string is a valid HTTP method.
  bool _isHttpMethod(String method) {
    const httpMethods = {'get', 'post', 'put', 'delete', 'patch', 'head', 'options'};
    return httpMethods.contains(method.toLowerCase());
  }

  /// Extracts the category from endpoint tags.
  String _extractCategory(Map<String, dynamic> details) {
    final tags = details['tags'] as List<dynamic>?;
    if (tags != null && tags.isNotEmpty) {
      return StringUtils.toPascalCase(tags.first.toString());
    }
    return 'Default';
  }

  /// Generates a unique endpoint name from path and method.
  String _generateEndpointName(String path, String category, String method) {
    final segments = path.split('/').where((s) => s.isNotEmpty).toList();
    final cleanSegments = segments.where((s) => !s.contains('{')).toList();
    final base = cleanSegments.isEmpty ? category.toLowerCase() : cleanSegments.last;
    return '${base}_${method.toLowerCase()}';
  }

  /// Extracts parameters from endpoint details.
  _ExtractedParameters _extractParameters(
    Map<String, dynamic> details,
    Map<String, dynamic> schemas,
  ) {
    final params = details['parameters'] as List<dynamic>? ?? [];
    final query = <EndpointParameter>[];
    final path = <EndpointParameter>[];
    Map<String, dynamic>? body;

    // Extract path and query parameters
    for (final p in params) {
      final paramMap = _toStringKeyMap(p);
      if (paramMap == null) continue;

      final location = paramMap['in'] as String?;
      final name = paramMap['name'] as String?;
      if (name == null) continue;

      if (location == 'body') {
        final schema = _toStringKeyMap(paramMap['schema']);
        if (schema != null) {
          final parsed = _parseSchema(schema, schemas);
          if (parsed is Map<String, dynamic>) {
            body = parsed;
          }
        }
        continue;
      }

      final schema = _toStringKeyMap(paramMap['schema']) ?? {'type': paramMap['type'] ?? 'string'};
      final type = _schemaToDartType(schema);
      final required = paramMap['required'] == true;

      final param = EndpointParameter(
        name: name,
        type: type,
        isRequired: required,
        description: paramMap['description'] as String?,
      );

      if (location == 'query') {
        query.add(param);
      } else if (location == 'path') {
        path.add(param);
      }
    }

    // Extract request body (OpenAPI 3.x)
    final requestBody = _toStringKeyMap(details['requestBody']);
    final content = _toStringKeyMap(requestBody?['content']);
    final appJson = _toStringKeyMap(content?['application/json']);
    final schema = _toStringKeyMap(appJson?['schema']);
    if (schema != null) {
      final parsed = _parseSchema(schema, schemas);
      if (parsed is Map<String, dynamic>) {
        body = parsed;
      }
    }

    return _ExtractedParameters(query: query, path: path, body: body);
  }

  /// Extracts response schema from endpoint details.
  Map<String, dynamic>? _extractResponse(
    Map<String, dynamic> details,
    Map<String, dynamic> schemas,
  ) {
    final responses = _toStringKeyMap(details['responses']);
    if (responses == null) return null;

    // Find first 2xx response
    final successEntry = responses.entries.firstWhere(
      (e) => e.key.toString().startsWith('2'),
      orElse: () => MapEntry('200', {}),
    );

    final response = _toStringKeyMap(successEntry.value);
    if (response == null) return null;

    // Swagger 2.0
    final schema = _toStringKeyMap(response['schema']);
    if (schema != null) {
      final parsed = _parseSchema(schema, schemas);
      if (parsed is Map<String, dynamic>) {
        return parsed;
      }
    }

    // OpenAPI 3.x
    final content = _toStringKeyMap(response['content']);
    final appJson = _toStringKeyMap(content?['application/json']);
    final responseSchema = _toStringKeyMap(appJson?['schema']);
    if (responseSchema != null) {
      final parsed = _parseSchema(responseSchema, schemas);
      if (parsed is Map<String, dynamic>) {
        return parsed;
      }
    }

    return null;
  }

  /// Parses a schema and resolves references.
  dynamic _parseSchema(
    Map<String, dynamic> schema,
    Map<String, dynamic> allSchemas, [
    Set<String> visitedRefs = const {},
  ]) {
    final ref = schema[r'$ref'] as String?;

    // Handle references
    if (ref != null) {
      final refName = _getRefName(ref);
      if (visitedRefs.contains(refName)) {
        return {}; // Circular reference guard
      }

      final target = _resolveRef(ref, allSchemas);
      if (target != null) {
        return _parseSchema(target, allSchemas, {...visitedRefs, refName});
      }
      return {};
    }

    final type = schema['type'] as String?;
    final properties = _toStringKeyMap(schema['properties']);
    final items = _toStringKeyMap(schema['items']);

    // Object with properties
    if (type == 'object' || properties != null) {
      final result = <String, dynamic>{};
      properties?.forEach((key, val) {
        final valMap = _toStringKeyMap(val);
        if (valMap != null) {
          result[key] = _parseSchema(valMap, allSchemas, visitedRefs);
        } else {
          result[key] = 'string';
        }
      });
      return result;
    }

    // Array
    if (type == 'array' && items != null) {
      final parsedItem = _parseSchema(items, allSchemas, visitedRefs);
      return [parsedItem];
    }

    // Primitive
    return _getBasicType(schema);
  }

  /// Resolves a reference to its schema.
  Map<String, dynamic>? _resolveRef(String ref, Map<String, dynamic> allSchemas) {
    final refName = _getRefName(ref);

    // Direct match
    final direct = _toStringKeyMap(allSchemas[refName]);
    if (direct != null) return direct;

    // Case-insensitive match
    for (final entry in allSchemas.entries) {
      if (entry.key.toLowerCase() == refName.toLowerCase()) {
        final valueMap = _toStringKeyMap(entry.value);
        if (valueMap != null) {
          return valueMap;
        }
      }
    }

    return null;
  }

  /// Extracts the reference name from a $ref string.
  String _getRefName(String ref) {
    if (ref.contains('/')) return ref.split('/').last;
    return ref.trim();
  }

  /// Converts a schema to a Dart type string.
  String _schemaToDartType(Map<String, dynamic> schema) {
    final type = schema['type'] as String?;
    final format = schema['format'] as String?;
    final enumValues = schema['enum'] as List<dynamic>?;

    if (enumValues != null && enumValues.isNotEmpty) {
      return 'String'; // Enum as String for now
    }

    return switch (type) {
      'string' => switch (format) {
          'date-time' => 'DateTime',
          'date' => 'DateTime',
          _ => 'String',
        },
      'integer' => 'int',
      'number' => 'double',
      'boolean' => 'bool',
      'array' => 'List<dynamic>',
      'object' => 'Map<String, dynamic>',
      'file' => 'MultipartFile',
      _ => 'dynamic',
    };
  }

  /// Gets a basic type example/value.
  Object _getBasicType(Map<String, dynamic> schema) {
    final type = schema['type'] as String?;
    final format = schema['format'] as String?;
    final enumValues = schema['enum'] as List<dynamic>?;

    if (enumValues != null && enumValues.isNotEmpty) {
      return enumValues.first;
    }

    return switch (type) {
      'string' => switch (format) {
          'date-time' => '2024-01-01T00:00:00Z',
          'date' => '2024-01-01',
          'email' => 'user@example.com',
          'uuid' => '123e4567-e89b-12d3-a456-426614174000',
          _ => 'string',
        },
      'integer' => 0,
      'number' => 0.0,
      'boolean' => false,
      _ => 'string',
    };
  }
}

/// Helper class to hold extracted parameters.
class _ExtractedParameters {
  final List<EndpointParameter> query;
  final List<EndpointParameter> path;
  final Map<String, dynamic>? body;

  const _ExtractedParameters({
    required this.query,
    required this.path,
    this.body,
  });
}
