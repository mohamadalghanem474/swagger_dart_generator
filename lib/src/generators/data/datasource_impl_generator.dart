import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

import 'package:swagger_dart_generator/src/core/models/architecture_style.dart';
import 'package:swagger_dart_generator/src/core/models/endpoint_model.dart';
import 'package:swagger_dart_generator/src/utils/string_utils.dart';

/// Generates data source implementations.
///
/// Output structure varies by architecture style:
/// - feature: lib/features/{feature}/data/datasources/
/// - layer: lib/data/datasources/
class DatasourceImplGenerator {
  final String outputDir;
  final String packageName;
  final ArchitectureStyle architectureStyle;

  DatasourceImplGenerator({
    required this.outputDir,
    required this.packageName,
    required this.architectureStyle,
  });

  Future<void> generate(List<EndpointCategory> categories) async {
    for (final category in categories) {
      await _generateFeatureDatasource(category);
    }
  }

  /// Gets the datasource directory path based on architecture style.
  String _getDatasourcePath(String featureName) {
    return switch (architectureStyle) {
      ArchitectureStyle.featureFirst => '$outputDir/lib/features/$featureName/data/datasources',
      ArchitectureStyle.layerFirst => '$outputDir/lib/data/datasources',
      ArchitectureStyle.simple => '$outputDir/lib/datasources',
    };
  }

  /// Gets the datasource file name based on architecture style.
  String _getDatasourceFileName(String featureName) {
    return switch (architectureStyle) {
      ArchitectureStyle.featureFirst => '${featureName}_remote_datasource',
      ArchitectureStyle.layerFirst => '${featureName}_datasource',
      ArchitectureStyle.simple => '${featureName}_datasource',
    };
  }

  /// Gets the request model import path based on architecture style.
  /// For clean architecture, requests are in usecases. For simple, they're in models.
  String _getRequestImport(String featureName, String endpointName) {
    final fileName = '${StringUtils.toSnakeCase(endpointName)}_usecase.dart';
    return switch (architectureStyle) {
      ArchitectureStyle.featureFirst =>
        // Request is in the usecase file
        'package:$packageName/features/$featureName/domain/usecases/$fileName',
      ArchitectureStyle.layerFirst =>
        // Request is in the usecase file
        'package:$packageName/domain/usecases/$featureName/$fileName',
      ArchitectureStyle.simple => 'package:$packageName/models/$featureName/requests/${featureName}_${StringUtils.toSnakeCase(endpointName)}_req.dart',
    };
  }

  /// Gets the response model import path based on architecture style.
  String _getResponseImport(String featureName, String endpointName) {
    final filePrefix = architectureStyle == ArchitectureStyle.simple ? '${featureName}_' : '';
    final fileName = '${filePrefix}${StringUtils.toSnakeCase(endpointName)}_res.dart';
    return switch (architectureStyle) {
      ArchitectureStyle.featureFirst => 'package:$packageName/features/$featureName/data/models/responses/$fileName',
      ArchitectureStyle.layerFirst => 'package:$packageName/data/models/$featureName/responses/$fileName',
      ArchitectureStyle.simple => 'package:$packageName/models/$featureName/responses/$fileName',
    };
  }

