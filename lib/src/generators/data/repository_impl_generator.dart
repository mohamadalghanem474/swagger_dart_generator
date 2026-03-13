import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

import 'package:swagger_dart_generator/src/core/models/architecture_style.dart';
import 'package:swagger_dart_generator/src/core/models/endpoint_model.dart';
import 'package:swagger_dart_generator/src/utils/string_utils.dart';

/// Generates data repository implementations.
///
/// Output structure varies by architecture style:
/// - feature: lib/features/{feature}/data/repositories/
/// - layer: lib/data/repositories/
/// - Simple: lib/repositories/ (interface + impl in same file)
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
      ArchitectureStyle.simple => '$outputDir/lib/repositories',
    };
  }

  /// Gets the datasource import path based on architecture style.
  String _getDatasourceImport(String featureName) {
    return switch (architectureStyle) {
      ArchitectureStyle.featureFirst => 'package:$packageName/features/$featureName/data/datasources/${featureName}_remote_datasource.dart',
      ArchitectureStyle.layerFirst => 'package:$packageName/data/datasources/${featureName}_datasource.dart',
      ArchitectureStyle.simple => 'package:$packageName/datasources/${featureName}_datasource.dart',
    };
  }

  /// Gets the repository interface import path based on architecture style.
  String _getRepositoryInterfaceImport(String featureName) {
    return switch (architectureStyle) {
      ArchitectureStyle.featureFirst => 'package:$packageName/features/$featureName/domain/repositories/${featureName}_repository.dart',
      ArchitectureStyle.layerFirst => 'package:$packageName/domain/repositories/${featureName}_repository.dart',
      ArchitectureStyle.simple => 'package:$packageName/repositories/${featureName}_repository.dart',
    };
  }

  /// Gets the entity import path based on architecture style.
  /// For simple architecture, returns response model import path (no entities layer).
  String _getEntityImport(String featureName, String endpointName) {
    final filePrefix = architectureStyle == ArchitectureStyle.simple ? '${featureName}_' : '';
    final entityFileName = '${StringUtils.toSnakeCase(endpointName)}_entity.dart';
    final responseFileName = '${filePrefix}${StringUtils.toSnakeCase(endpointName)}_res.dart';
    return switch (architectureStyle) {
      ArchitectureStyle.featureFirst => 'package:$packageName/features/$featureName/domain/entities/$entityFileName',
      ArchitectureStyle.layerFirst => 'package:$packageName/domain/entities/$featureName/$entityFileName',
      ArchitectureStyle.simple => 'package:$packageName/models/$featureName/responses/$responseFileName',
    };
  }

  /// Gets the return type class name (entity for clean arch, response model for simple).
  String _getReturnTypeClassName(EndpointModel endpoint) {
    return switch (architectureStyle) {
      ArchitectureStyle.featureFirst => endpoint.entityClassName,
      ArchitectureStyle.layerFirst => endpoint.entityClassName,
      ArchitectureStyle.simple => endpoint.responseClassName,
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

  Future<void> _generateRepositoryImpl(EndpointCategory category) async {
    final featureName = StringUtils.toSnakeCase(category.name);
    final repoDir = Directory(_getRepoImplPath(featureName));
    repoDir.createSync(recursive: true);

    final isSimple = architectureStyle == ArchitectureStyle.simple;
    final fileName = isSimple ? '${featureName}_repository' : '${featureName}_repository_impl';
    final interfaceName = 'I${category.name}Repository';
    final implName = '${category.name}RepositoryImpl';
    final datasourceInterface = 'I${category.name}DataSource';

    final library = Library((b) {
      b.directives.add(Directive.import('package:$packageName/failure.dart'));
      b.directives.add(Directive.import('package:dartz/dartz.dart'));
      b.directives.add(Directive.import('package:dio/dio.dart'));

      // For non-simple architecture, import the interface
      if (!isSimple) {
        b.directives.add(Directive.import(_getRepositoryInterfaceImport(featureName)));
      }

      b.directives.add(Directive.import(_getDatasourceImport(featureName)));

      // Individual entity imports
      for (final endpoint in category.endpoints) {
        if (endpoint.hasResponseBody) {
          b.directives.add(Directive.import(
            _getEntityImport(featureName, endpoint.name),
          ));
        }
      }

      // Individual request imports
      for (final endpoint in category.endpoints) {
        if (endpoint.hasRequestBody || endpoint.queryParams.isNotEmpty || endpoint.pathParams.isNotEmpty) {
          b.directives.add(Directive.import(
            _getRequestImport(featureName, endpoint.name),
          ));
        }
      }

      // For simple architecture, generate interface in same file
      if (isSimple) {
        b.body.add(_buildInterfaceClass(category, interfaceName));
      }

      b.body.add(_buildImplementationClass(category, implName, interfaceName, datasourceInterface));
    });

    final emitter = DartEmitter();
    final code = library.accept(emitter).toString();
    final formatter = DartFormatter();

    final file = File('${repoDir.path}/$fileName.dart');
    await file.writeAsString(formatter.format(code));
  }

  /// Builds the interface class for simple architecture.
  Class _buildInterfaceClass(EndpointCategory category, String interfaceName) {
    return Class((b) {
      b
        ..abstract = true
        ..name = interfaceName;

      for (final endpoint in category.endpoints) {
        b.methods.add(_buildInterfaceMethod(endpoint));
      }
    });
  }

  /// Builds an interface method definition.
  Method _buildInterfaceMethod(EndpointModel endpoint) {
    final returnClassName = _getReturnTypeClassName(endpoint);
    final returnType = endpoint.hasResponseBody ? 'Future<Either<FailureDetails, $returnClassName>>' : 'Future<Either<FailureDetails, void>>';

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

  /// Builds the implementation class.
  Class _buildImplementationClass(
    EndpointCategory category,
    String implName,
    String interfaceName,
    String datasourceInterface,
  ) {
    return Class((b) {
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
    });
  }

  Method _buildImplementationMethod(EndpointModel endpoint) {
    final returnClassName = _getReturnTypeClassName(endpoint);
    final returnType = endpoint.hasResponseBody ? 'Future<Either<FailureDetails, $returnClassName>>' : 'Future<Either<FailureDetails, void>>';

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

      b.body = _buildInlineTryCatchBody(endpoint);
    });
  }

  Block _buildInlineTryCatchBody(EndpointModel endpoint) {
    final statements = <Code>[];

    final hasReq = endpoint.hasRequestBody || endpoint.queryParams.isNotEmpty || endpoint.pathParams.isNotEmpty;
    final methodCall = '_dataSource.${endpoint.methodName}';
    final params = hasReq ? 'req' : '';
    final namedParams = 'cancelToken: cancelToken, options: options';
    final fullCall = params.isNotEmpty ? '$methodCall($params, $namedParams)' : '$methodCall($namedParams)';

    statements.add(Code('try {'));
    if (endpoint.hasResponseBody) {
      statements.add(Code('  final result = await $fullCall;'));
      // Return result directly - for clean arch, result (Response) extends Entity
      // For simple architecture, result is the Response model
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
