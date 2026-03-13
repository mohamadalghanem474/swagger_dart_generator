import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

import 'package:swagger_dart_generator/src/core/models/endpoint_model.dart';
import 'package:swagger_dart_generator/src/utils/string_utils.dart';

/// Generates repository classes (interface and implementation in one file).
///
/// Output structure (Clean Architecture by Feature):
/// lib/features/{feature}/{feature}_repository.dart
class RepositoryGenerator {
  final String outputDir;
  final String packageName;

  RepositoryGenerator({
    required this.outputDir,
    required this.packageName,
  });

  /// Generates all repository files.
  Future<void> generate(List<EndpointCategory> categories) async {
    for (final category in categories) {
      await _generateFeatureRepository(category);
    }
  }

  /// Generates repository for a single feature.
  Future<void> _generateFeatureRepository(EndpointCategory category) async {
    final featureName = StringUtils.toSnakeCase(category.name);
    
    // Create feature-based structure: lib/features/{feature}/
    final featureDir = Directory('$outputDir/lib/features/$featureName');
    featureDir.createSync(recursive: true);

    final fileName = '${featureName}_repository';
    final interfaceName = 'I${category.name}Repository';
    final implName = '${category.name}Repository';
    final datasourceInterface = 'I${category.name}DataSource';

    final library = Library((b) {
      // Imports
      b.directives.add(Directive.import('package:$packageName/failure.dart'));
      b.directives.add(Directive.import('package:dartz/dartz.dart'));
      b.directives.add(Directive.import('package:dio/dio.dart'));
      b.directives.add(Directive.import(
        'package:$packageName/features/$featureName/${featureName}_datasource.dart',
      ));

      // Model imports - updated path for feature structure
      for (final endpoint in category.endpoints) {
        if (endpoint.hasRequestBody ||
            endpoint.queryParams.isNotEmpty ||
            endpoint.pathParams.isNotEmpty) {
          b.directives.add(Directive.import(
            'package:$packageName/features/$featureName/models/requests/${StringUtils.toSnakeCase(endpoint.name)}_req.dart',
          ));
        }
        if (endpoint.hasResponseBody) {
          b.directives.add(Directive.import(
            'package:$packageName/features/$featureName/models/responses/${StringUtils.toSnakeCase(endpoint.name)}_res.dart',
          ));
        }
      }

      // Interface class (abstract)
      b.body.add(Class((b) {
        b
          ..abstract = true
          ..name = interfaceName;

        for (final endpoint in category.endpoints) {
          b.methods.add(_buildInterfaceMethod(endpoint));
        }
      }));

      // Implementation class
      b.body.add(Class((b) {
        b
          ..name = implName
          ..implements.add(refer(interfaceName));

        // Constructor
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

        // Fields
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

        // Methods
        for (final endpoint in category.endpoints) {
          b.methods.add(_buildImplementationMethod(endpoint));
        }
      }));
    });

    final emitter = DartEmitter();
    final code = library.accept(emitter).toString();
    final formatter = DartFormatter();

    final file = File('${featureDir.path}/$fileName.dart');
    await file.writeAsString(formatter.format(code));
  }

  /// Builds an interface method definition.
  Method _buildInterfaceMethod(EndpointModel endpoint) {
    final returnType = endpoint.hasResponseBody
        ? 'Future<Either<FailureDetails, ${endpoint.responseClassName}>>'
        : 'Future<Either<FailureDetails, void>>';

    final builder = MethodBuilder()
      ..name = endpoint.methodName
      ..returns = refer(returnType);

    // Request parameter
    if (endpoint.hasRequestBody ||
        endpoint.queryParams.isNotEmpty ||
        endpoint.pathParams.isNotEmpty) {
      builder.requiredParameters.add(Parameter((b) {
        b
          ..name = 'req'
          ..type = refer(endpoint.requestClassName);
      }));
    }

    // Optional parameters
    builder.optionalParameters.addAll([
      _buildOptionalParam('cancelToken', 'CancelToken?'),
      _buildOptionalParam('options', 'Options?'),
    ]);

    return builder.build();
  }

  /// Builds an implementation method.
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

      // Request parameter
      if (endpoint.hasRequestBody ||
          endpoint.queryParams.isNotEmpty ||
          endpoint.pathParams.isNotEmpty) {
        b.requiredParameters.add(Parameter((b) {
          b
            ..name = 'req'
            ..type = refer(endpoint.requestClassName);
        }));
      }

      // Optional parameters
      b.optionalParameters.addAll([
        _buildOptionalParam('cancelToken', 'CancelToken?'),
        _buildOptionalParam('options', 'Options?'),
      ]);

      // Body with inline try-catch
      b.body = _buildInlineTryCatchBody(endpoint);
    });
  }

  /// Builds inline try-catch body.
  Block _buildInlineTryCatchBody(EndpointModel endpoint) {
    final statements = <Code>[];

    // Build data source call string
    final hasReq = endpoint.hasRequestBody ||
        endpoint.queryParams.isNotEmpty ||
        endpoint.pathParams.isNotEmpty;
    final methodCall = '_dataSource.${endpoint.methodName}';
    final params = hasReq ? 'req' : '';
    final namedParams = 'cancelToken: cancelToken, options: options';
    final fullCall = params.isNotEmpty
        ? '$methodCall($params, $namedParams)'
        : '$methodCall($namedParams)';

    // Build try-catch block
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

  /// Builds an optional parameter.
  Parameter _buildOptionalParam(String name, String type) {
    return Parameter((b) {
      b
        ..name = name
        ..named = true
        ..type = refer(type);
    });
  }
}
