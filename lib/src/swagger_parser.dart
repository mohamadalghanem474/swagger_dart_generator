// -------------------------------------------------------
// SWAGGER PARSER METHOD
// -------------------------------------------------------
import 'dart:convert';
import 'dart:io';

typedef Json = Map<String, dynamic>;
typedef JsonList = List<dynamic>;

Future<String> parseSwaggerFile(String path, String outputDir) async {
  final file = File(path);
  if (!file.existsSync()) {
    print('❌ $path not found!');
    exit(1);
  }

  final String jsonStr = await file.readAsString();
  final Json swagger = json.decode(jsonStr);

  final paths = swagger['paths'] as Json? ?? {};
  final components = swagger['components'] as Json? ?? {};
  final schemas = components['schemas'] as Json? ?? {};

  final endpointsMap = <String, Map<String, Json>>{};
  const httpMethods = {
    'get',
    'post',
    'put',
    'delete',
    'patch',
    'head',
    'options',
  };

  paths.forEach((path, methods) {
    (methods as Json).forEach((method, details) {
      if (method == 'parameters' || !httpMethods.contains(method.toLowerCase()))
        return;

      final detailsMap = details as Json;
      final tags = detailsMap['tags'] as JsonList? ?? ['Default'];
      final category = tags.first.toString();

      final cleanedPath = path.replaceAll(RegExp(r'[{}]'), '');
      final pathSegments = cleanedPath
          .split('/')
          .where((segment) => segment.isNotEmpty)
          .toList();

      if (pathSegments.length > 2) {
        pathSegments.removeRange(0, 2);
      }

      final endpointName = pathSegments.join('').isEmpty
          ? tags.first
          : pathSegments.join('').replaceAll(" ", '');

      final parameters = _extractParameters(detailsMap, schemas);
      final response = _extractResponseBody(detailsMap, schemas);

      endpointsMap.putIfAbsent(category, () => {});
      endpointsMap[category]![endpointName] = {
        'path': path,
        'method': method.toLowerCase(),
        'query': parameters['query'],
        'params': parameters['path'],
        'body': parameters['body'],
        'response': response,
      };
    });
  });

  final abstractFile = File('$outputDir/swagger-clean.json');
  abstractFile.writeAsStringSync(json.encode(endpointsMap));
  return abstractFile.path;
}

Object _parsePropertySchema(
  Json schema,
  Json allSchemas, [
  Set<String> visitedRefs = const {},
]) {
  final type = schema['type'] as String?;
  final ref = schema['\$ref'] as String?;
  final properties = schema['properties'] as Json?;
  final items = schema['items'] as Json?;

  if (ref != null) {
    final refName = _getRefName(ref);

    if (visitedRefs.contains(refName)) {
      return {'type': 'circular_reference', 'ref': refName};
    }

    final referencedSchema = allSchemas[refName] as Json?;
    if (referencedSchema != null) {
      return _parsePropertySchema(referencedSchema, allSchemas, {
        ...visitedRefs,
        refName,
      });
    }
  }

  if (type == 'object' || properties != null) {
    final obj = <String, Object>{};
    properties?.forEach((key, value) {
      final propSchema = value as Json;
      obj[key] = _parsePropertySchema(propSchema, allSchemas, visitedRefs);
    });
    return obj;
  }

  if (type == 'array') {
    final itemSchema = items ?? {};
    return [_parsePropertySchema(itemSchema, allSchemas, visitedRefs)];
  }

  return _getBasicTypeExample(schema);
}

String _getRefName(String ref) {
  final segments = ref.split('/');
  return segments.last;
}

Object _getBasicTypeExample(Json schema) {
  final type = schema['type'] as String?;
  final format = schema['format'] as String?;
  final enumValues = schema['enum'] as JsonList?;

  if (enumValues != null && enumValues.isNotEmpty) {
    return enumValues.first.toString();
  }

  switch (type) {
    case 'string':
      if (format == 'date-time') return '2023-01-01T00:00:00Z';
      if (format == 'email') return 'user@example.com';
      if (format == 'uuid') return '123e4567-e89b-12d3-a456-426614174000';
      return 'string';
    case 'integer':
    case 'number':
      return 1;
    case 'boolean':
      return true;
    default:
      return 'string';
  }
}

Json _extractParameters(Json details, Json schemas) {
  final parameters = details['parameters'] as JsonList? ?? [];
  final queryParams = <String, Object>{};
  final pathParams = <String, Object>{};
  Object? bodyParams;

  final requestBody = details['requestBody'] as Json?;
  if (requestBody != null) {
    final content = requestBody['content'] as Json?;
    final jsonContent = content?['application/json'] as Json?;
    final schema = jsonContent?['schema'] as Json?;

    if (schema != null) {
      bodyParams = _parsePropertySchema(schema, schemas);
    }
  }

  for (final param in parameters) {
    final paramMap = param as Json;
    final paramIn = paramMap['in'] as String?;
    final paramName = paramMap['name'] as String?;
    final schema = paramMap['schema'] as Json?;

    if (paramName == null) continue;

    final exampleValue = _parsePropertySchema(schema ?? {}, schemas);

    if (paramIn == 'query') {
      queryParams[paramName] = exampleValue;
    } else if (paramIn == 'path') {
      pathParams[paramName] = exampleValue;
    }
  }

  return {'query': queryParams, 'path': pathParams, 'body': bodyParams};
}

Object? _extractResponseBody(Json details, Json schemas) {
  final responses = details['responses'] as Json? ?? {};

  final successStatus = responses.keys.firstWhere(
    (key) => key.startsWith('2'),
    orElse: () => '200',
  );

  final successResponse = responses[successStatus] as Json? ?? {};
  final content = successResponse['content'] as Json?;

  Json? responseContent;
  if (content != null) {
    responseContent =
        content['application/json'] as Json? ?? content.values.first as Json;
  }

  final schema = responseContent?['schema'] as Json?;

  if (schema != null) {
    return _parsePropertySchema(schema, schemas);
  }

  return null;
}
