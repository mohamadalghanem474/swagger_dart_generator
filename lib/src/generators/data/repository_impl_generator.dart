import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

import 'package:swagger_dart_generator/src/core/models/architecture_style.dart';
import 'package:swagger_dart_generator/src/core/models/endpoint_model.dart';
import 'package:swagger_dart_generator/src/utils/string_utils.dart';

/// Generates data repository implementations.
///
/// Output structure varies by architecture style:
/// - Feature-First: lib/features/{feature}/data/repositories/
/// - Layer-First: lib/data/repositories/
/// - Clean-Mixed: lib/features/{feature}/data/repositories/
class RepositoryImplGenerator {
  final String outputDir;
  final String packageName;
  final ArchitectureStyle architectureStyle;

  RepositoryImplGenerator({
    required this.outputDir,
    required this.packageName,
    required this.architectureStyle,
  });

  Future<void> generate(List<EndpointCategory> categories) async {
    for (final category in categories) {
      await _generateRepositoryImpl(category);
    }
  }

  /// Gets the repository implementation path based on architecture style.
  String _getRepoImplPath(String featureName) {
    return switch (architectureStyle) {
      ArchitectureStyle.featureFirst => '$outputDir/lib/features/$featureName/data/repositories',
      ArchitectureStyle.layerFirst => '$outputDir/lib/data/repositories',
      ArchitectureStyle.cleanMixed => '$outputDir/lib/features/$featureName/data/repositories',
      ArchitectureStyle.simple => '$outputDir/lib/repositories',
    };
  }

  /// Gets the datasource import path based on architecture style.
  String _getDatasourceImport(String featureName) {
    return switch (architectureStyle) {
      ArchitectureStyle.featureFirst => 
        'package:$packageName/features/$featureName/data/datasources/${featureName}_remote_datasource.dart',
      ArchitectureStyle.layerFirst => 
        'package:$packageName/data/datasources/${featureName}_datasource.dart',
      ArchitectureStyle.cleanMixed => 
        'package:$packageName/features/$featureName/data/datasources/${featureName}_datasource.dart',
      ArchitectureStyle.simple => 
        'package:$packageName/datasources/${featureName}_datasource.dart',
    };
  }

  /// Gets the repository interface import path based on architecture style.
  String _getRepositoryInterfaceImport(String featureName) {
    return switch (architectureStyle) {
      ArchitectureStyle.featureFirst => 
        'package:$packageName/features/$featureName/domain/repositories/${featureName}_repository.dart',
      ArchitectureStyle.layerFirst => 
        'package:$packageName/domain/repositories/${featureName}_repository.dart',
      ArchitectureStyle.cleanMixed => 
        'package:$packageName/domain/repositories/${featureName}_repository.dart',
      ArchitectureStyle.simple => 
        'package:$packageName/repositories/${featureName}_repository.dart',
    };
  }

  /// Gets the request model import path based on architecture style.
  String _getRequestImport(String featureName, String endpointName) {
    final filePrefix = architectureStyle == ArchitectureStyle.simple ? '${featureName}_' : '';
    final fileName = '${filePrefix}${StringUtils.toSnakeCase(endpointName)}_req.dart';
    return switch (architectureStyle) {
      ArchitectureStyle.featureFirst => 
        'package:$packageName/features/$featureName/data/models/requests/$fileName',
      ArchitectureStyle.layerFirst => 
        'package:$packageName/data/models/$featureName/requests/$fileName',
      ArchitectureStyle.cleanMixed => 
        'package:$packageName/features/$featureName/data/models/requests/$fileName',
      ArchitectureStyle.simple => 
        'package:$packageName/models/requests/$fileName',
    };
  }

  /// Gets the response model import path based on architecture style.
  String _getResponseImport(String featureName, String endpointName) {
    final filePrefix = architectureStyle == ArchitectureStyle.simple ? '${featureName}_' : '';
    final fileName = '${filePrefix}${StringUtils.toSnakeCase(endpointName)}_res.dart';
    return switch (architectureStyle) {
      ArchitectureStyle.featureFirst => 
        'package:$packageName/features/$featureName/data/models/responses/$fileName',
      ArchitectureStyle.layerFirst => 
        'package:$packageName/data/models/$featureName/responses/$fileName',
      ArchitectureStyle.cleanMixed => 
        'package:$packageName/features/$featureName/data/models/responses/$fileName',
      ArchitectureStyle.simple => 
        'package:$packageName/models/responses/$fileName',
    };
  }