  Future<void> _generateFeatureDatasource(EndpointCategory category) async {
    final featureName = StringUtils.toSnakeCase(category.name);
    final datasourceDir = Directory(_getDatasourcePath(featureName));
    datasourceDir.createSync(recursive: true);

    final fileName = _getDatasourceFileName(featureName);
    final interfaceName = 'I${category.name}DataSource';
    final implName = switch (architectureStyle) {
      ArchitectureStyle.featureFirst => '${category.name}RemoteDataSource',
      _ => '${category.name}DataSourceImpl',
    };

    final library = Library((b) {
      b.directives.add(Directive.import('package:dio/dio.dart'));
      b.directives.add(Directive.import('package:$packageName/end_points.dart'));

      // Individual model imports
      for (final endpoint in category.endpoints) {
        if (endpoint.hasRequestBody || endpoint.queryParams.isNotEmpty || endpoint.pathParams.isNotEmpty) {
          b.directives.add(Directive.import(
            _getRequestImport(featureName, endpoint.name),
          ));
        }
        if (endpoint.hasResponseBody) {
          b.directives.add(Directive.import(
            _getResponseImport(featureName, endpoint.name),
          ));
        }
      }

      // Interface
      b.body.add(Class((b) {
        b
          ..abstract = true
          ..name = interfaceName;

        for (final endpoint in category.endpoints) {
          b.methods.add(_buildInterfaceMethod(endpoint));
        }
      }));

      // Implementation
      b.body.add(Class((b) {
        b
          ..name = implName
          ..implements.add(refer(interfaceName));

        b.constructors.add(Constructor((b) {
          b.requiredParameters.add(Parameter((b) {
            b
              ..name = '_dio'
              ..toThis = true;
          }));
        }));

        b.fields.add(Field((b) {
          b
            ..name = '_dio'
            ..type = refer('Dio')
            ..modifier = FieldModifier.final$;
        }));

        for (final endpoint in category.endpoints) {
          b.methods.add(_buildImplementationMethod(endpoint, category.name));
        }
      }));
    });

    final emitter = DartEmitter();
    final code = library.accept(emitter).toString();
    final formatter = DartFormatter();

    final file = File('${datasourceDir.path}/$fileName.dart');
    await file.writeAsString(formatter.format(code));
  }

  Method _buildInterfaceMethod(EndpointModel endpoint) {
    final returnType = endpoint.hasResponseBody ? 'Future<${endpoint.responseClassName}>' : 'Future<void>';

    final builder = MethodBuilder()
      ..name = endpoint.methodName
      ..returns = refer(returnType);

    if (endpoint.hasRequestBody || endpoint.queryParams.isNotEmpty || endpoint.pathParams.isNotEmpty) {
      builder.requiredParameters.add(Parameter((b) {
        b
          ..name = 'req'
          ..type = refer(endpoint.requestClassName);
      }));
    }

    builder.optionalParameters.addAll([
      _buildOptionalParam('cancelToken', 'CancelToken?'),
      _buildOptionalParam('options', 'Options?'),
    ]);

    return builder.build();
  }

  Method _buildImplementationMethod(EndpointModel endpoint, String categoryName) {
    final returnType = endpoint.hasResponseBody ? 'Future<${endpoint.responseClassName}>' : 'Future<void>';

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
        _buildOptionalParam('cancelToken', 'CancelToken?'),
        _buildOptionalParam('options', 'Options?'),
      ]);

      b.body = _buildMethodBody(endpoint, categoryName);
    });
  }

  Block _buildMethodBody(EndpointModel endpoint, String categoryName) {
    final statements = <Code>[];

    final categoryCamel = StringUtils.toLowerCamelCase(categoryName);
    statements.add(
      declareVar('url').assign(refer('EndPoints').property(categoryCamel).property(endpoint.methodName)).statement,
    );

    for (final param in endpoint.pathParams) {
      final fieldName = StringUtils.toLowerCamelCase(param.name);
      statements.add(
        refer('url')
            .assign(
              refer('url').property('replaceAll').call([
                literalString('{${param.name}}'),
                refer('req.$fieldName?.toString() ?? \'\''),
              ]),
            )
            .statement,
      );
    }

    final methodCall = refer('_dio').property(endpoint.method.value);
    final args = <Expression>[refer('url')];
    final namedArgs = <String, Expression>{};

    if (endpoint.hasRequestBody) {
      namedArgs['data'] = refer('req.toJson()');
    }
    if (endpoint.queryParams.isNotEmpty) {
      namedArgs['queryParameters'] = refer('req.toJson()');
    }

    namedArgs['cancelToken'] = refer('cancelToken');
    namedArgs['options'] = refer('options');

    if (endpoint.hasResponseBody) {
      statements.add(
        declareFinal('result').assign(methodCall.call(args, namedArgs).awaited).statement,
      );
      statements.add(
        refer('${endpoint.responseClassName}.fromJson').call([refer('result.data')]).returned.statement,
      );
    } else {
      statements.add(methodCall.call(args, namedArgs).awaited.statement);
    }

    return Block((b) => b.statements.addAll(statements));
  }

  Parameter _buildOptionalParam(String name, String type) {
    return Parameter((b) {
      b
        ..name = name
        ..named = true
        ..type = refer(type);
    });
  }
}
