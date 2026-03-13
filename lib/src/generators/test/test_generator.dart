import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

import 'package:swagger_dart_generator/src/core/models/endpoint_model.dart';
import 'package:swagger_dart_generator/src/utils/string_utils.dart';

/// Generates integration test templates.
class TestGenerator {
  final String outputDir;
  final String packageName;

  TestGenerator({
    required this.outputDir,
    required this.packageName,
  });

  /// Generates test files for all categories.
  Future<void> generate(List<EndpointCategory> categories) async {
    final testDir = Directory('$outputDir/test');
    if (!testDir.existsSync()) {
      testDir.createSync(recursive: true);
    }

    for (final category in categories) {
      await _generateCategoryTest(category, testDir);
    }
  }

  /// Generates test file for a single category.
  Future<void> _generateCategoryTest(
    EndpointCategory category,
    Directory testDir,
  ) async {
    final fileName = '${StringUtils.toSnakeCase(category.name)}_test.dart';
    final library = Library((b) {
      // Imports
      b.directives.add(Directive.import('package:dio/dio.dart'));
      b.directives.add(Directive.import('package:test/test.dart'));
      b.directives.add(Directive.import('package:$packageName/$packageName.dart'));
      b.directives.add(Directive.import('package:$packageName/failure.dart'));

      // Model imports
      final categoryName = StringUtils.toSnakeCase(category.name);
      for (final endpoint in category.endpoints) {
        if (endpoint.hasRequestBody ||
            endpoint.queryParams.isNotEmpty ||
            endpoint.pathParams.isNotEmpty) {
          b.directives.add(Directive.import(
            'package:$packageName/data/models/$categoryName/requests/${StringUtils.toSnakeCase(endpoint.name)}_req.dart',
          ));
        }
      }

      // Main group
      b.body.add(Code('void main() {'));
      b.body.add(Code('  final dio = Dio(BaseOptions(baseUrl: \'https://api.$packageName.com\'));'));
      b.body.add(Code('  ${StringUtils.toPascalCase(packageName)}DI.init(dio, DefaultFailure());'));
      b.body.add(Code('  final api = ${StringUtils.toPascalCase(packageName)}.init(dio);'));
      b.body.add(Code(''));

      b.body.add(Code('  group(\'${category.name} Tests\', () {'));

      for (final endpoint in category.endpoints) {
        b.body.add(_buildTestCase(endpoint));
      }

      b.body.add(Code('  });'));
      b.body.add(Code('}'));
    });

    final emitter = DartEmitter();
    final code = library.accept(emitter).toString();
    final formatter = DartFormatter();

    final file = File('${testDir.path}/$fileName');
    await file.writeAsString(formatter.format(code));
  }

  /// Builds a test case for an endpoint.
  Code _buildTestCase(EndpointModel endpoint) {
    final methodName = endpoint.methodName;
    final camelCategory = StringUtils.toLowerCamelCase(endpoint.category);
    final buffer = StringBuffer();

    buffer.writeln();
    buffer.writeln('    test(\'${methodName} should return Right\', () async {');

    // Build request if needed
    if (endpoint.hasRequestBody ||
        endpoint.queryParams.isNotEmpty ||
        endpoint.pathParams.isNotEmpty) {
      buffer.writeln('      final req = ${endpoint.requestClassName}();');
      buffer.writeln('      final result = await api.$camelCategory.$methodName(req);');
    } else {
      buffer.writeln('      final result = await api.$camelCategory.$methodName();');
    }

    buffer.writeln('      expect(result.isRight(), isTrue);');
    buffer.writeln('    });');

    return Code(buffer.toString());
  }
}
