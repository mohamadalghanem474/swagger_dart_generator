import 'dart:io';

import 'package:swagger_dart_generator/src/core/models/endpoint_model.dart';
import 'package:swagger_dart_generator/src/generators/models/builders/class_builder.dart';
import 'package:swagger_dart_generator/src/utils/string_utils.dart';

/// Generates Dart model classes from endpoint definitions.
///
/// This generator creates:
/// - Request models (e.g., `LoginReq`)
/// - Response models (e.g., `LoginRes`)
/// - Nested models for complex types
class ModelGenerator {
  final String outputDir;
  final String packageName;

  ModelGenerator({
    required this.outputDir,
    required this.packageName,
  });

  /// Generates all models for the given endpoint categories.
  Future<void> generate(List<EndpointCategory> categories) async {
    final baseDir = Directory('$outputDir/lib/data/models');
    if (!baseDir.existsSync()) {
      baseDir.createSync(recursive: true);
    }

    for (final category in categories) {
      await _generateCategoryModels(category, baseDir);
    }
  }

  /// Generates models for a single category.
  Future<void> _generateCategoryModels(
    EndpointCategory category,
    Directory baseDir,
  ) async {
    final categoryName = StringUtils.toSnakeCase(category.name);
    final categoryDir = Directory('${baseDir.path}/$categoryName');

    final requestsDir = Directory('${categoryDir.path}/requests');
    final responsesDir = Directory('${categoryDir.path}/responses');

    requestsDir.createSync(recursive: true);
    responsesDir.createSync(recursive: true);

    for (final endpoint in category.endpoints) {
      // Generate request model
      if (endpoint.hasRequestBody) {
        await _generateRequestModel(endpoint, requestsDir);
      } else if (endpoint.queryParams.isNotEmpty || endpoint.pathParams.isNotEmpty) {
        // Generate request model for query/path params even if no body
        await _generateParamsRequestModel(endpoint, requestsDir);
      }

      // Generate response model
      if (endpoint.hasResponseBody) {
        await _generateResponseModel(endpoint, responsesDir);
      }
    }
  }

  /// Generates a request model from request body + path/query params.
  Future<void> _generateRequestModel(
    EndpointModel endpoint,
    Directory outputDir,
  ) async {
    final className = endpoint.requestClassName;
    final fileName = '${StringUtils.toSnakeCase(endpoint.name)}_req.dart';

    final properties = _flattenProperties(endpoint.requestBody!);

    // Add path params (camelCase field names)
    for (final param in endpoint.pathParams) {
      final fieldName = StringUtils.toLowerCamelCase(param.name);
      properties[fieldName] = _getDefaultValueForType(param.type);
    }

    // Add query params (camelCase field names)
    for (final param in endpoint.queryParams) {
      final fieldName = StringUtils.toLowerCamelCase(param.name);
      properties[fieldName] = _getDefaultValueForType(param.type);
    }

    final builder = ClassBuilder(
      className: className,
      properties: properties,
      useEquatable: true,
    );

    final code = builder.build();
    final file = File('${outputDir.path}/$fileName');
    await file.writeAsString(code);
  }

  /// Generates a request model from query/path parameters.
  Future<void> _generateParamsRequestModel(
    EndpointModel endpoint,
    Directory outputDir,
  ) async {
    final className = endpoint.requestClassName;
    final fileName = '${StringUtils.toSnakeCase(endpoint.name)}_req.dart';

    final properties = <String, dynamic>{};

    // Add query params (camelCase field names)
    for (final param in endpoint.queryParams) {
      final fieldName = StringUtils.toLowerCamelCase(param.name);
      properties[fieldName] = _getDefaultValueForType(param.type);
    }

    // Add path params (camelCase field names)
    for (final param in endpoint.pathParams) {
      final fieldName = StringUtils.toLowerCamelCase(param.name);
      properties[fieldName] = _getDefaultValueForType(param.type);
    }

    if (properties.isEmpty) return;

    final builder = ClassBuilder(
      className: className,
      properties: properties,
      useEquatable: true,
    );

    final code = builder.build();
    final file = File('${outputDir.path}/$fileName');
    await file.writeAsString(code);
  }

  /// Generates a response model.
  Future<void> _generateResponseModel(
    EndpointModel endpoint,
    Directory outputDir,
  ) async {
    final className = endpoint.responseClassName;
    final fileName = '${StringUtils.toSnakeCase(endpoint.name)}_res.dart';

    final properties = _flattenProperties(endpoint.responseBody!);

    final builder = ClassBuilder(
      className: className,
      properties: properties,
      useEquatable: true,
    );

    final code = builder.build();
    final file = File('${outputDir.path}/$fileName');
    await file.writeAsString(code);
  }

  /// Flattens nested properties for code generation.
  ///
  /// For nested objects, generates separate classes.
  Map<String, dynamic> _flattenProperties(Map<String, dynamic> data) {
    final result = <String, dynamic>{};

    data.forEach((key, value) {
      if (value is Map<String, dynamic>) {
        // Check if all values are primitives
        final hasNested = value.values.any((v) => v is Map || v is List);
        if (hasNested) {
          // Generate nested class name
          final nestedClassName = StringUtils.toPascalCase(key);
          result[key] = nestedClassName; // Reference to nested class
        } else {
          result[key] = value;
        }
      } else if (value is List && value.isNotEmpty && value.first is Map) {
        // List of objects
        final itemClassName = '${StringUtils.toPascalCase(key)}Item';
        result[key] = [itemClassName]; // List of nested class
      } else {
        result[key] = value;
      }
    });

    return result;
  }

  /// Gets a default value for a Dart type.
  dynamic _getDefaultValueForType(String type) {
    final baseType = type.replaceAll('?', '');
    return switch (baseType) {
      'String' => 'string',
      'int' => 0,
      'double' => 0.0,
      'bool' => false,
      'List<dynamic>' => [],
      'Map<String, dynamic>' => {},
      _ => 'string',
    };
  }
}
