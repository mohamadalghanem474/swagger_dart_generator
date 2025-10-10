// -------------------------------------------------------
// DATASOURCES GENERATOR
// -------------------------------------------------------
import 'dart:convert';
import 'dart:io';

import 'package:swagger_dart_generator/src/utils/utils.dart';

Future<void> generateDatasources(
    String path, String package, String outputDir) async {
  final file = File(path);
  if (!file.existsSync()) {
    print('❌ $path not found!');
    return;
  }

  final jsonStr = await file.readAsString();
  final map = json.decode(jsonStr) as Map<String, dynamic>;

  final baseDir = Directory('$outputDir/lib/features/data/datasources');
  if (!baseDir.existsSync()) baseDir.createSync(recursive: true);

  for (final categoryEntry in map.entries) {
    final category = categoryEntry.key;
    final endpoints = categoryEntry.value as Map<String, dynamic>;
    final categoryName = Utils.toSnakeCase(category);
    final categoryDir = Directory('${baseDir.path}/$categoryName');
    categoryDir.createSync(recursive: true);

    final abstractFile = File(
      '${categoryDir.path}/${categoryName}_remote_datasource.dart',
    );
    final implFile = File(
      '${categoryDir.path}/${categoryName}_remote_datasource_impl.dart',
    );

    final abstractBuffer = StringBuffer();
    final implBuffer = StringBuffer();

    // ---------- ABSTRACT DATASOURCE ----------
    // Add imports for all individual request models
    abstractBuffer.writeln("import 'package:dio/dio.dart';");
    for (final endpointName in endpoints.keys) {
      final snakeName = Utils.toSnakeCase(endpointName);
      abstractBuffer.writeln(
        "import 'package:$package/features/data/models/$categoryName/requests/${snakeName}_req.dart';",
      );
    }

    // Add imports for all individual response models
    for (final endpointName in endpoints.keys) {
      final snakeName = Utils.toSnakeCase(endpointName);
      abstractBuffer.writeln(
        "import 'package:$package/features/data/models/$categoryName/responses/${snakeName}_res.dart';",
      );
    }

    abstractBuffer.writeln('');
    abstractBuffer.writeln('abstract class ${category}RemoteDataSource {');

    for (final endpointName in endpoints.keys) {
      final req = '${Utils.toPascalCase(endpointName)}Req';
      final res = '${Utils.toPascalCase(endpointName)}Res';
      final methodName = Utils.toLowerCamelCase(endpointName);
      abstractBuffer.writeln(
        '  Future<$res> $methodName($req req, {CancelToken? cancelToken});',
      );
    }

    abstractBuffer.writeln('}');
    await abstractFile.writeAsString(abstractBuffer.toString());
    print('✅ Created: ${abstractFile.path}');

    // ---------- IMPLEMENTATION ----------
    implBuffer.writeln("import 'package:dio/dio.dart';");
    implBuffer.writeln(
      "import 'package:$package/features/data/datasources/$categoryName/${categoryName}_remote_datasource.dart';",
    );

    // Add imports for all individual request models
    for (final endpointName in endpoints.keys) {
      final snakeName = Utils.toSnakeCase(endpointName);
      implBuffer.writeln(
        "import 'package:$package/features/data/models/$categoryName/requests/${snakeName}_req.dart';",
      );
    }

    // Add imports for all individual response models
    for (final endpointName in endpoints.keys) {
      final snakeName = Utils.toSnakeCase(endpointName);
      implBuffer.writeln(
        "import 'package:$package/features/data/models/$categoryName/responses/${snakeName}_res.dart';",
      );
    }

    implBuffer.writeln("import 'package:injectable/injectable.dart';");
    implBuffer.writeln(
      "import 'package:$package/core/constants/end_points.dart';\n",
    );

    implBuffer.writeln(
      '@LazySingleton(as: ${category}RemoteDataSource, env: [Environment.test, Environment.dev, Environment.prod])\nclass ${category}RemoteDataSourceImpl implements ${category}RemoteDataSource {',
    );
    implBuffer.writeln(
      '  final Dio _dio;\n  ${category}RemoteDataSourceImpl(this._dio);\n',
    );

    for (final endpointEntry in endpoints.entries) {
      final endpointName = endpointEntry.key;
      final endpointData = endpointEntry.value as Map<String, dynamic>;
      final req = '${Utils.toPascalCase(endpointName)}Req';
      final res = '${Utils.toPascalCase(endpointName)}Res';
      final methodName = Utils.toLowerCamelCase(endpointName);
      final method = endpointData['method'] as String? ?? 'post';

      implBuffer.writeln('  @override');
      implBuffer.writeln(
        '  Future<$res> $methodName($req req, {CancelToken? cancelToken}) async {',
      );

      // Build URL with path parameters
      implBuffer.writeln(
        '    String url = EndPoints.${Utils.toLowerCamelCase(categoryName)}.$methodName;',
      );

      // Replace path parameters
      final pathParams = endpointData['params'] as Map<String, dynamic>? ?? {};
      pathParams.forEach((key, value) {
        final fieldName = Utils.toLowerCamelCase(key);
        implBuffer.writeln(
          '    url = url.replaceAll(\'{$key}\', req.params?.$fieldName?.toString() ?? \'\');',
        );
      });
      // make request
      implBuffer.write('    final result = await _dio.$method(url');
      if (endpointData['body'] != null && endpointData['body'].isNotEmpty) {
        if (endpointData['body'] is Map<String, dynamic>) {
          implBuffer.write(', data: req.body?.toJson()');
        } else {
          implBuffer.write(', data: req.body');
        }
      }
      if (endpointData['query'] != null && endpointData['query'].isNotEmpty) {
        if (endpointData['query'] is Map<String, dynamic>) {
          implBuffer.write(', queryParameters: req.query?.toJson()');
        } else {
          implBuffer.write(', queryParameters: req.query');
        }
      }
      // Add cancelToken parameter
      implBuffer.write(', cancelToken: cancelToken');
      implBuffer.writeln(');');
      // Handle different response types
      if (endpointData['response'] is List) {
        // For List responses, use the special constructor with items
        implBuffer.writeln(
          '    return $res(items: (result.data as List).map((e) => ${res}Item.fromJson(e)).toList());',
        );
      } else {
        // For normal object responses, use standard fromJson
        implBuffer.writeln('    return $res.fromJson(result.data);');
      }
      implBuffer.writeln('  }\n');
    }

    implBuffer.writeln('}');
    await implFile.writeAsString(implBuffer.toString());
    print('✅ Created: ${implFile.path}');
  }
}
