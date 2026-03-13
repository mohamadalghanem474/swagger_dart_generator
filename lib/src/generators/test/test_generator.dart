import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

import 'package:swagger_dart_generator/src/core/models/architecture_style.dart';
import 'package:swagger_dart_generator/src/core/models/endpoint_model.dart';
import 'package:swagger_dart_generator/src/utils/string_utils.dart';

/// Generates integration test templates.
class TestGenerator {
  final String outputDir;
  final String packageName;
  final ArchitectureStyle architectureStyle;

  TestGenerator({
    required this.outputDir,
    required this.packageName,
    required this.architectureStyle,
  });

  /// Generates test files for all features.
  Future<void> generate(List<EndpointCategory> categories) async {
    final testDir = Directory('$outputDir/test');
    if (!testDir.existsSync()) {
      testDir.createSync(recursive: true);
    }

    for (final category in categories) {
      await _generateFeatureTest(category, testDir);
    }
  }

  /// Gets the repository import path based on architecture style.
  // String _getRepositoryImport(String featureName) {
  //   return switch (architectureStyle) {
  //     ArchitectureStyle.featureFirst => 'package:$packageName/features/$featureName/domain/repositories/${featureName}_repository.dart',
  //     ArchitectureStyle.layerFirst => 'package:$packageName/domain/repositories/${featureName}_repository.dart',
  //     ArchitectureStyle.simple => 'package:$packageName/repositories/${featureName}_repository.dart',
  //   };
  // }

  /// Gets the request model import path based on architecture style.
  /// For clean architecture, requests are in usecases. For simple, they're in models.
  String _getRequestImport(String featureName, String endpointName) {
    final fileName = '${StringUtils.toSnakeCase(endpointName)}_usecase.dart';
    return switch (architectureStyle) {
      ArchitectureStyle.featureFirst => 'package:$packageName/features/$featureName/domain/usecases/$fileName',
      ArchitectureStyle.layerFirst => 'package:$packageName/domain/usecases/$featureName/$fileName',
      ArchitectureStyle.simple => 'package:$packageName/models/$featureName/requests/${featureName}_${StringUtils.toSnakeCase(endpointName)}_req.dart',
    };
  }

  Future<void> _generateFeatureTest(
    EndpointCategory category,
    Directory testDir,
  ) async {
    final featureName = StringUtils.toSnakeCase(category.name);
    final fileName = '${featureName}_test.dart';

    final library = Library((b) {
      b.directives.add(Directive.import('package:dio/dio.dart'));
      b.directives.add(Directive.import('package:test/test.dart'));
      b.directives.add(Directive.import('package:$packageName/$packageName.dart'));
      b.directives.add(Directive.import('package:$packageName/failure.dart'));
      //  b.directives.add(Directive.import(_getRepositoryImport(featureName)));

      for (final endpoint in category.endpoints) {
        if (endpoint.hasRequestBody || endpoint.queryParams.isNotEmpty || endpoint.pathParams.isNotEmpty) {
          b.directives.add(Directive.import(
            _getRequestImport(featureName, endpoint.name),
          ));
        }
      }

      b.body.add(Code('void main() {'));
      b.body.add(Code('  final dio = Dio(BaseOptions(baseUrl: \'https://api.$packageName.com\'));'));
      b.body.add(Code('  ${StringUtils.toPascalCase(packageName)}DI.init(dio, const DefaultFailure());'));
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

  Code _buildTestCase(EndpointModel endpoint) {
    final methodName = endpoint.methodName;
    final camelCategory = StringUtils.toLowerCamelCase(endpoint.category);
    final buffer = StringBuffer();

    buffer.writeln();
    buffer.writeln('    test(\'${methodName} should return Right\', () async {');

    if (endpoint.hasRequestBody || endpoint.queryParams.isNotEmpty || endpoint.pathParams.isNotEmpty) {
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