  Future<void> _generateRepositoryImpl(EndpointCategory category) async {
    final featureName = StringUtils.toSnakeCase(category.name);
    final repoDir = Directory(_getRepoImplPath(featureName));
    repoDir.createSync(recursive: true);

    final fileName = '${featureName}_repository_impl';
    final interfaceName = 'I${category.name}Repository';
    final implName = '${category.name}RepositoryImpl';
    final datasourceInterface = 'I${category.name}DataSource';

    final library = Library((b) {
      b.directives.add(Directive.import('package:$packageName/failure.dart'));
      b.directives.add(Directive.import('package:dartz/dartz.dart'));
      b.directives.add(Directive.import('package:dio/dio.dart'));
      b.directives.add(Directive.import(_getRepositoryInterfaceImport(featureName)));
      b.directives.add(Directive.import(_getDatasourceImport(featureName)));

      // Individual model imports
      for (final endpoint in category.endpoints) {
        if (endpoint.hasRequestBody ||
            endpoint.queryParams.isNotEmpty ||
            endpoint.pathParams.isNotEmpty) {
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

      b.body.add(Class((b) {
        b
          ..name = implName
          ..implements.add(refer(interfaceName));

        b.constructors.add(Constructor((b) {
          b.requiredParameters.addAll([
            Parameter((b) {
              b
                ..name = '_dataSource'
                ..toThis = true;
            }),
            Parameter((b) {
              b
                ..name = '_failure'
                ..toThis = true;
            }),
          ]);
        }));

        b.fields.addAll([
          Field((b) {
            b
              ..name = '_dataSource'
              ..type = refer(datasourceInterface)
              ..modifier = FieldModifier.final$;
          }),
          Field((b) {
            b
              ..name = '_failure'
              ..type = refer('Failure')
              ..modifier = FieldModifier.final$;
          }),
        ]);

        for (final endpoint in category.endpoints) {
          b.methods.add(_buildImplementationMethod(endpoint));
        }
      }));
    });

    final emitter = DartEmitter();
    final code = library.accept(emitter).toString();
    final formatter = DartFormatter();

    final file = File('${repoDir.path}/$fileName.dart');
    await file.writeAsString(formatter.format(code));
  }

  Method _buildImplementationMethod(EndpointModel endpoint) {
    final returnType = endpoint.hasResponseBody
        ? 'Future<Either<FailureDetails, ${endpoint.responseClassName}>>'
        : 'Future<Either<FailureDetails, void>>';

    return Method((b) {
      b
        ..name = endpoint.methodName
        ..returns = refer(returnType)
        ..annotations.add(refer('override'))
        ..modifier = MethodModifier.async;

      if (endpoint.hasRequestBody ||
          endpoint.queryParams.isNotEmpty ||
          endpoint.pathParams.isNotEmpty) {
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

      b.body = _buildInlineTryCatchBody(endpoint);
    });
  }

  Block _buildInlineTryCatchBody(EndpointModel endpoint) {
    final statements = <Code>[];

    final hasReq = endpoint.hasRequestBody ||
        endpoint.queryParams.isNotEmpty ||
        endpoint.pathParams.isNotEmpty;
    final methodCall = '_dataSource.${endpoint.methodName}';
    final params = hasReq ? 'req' : '';
    final namedParams = 'cancelToken: cancelToken, options: options';
    final fullCall = params.isNotEmpty
        ? '$methodCall($params, $namedParams)'
        : '$methodCall($namedParams)';

    statements.add(Code('try {'));
    if (endpoint.hasResponseBody) {
      statements.add(Code('  final result = await $fullCall;'));
      statements.add(Code('  return Right(result);'));
    } else {
      statements.add(Code('  await $fullCall;'));
      statements.add(Code('  return const Right(null);'));
    }
    statements.add(Code('} catch (e, stackTrace) {'));
    statements.add(Code('  return Left(_failure.handle(e, stackTrace));'));
    statements.add(Code('}'));

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
