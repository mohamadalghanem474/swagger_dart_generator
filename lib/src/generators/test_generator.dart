// -------------------------------------------------------
// INTEGRATION TEST GENERATOR
// -------------------------------------------------------
import 'dart:convert';
import 'dart:io';

import 'package:swagger_dart_generator/src/utils/utils.dart';

Future<void> generateIntegrationTests(String path, String package, String outputDir, bool replace) async {
  final file = File(path);
  if (!file.existsSync()) {
    print('❌ $path not found!');
    return;
  }

  final jsonStr = await file.readAsString();
  final map = json.decode(jsonStr) as Map<String, dynamic>;

  final baseDir = Directory('$outputDir/test');
  baseDir.createSync(recursive: true);

  for (final categoryEntry in map.entries) {
    final category = categoryEntry.key;
    final endpoints = categoryEntry.value as Map<String, dynamic>;
    final categoryName = Utils.toSnakeCase(category);

    final testFile = File('${baseDir.path}/${categoryName}_test.dart');
    if (testFile.existsSync() && !replace) {
      print('⏭️  Skipped: ${testFile.path} already exists');
      return;
    }
    final buffer = StringBuffer();

    buffer.writeln("// ignore_for_file: unused_import");
    buffer.writeln("import 'package:flutter_test/flutter_test.dart';");
    buffer.writeln("import 'package:injectable/injectable.dart' hide test;");
    buffer.writeln("import 'package:dartz/dartz.dart';");
    buffer.writeln(
      "import 'package:$package/data/repositories/$categoryName/${categoryName}.dart';",
    );
    buffer.writeln("import 'package:$package/core/injectable/get_it.dart';");

    // Import individual request models
    for (final endpointName in endpoints.keys) {
      final snakeName = Utils.toSnakeCase(endpointName);
      buffer.writeln(
        "import 'package:$package/data/models/$categoryName/requests/${snakeName}_req.dart';",
      );
    }

    // Import individual response models
    for (final endpointName in endpoints.keys) {
      final snakeName = Utils.toSnakeCase(endpointName);
      buffer.writeln(
        "import 'package:$package/data/models/$categoryName/responses/${snakeName}_res.dart';",
      );
    }

    buffer.writeln('void main() {');
    buffer.writeln('''
  setUpAll(() async {
    await configureDependencies(
      environmentFilter: SimpleEnvironmentFilter(
        environments: {Environment.test},
        filter: (depEnvs) => depEnvs.contains(Environment.test),
      ),
    );
  });''');
    buffer.writeln('');

    for (final endpointName in endpoints.keys) {
      final method = Utils.toLowerCamelCase(endpointName);
      final reqClass = '${Utils.toPascalCase(endpointName)}Req';

      buffer.writeln('  test(\'$endpointName\', () async {');
      buffer.writeln('    final repo = sl<${category}Repository>();');
      buffer.writeln('    final req = $reqClass();'); // Empty constructor
      buffer.writeln('    final result = await repo.$method(req);');
      buffer.writeln('    expect(result.isRight(), true);');
      buffer.writeln('  });\n');
    }

    buffer.writeln('}');

    await testFile.writeAsString(buffer.toString());
    print('✅ Created integration test: ${testFile.path}');
  }

  print('🎯 All integration test files generated successfully!');
}
