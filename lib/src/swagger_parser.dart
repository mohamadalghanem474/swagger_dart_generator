import 'dart:convert';
import 'dart:io';

import 'package:swagger_dart_generator/src/utils/utils.dart';

typedef Json = Map<String, dynamic>;
typedef JsonList = List<dynamic>;

Future<String> parseSwaggerFile(String path, String outputDir) async {
  stdout.write('\x1B[1J\x1B[0;0H');
  print('🚀 Thank you for using swagger_dart_generator!\n');
  print('⏳ Checking files...\n');
  final file = File(path);
  if (!file.existsSync()) {
    print('\x1B[31m❌ Swagger file not found: $path\x1B[0m');
    exit(1);
  }
  final libDir = Directory('$outputDir/lib');
  if (libDir.existsSync()) {
    print('\x1B[33m⚠️  "$outputDir/lib" already exists.\x1B[0m');
    print('You can update only specific dto.json files using mg_tools.\nSee → https://pub.dev/packages/mg_tools\n');
    stdout.write('Do you want to recreate it? [Y/N]: ');
    if ((stdin.readLineSync() ?? '').toLowerCase() != 'y') exit(0);
  }

  // Create package only if missing files
  print('🔧 Creating package structure...');
  final resultCreate = await Process.run('dart', ['create', '-t', 'package', '.', '--force']);
  if (resultCreate.exitCode != 0) {
    print('\x1B[31m❌ Failed to create package.\x1B[0m\n${resultCreate.stderr}');
    exit(1);
  }

  // Cleanup default folders
  for (final d in ['example', 'test', 'lib']) {
    final dir = Directory('$outputDir/$d');
    if (dir.existsSync()) dir.deleteSync(recursive: true);
  }

  // Add dependencies
  print('📦 Adding dependencies...');
  await Process.run('dart', ['pub', 'add', '--dev', 'mg_tools', 'build_runner', 'freezed', 'json_serializable', 'flutter_lints']);
  await Process.run('dart', ['pub', 'add', 'dartz', 'dio', 'freezed_annotation']);
  await Future.delayed(const Duration(seconds: 5));
  print('\x1B[32m✅ Package structure ready at $outputDir\x1B[0m');

  final String jsonStr = await file.readAsString();
  final Json swagger = json.decode(jsonStr);

  // Detect schema source across all Swagger/OpenAPI versions
  final paths = (swagger['paths'] ?? <String, dynamic>{});
  final components = (swagger['components'] ?? <String, dynamic>{});
  final schemas = (components['schemas'] ?? swagger['definitions'] ?? swagger['models'] ?? {}) as Json;

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
    if (methods is! Map) return;
    (methods as Json).forEach((method, details) {
      if (method == 'parameters' || !httpMethods.contains(method.toLowerCase())) return;
      if (details is! Map) return;

      final detailsMap = details as Json;
      final tags = (detailsMap['tags'] as JsonList?) ?? ['Default'];
      final category = tags.isNotEmpty ? tags.first.toString() : 'Default';
      final endpointName = _normalizeEndpointName(path, category, method);

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

  final output = File('$outputDir/swagger_clean.json');
  output.writeAsStringSync(const JsonEncoder.withIndent('  ').convert(endpointsMap));
  return output.path;
}

String _normalizeEndpointName(String path, String category, String method) {
  final segments = path.split('/').where((s) => s.isNotEmpty).toList();
  final segmentsClean = segments.where((s) => !s.contains('{')).toList();
  // Use last path segment as name (e.g., "/auth/login" → "login")
  final base = segmentsClean.isEmpty ? category : segmentsClean.last;

  // Combine with method using underscore
  return '${base}${Utils.toPascalCase(method)}';
}

Object _parsePropertySchema(
  Json? schema,
  Json allSchemas, [
  Set<String> visitedRefs = const {},
]) {
  if (schema == null) return {};

  // fast access
  final ref = schema[r'$ref'] as String?;
  final type = schema['type'] as String?;
  final props = schema['properties'] as Json?;
  final items = schema['items'] as Json?;

  // --- helper to resolve $ref names (supports "#/..." and bare "Model")
  Json? _resolveSchemaByRef(String rawRef) {
    final refName = _getRefName(rawRef);

    // direct match
    final direct = allSchemas[refName];
    if (direct is Map<String, dynamic>) return direct;

    // try case-insensitive match if not found
    for (final entry in allSchemas.entries) {
      if (entry.key.toString().toLowerCase() == refName.toLowerCase() && entry.value is Map<String, dynamic>) {
        return entry.value as Map<String, dynamic>;
      }
    }

    return null;
  }

  // --- resolve $ref node (plain object that's just {"$ref": ...} or has $ref)
  if (ref != null) {
    final refName = _getRefName(ref);

    // circular guard
    if (visitedRefs.contains(refName)) {
      // instead of returning {"$ref": "Name"} (which leaks),
      // return empty object so output is always concrete.
      return {};
    }

    final target = _resolveSchemaByRef(ref);
    if (target != null) {
      return _parsePropertySchema(
        target,
        allSchemas,
        {...visitedRefs, refName},
      );
    }

    // no match in schemas -> still don't emit $ref
    return {};
  }

  // special case: schema is literally { "$ref": "Model" } with no "type"
  if (schema.length == 1 && schema.containsKey(r'$ref')) {
    final onlyRef = schema[r'$ref'] as String?;
    if (onlyRef != null) {
      final target = _resolveSchemaByRef(onlyRef);
      if (target != null) {
        final refName = _getRefName(onlyRef);
        if (visitedRefs.contains(refName)) return {};
        return _parsePropertySchema(
          target,
          allSchemas,
          {...visitedRefs, refName},
        );
      }
    }
    return {};
  }

  // object with properties
  if (type == 'object' || props != null) {
    final out = <String, Object>{};
    props?.forEach((key, val) {
      if (val is Map<String, dynamic>) {
        out[key] = _parsePropertySchema(val, allSchemas, visitedRefs);
      } else {
        // if val is not Map (edge weird specs), fallback primitive
        out[key] = 'string';
      }
    });
    return out;
  }

  // array
  if (type == 'array') {
    // items can be schema OR { "$ref": "..." }
    if (items is Map<String, dynamic>) {
      final parsedItem = _parsePropertySchema(items, allSchemas, visitedRefs);

      // Guarantee: always output as a LIST with one example element
      return [parsedItem];
    }
    // weird/no items? still emit empty list with primitive
    return ['string'];
  }

  // primitive / enum / number / bool
  return _getBasicTypeExample(schema);
}

String _getRefName(String ref) {
  if (ref.contains('/')) return ref.split('/').last;
  return ref.trim();
}

Object _getBasicTypeExample(Json schema) {
  final type = schema['type'] as String?;
  final format = schema['format'] as String?;
  final enumVals = schema['enum'] as JsonList?;
  if (enumVals != null && enumVals.isNotEmpty) return enumVals.first;

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
  final params = details['parameters'] as JsonList? ?? [];
  final query = <String, Object>{};
  final path = <String, Object>{};
  Object? body;

  // Swagger 1.x/2.x parameters
  for (final p in params) {
    if (p is! Map) continue;
    final m = p.cast<String, dynamic>();
    final loc = m['in'] as String?;
    final name = m['name'] as String?;
    if (name == null) continue;

    if (loc == 'body') {
      final s = m['schema'] as Json?;
      if (s != null) body = _parsePropertySchema(s, schemas);
      continue;
    }

    final s = (m['schema'] as Json?) ?? {'type': m['type']};
    final val = _parsePropertySchema(s, schemas);
    if (loc == 'query') query[name] = val;
    if (loc == 'path') path[name] = val;
  }

  // OpenAPI 3.x requestBody
  final requestBody = details['requestBody'] as Json?;
  final content = requestBody?['content'] as Json?;
  final appJson = content?['application/json'] as Json?;
  final sch = appJson?['schema'] as Json?;
  if (sch != null) body ??= _parsePropertySchema(sch, schemas);

  return {'query': query, 'path': path, 'body': body};
}

Object? _extractResponseBody(Json details, Json schemas) {
  final responses = details['responses'];
  if (responses is! Map) return null;

  final MapEntry<String, dynamic> entry = responses.entries.cast<MapEntry<String, dynamic>>().firstWhere((e) => e.key.toString().startsWith('2'), orElse: () => const MapEntry<String, dynamic>('200', {}));

  final resp = (entry.value is Map) ? (entry.value as Map).cast<String, dynamic>() : <String, dynamic>{};

  // Swagger 1.x / 2.0
  final schema = resp['schema'];
  if (schema is Map<String, dynamic>) {
    return _parsePropertySchema(schema, schemas);
  }

  // OpenAPI 3.x+
  final content = resp['content'];
  if (content is Map) {
    final appJson = content['application/json'];
    if (appJson is Map) {
      final s = appJson['schema'];
      if (s is Map<String, dynamic>) return _parsePropertySchema(s, schemas);
    }
  }

  return null;
}
