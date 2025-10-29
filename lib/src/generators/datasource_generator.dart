import 'dart:convert';
import 'dart:io';

import 'package:swagger_dart_generator/src/utils/utils.dart';

Future<void> generateDatasources(String path, String package, String outputDir) async {
  final file = File(path);
  if (!file.existsSync()) {
    print('❌ $path not found!');
    return;
  }

  final jsonStr = await file.readAsString();
  final map = json.decode(jsonStr) as Map<String, dynamic>;

  final baseDir = Directory('$outputDir/lib/data/datasources');

  if (!baseDir.existsSync()) baseDir.createSync(recursive: true);

  for (final categoryEntry in map.entries) {
    final category = categoryEntry.key;
    final endpoints = categoryEntry.value as Map<String, dynamic>;
    final categoryName = Utils.toSnakeCase(category);
    final categoryDir = Directory('${baseDir.path}/$categoryName');
    categoryDir.createSync(recursive: true);

    final abstractFile = File('${categoryDir.path}/${categoryName}.dart');
    final implFile = File('${categoryDir.path}/${categoryName}_remote_datasource_impl.dart');

    final abstractBuffer = StringBuffer();

    abstractBuffer.writeln("import 'package:dio/dio.dart';");
    for (final endpointName in endpoints.keys) {
      final snakeName = Utils.toSnakeCase(endpointName);
      abstractBuffer.writeln(
        "import 'package:$package/data/models/$categoryName/requests/${snakeName}_req.dart';",
      );
    }

    for (final endpointName in endpoints.keys) {
      final snakeName = Utils.toSnakeCase(endpointName);
      abstractBuffer.writeln(
        "import 'package:$package/data/models/$categoryName/responses/${snakeName}_res.dart';",
      );
    }

    abstractBuffer.writeln('');
    abstractBuffer.writeln('abstract class ${category}DataSource {');

    for (final endpointEntry in endpoints.entries) {
      final endpointName = endpointEntry.key;
      final endpointData = endpointEntry.value as Map<String, dynamic>;
      final req = '${Utils.toPascalCase(endpointName)}Req';
      final res = '${Utils.toPascalCase(endpointName)}Res';
      final methodName = Utils.toLowerCamelCase(endpointName);
      final method = endpointData['method'] as String? ?? 'post';

      if (method == 'delete') {
        abstractBuffer.writeln(
          '  Future<$res> $methodName($req req, {CancelToken? cancelToken, Options? options});',
        );
      } else {
        abstractBuffer.writeln(
          '  Future<$res> $methodName($req req, {CancelToken? cancelToken, void Function(int, int)? onReceiveProgress, Options? options});',
        );
      }
    }

    abstractBuffer.writeln('}');

    await abstractFile.writeAsString(abstractBuffer.toString());

    final implBuffer = StringBuffer();

    implBuffer.writeln("import 'package:dio/dio.dart';");
    implBuffer.writeln("import 'package:$package/data/datasources/${categoryName}/${categoryName}.dart';");

    for (final endpointName in endpoints.keys) {
      final snakeName = Utils.toSnakeCase(endpointName);
      implBuffer.writeln(
        "import 'package:$package/data/models/$categoryName/requests/${snakeName}_req.dart';",
      );
    }

    for (final endpointName in endpoints.keys) {
      final snakeName = Utils.toSnakeCase(endpointName);
      implBuffer.writeln(
        "import 'package:$package/data/models/$categoryName/responses/${snakeName}_res.dart';",
      );
    }
    implBuffer.writeln("import 'package:$package/end_points.dart';");
    implBuffer.writeln("");
    implBuffer.writeln("class ${category}RemoteDataSourceImpl implements ${category}DataSource {");

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
      if (method == 'delete') {
        implBuffer.writeln(
          '  Future<$res> $methodName($req req, {CancelToken? cancelToken, Options? options}) async {',
        );
      } else {
        implBuffer.writeln(
          '  Future<$res> $methodName($req req, {CancelToken? cancelToken, void Function(int, int)? onReceiveProgress, Options? options}) async {',
        );
      }

      implBuffer.writeln(
        '    String url = EndPoints.${Utils.toLowerCamelCase(categoryName)}.$methodName;',
      );

      final pathParams = endpointData['params'] as Map<String, dynamic>? ?? {};
      pathParams.forEach((key, value) {
        final fieldName = Utils.toLowerCamelCase(key);
        implBuffer.writeln(
          '    url = url.replaceAll(\'{$key}\', req.params?.$fieldName?.toString() ?? \'\');',
        );
      });

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
      if (method == 'delete') {
        implBuffer.write(', cancelToken: cancelToken, options: options');
      } else {
        implBuffer.write(', cancelToken: cancelToken, onReceiveProgress: onReceiveProgress, options: options');
      }
      implBuffer.writeln(');');

      if (endpointData['response'] is List) {
        implBuffer.writeln(
          '    return $res(items: (result.data as List).map((e) => ${res}Item.fromJson(e)).toList());',
        );
      } else {
        implBuffer.writeln('    return $res.fromJson(result.data);');
      }
      implBuffer.writeln('  }\n');
    }

    implBuffer.writeln('}');
    await implFile.writeAsString(implBuffer.toString());
  }
}
