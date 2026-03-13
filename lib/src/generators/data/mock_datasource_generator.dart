import 'dart:io';
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import '../../core/models/architecture_style.dart';
import '../../core/models/endpoint_model.dart';
import '../../utils/string_utils.dart';

/// Generates mock data source implementations for testing.
class MockDatasourceGenerator {
  final String outputDir;
  final String packageName;
  final ArchitectureStyle architectureStyle;

  MockDatasourceGenerator({
    required this.outputDir,
    required this.packageName,
    required this.architectureStyle,
  });

  Future<void> generate(List<EndpointCategory> categories) async {
    for (final category in categories) {
      await _generateFeatureMockDatasource(category);
    }
  }

  String _getDatasourcePath(String featureName) {
    return switch (architectureStyle) {
      ArchitectureStyle.featureFirst => '$outputDir/lib/features/$featureName/data/datasources',
      ArchitectureStyle.layerFirst => '$outputDir/lib/data/datasources',
      ArchitectureStyle.simple => '$outputDir/lib/datasources',
    };
  }

  Future<void> _generateFeatureMockDatasource(EndpointCategory category) async {
    final featureName = StringUtils.toSnakeCase(category.name);
    final datasourceDir = Directory(_getDatasourcePath(featureName));
    datasourceDir.createSync(recursive: true);

    final interfaceName = 'I${category.name}DataSource';
    final mockName = 'Mock${category.name}DataSource';

    final library = Library((b) {
      b.directives.add(Directive.import('package:dio/dio.dart'));
      
      // Import the interface
      final dsFileName = switch (architectureStyle) {
        ArchitectureStyle.featureFirst => '${featureName}_remote_datasource.dart',
        _ => '${featureName}_datasource.dart',
      };
      b.directives.add(Directive.import(dsFileName));

      // Import models for return types
      for (final endpoint in category.endpoints) {
        if (endpoint.hasResponseBody) {
          final filePrefix = architectureStyle == ArchitectureStyle.simple ? '${featureName}_' : '';
          final resFileName = '${filePrefix}${StringUtils.toSnakeCase(endpoint.name)}_res.dart';
          final importPath = switch (architectureStyle) {
            ArchitectureStyle.featureFirst => '../models/responses/$resFileName',
            ArchitectureStyle.layerFirst => '../models/$featureName/responses/$resFileName',
            ArchitectureStyle.simple => '../models/$featureName/responses/$resFileName',
          };
          b.directives.add(Directive.import(importPath));
        }
      }

      b.body.add(Class((b) {
        b
          ..name = mockName
          ..implements.add(refer(interfaceName));

        for (final endpoint in category.endpoints) {
          b.methods.add(_buildMockMethod(endpoint));
        }
      }));
    });

    final emitter = DartEmitter();
    final code = library.accept(emitter).toString();
    final formatter = DartFormatter();

    final file = File('${datasourceDir.path}/${featureName}_mock_datasource.dart');
    await file.writeAsString(formatter.format(code));
  }

  Method _buildMockMethod(EndpointModel endpoint) {
    final returnType = endpoint.hasResponseBody ? 'Future<${endpoint.responseClassName}>' : 'Future<dynamic>';

    return Method((b) {
      b
        ..name = endpoint.methodName
        ..returns = refer(returnType)
        ..annotations.add(refer('override'))
        ..modifier = MethodModifier.async;

      if (endpoint.hasRequestBody || endpoint.queryParams.isNotEmpty || endpoint.pathParams.isNotEmpty) {
        b.requiredParameters.add(Parameter((b) {
          b
            ..name = 'req'
            ..type = refer(endpoint.requestClassName);
        }));
      }

      b.optionalParameters.addAll([
        Parameter((b) => b..name = 'cancelToken'..named = true..type = refer('Object?')),
        Parameter((b) => b..name = 'extraHeaders'..named = true..type = refer('Map<String, dynamic>?')),
      ]);

      if (endpoint.hasResponseBody) {
        b.body = refer('${endpoint.responseClassName}.fromJson').call([literalMap({})]).returned.statement;
      } else {
        b.body = refer('null').returned.statement;
      }
    });
  }
}
