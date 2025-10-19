import 'dart:convert';
import 'dart:io';
import 'package:swagger_dart_generator/src/utils/utils.dart';


Future<void> generateIntegrationTests(String path, String package, String outputDir) async {
  final file = File(path);
  if (!file.existsSync()) {
    print('❌ $path not found!');
    return;
  }

  final jsonStr = await file.readAsString();
  final map = json.decode(jsonStr) as Map<String, dynamic>;
  final baseDir = Directory('$outputDir/test');
  baseDir.createSync(recursive: true);

  final className = Utils.toPascalCase(package);

  for (final categoryEntry in map.entries) {
    final category = categoryEntry.key;
    final endpoints = categoryEntry.value as Map<String, dynamic>;
    final categoryName = Utils.toSnakeCase(category);
    final categoryRepositoryCamel = Utils.toLowerCamelCase(category);
    final testFile = File('${baseDir.path}/${categoryName}_test.dart');

    final buffer = StringBuffer();
    buffer.writeln("// ignore_for_file: unused_import, prefer_const_constructors");
    buffer.writeln("import 'package:dartz/dartz.dart';");
    buffer.writeln("import 'package:dio/dio.dart';");
    buffer.writeln("import 'package:$package/failure.dart';");
    buffer.writeln("import 'package:$package/$package.dart';");
    for (final endpointName in endpoints.keys) {
      final snakeName = Utils.toSnakeCase(endpointName);
      buffer.writeln("import 'package:$package/data/models/$categoryName/requests/${snakeName}_req.dart';");
    }
    for (final endpointName in endpoints.keys) {
      final snakeName = Utils.toSnakeCase(endpointName);
      buffer.writeln("import 'package:$package/data/models/$categoryName/responses/${snakeName}_res.dart';");
    }
    buffer.writeln("import 'package:test/test.dart';");
    buffer.writeln('');
    
    buffer.writeln('''
class ${className}Failure extends Failure {
  ${className}Failure(super.message);
  @override
  Failure handle(dynamic e, StackTrace stackTrace) {
    return ${className}Failure("\${e.toString()} \\n \${stackTrace.toString()}");
  }
}''');
    
    buffer.writeln('void main() {');
    buffer.writeln("  final dio = Dio(BaseOptions(baseUrl: 'https://api.$package.com'));");
    buffer.writeln("  final api = $className.getInstance(dio, ${className}Failure(\"\"));");
    buffer.writeln("  final repo = api.$categoryRepositoryCamel;");
    buffer.writeln('');
    for (final endpointName in endpoints.keys) {
      final method = Utils.toLowerCamelCase(endpointName);
      final reqClass = '${Utils.toPascalCase(endpointName)}Req';
      buffer.writeln('  test(\'$endpointName\', () async {');
      buffer.writeln('    final req = $reqClass();');
      buffer.writeln('    final result = await repo.$method(req);');
      buffer.writeln('    expect(result.isRight(), true);');
      buffer.writeln('  });\n');
    }
    buffer.writeln('}');
    await testFile.writeAsString(buffer.toString());
  }
}