import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

import 'package:swagger_dart_generator/src/core/models/architecture_style.dart';
import 'package:swagger_dart_generator/src/core/models/endpoint_model.dart';
import 'package:swagger_dart_generator/src/utils/string_utils.dart';

/// Generates domain use cases.
///
/// Output structure varies by architecture style:
/// - Feature-First: lib/features/{feature}/domain/usecases/
/// - Layer-First: lib/features/{feature}/usecases/
/// - Clean-Mixed: lib/features/{feature}/usecases/
class UsecasesGenerator {
  final String outputDir;
  final String packageName;
  final ArchitectureStyle architectureStyle;

  UsecasesGenerator({
    required this.outputDir,
    required this.packageName,
    required this.architectureStyle,
  });

  /// Generates use cases for all features.
  Future<void> generate(List<EndpointCategory> categories) async {
    for (final category in categories) {
      await _generateFeatureUsecases(category);
    }
  }

  /// Generates use cases for a single feature.
  Future<void> _generateFeatureUsecases(EndpointCategory category) async {
    final featureName = StringUtils.toSnakeCase(category.name);
    final usecasesDir = Directory(_getUsecasesPath(featureName));
    usecasesDir.createSync(recursive: true);

    for (final endpoint in category.endpoints) {
      await _generateUsecase(endpoint, category.name, featureName, usecasesDir);
    }
  }

  /// Gets the usecases directory path based on architecture style.
  String _getUsecasesPath(String featureName) {
    return switch (architectureStyle) {
      ArchitectureStyle.featureFirst => '$outputDir/lib/features/$featureName/domain/usecases',
      ArchitectureStyle.layerFirst => '$outputDir/lib/features/$featureName/usecases',
      ArchitectureStyle.cleanMixed => '$outputDir/lib/features/$featureName/usecases',
      ArchitectureStyle.simple => '$outputDir/lib/usecases',
    };
  }

  /// Gets the repository import path based on architecture style.
  String _getRepositoryImport(String featureName) {
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

  /// Gets the entities import path based on architecture style.
  String _getEntitiesImport(String featureName) {
    return switch (architectureStyle) {
      ArchitectureStyle.featureFirst => 
        'package:$packageName/features/$featureName/domain/entities/${featureName}_entities.dart',
      ArchitectureStyle.layerFirst => 
        'package:$packageName/domain/entities/${featureName}_entities.dart',
      ArchitectureStyle.cleanMixed => 
        'package:$packageName/domain/entities/${featureName}_entities.dart',
      ArchitectureStyle.simple => 
        'package:$packageName/models/${featureName}_models.dart',
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

  /// Generates a single use case.
  Future<void> _generateUsecase(
    EndpointModel endpoint,
    String categoryName,
    String featureName,
    Directory outputDir,
  ) async {
    final usecaseName = '${endpoint.methodName[0].toUpperCase()}${endpoint.methodName.substring(1)}Usecase';
    final fileName = '${StringUtils.toSnakeCase(endpoint.name)}_usecase.dart';
    final repoInterface = 'I${categoryName}Repository';

    final library = Library((b) {
      // Imports
      b.directives.add(Directive.import('package:dartz/dartz.dart'));
      b.directives.add(Directive.import('package:dio/dio.dart'));
      b.directives.add(Directive.import('package:$packageName/failure.dart'));
      b.directives.add(Directive.import(_getRepositoryImport(featureName)));
      b.directives.add(Directive.import(_getEntitiesImport(featureName)));

      // Request import if needed
      if (endpoint.hasRequestBody ||
          endpoint.queryParams.isNotEmpty ||
          endpoint.pathParams.isNotEmpty) {
        b.directives.add(Directive.import(
          _getRequestImport(featureName, endpoint.name),
        ));
      }

      // UseCase class
      b.body.add(Class((b) {
        b
          ..name = usecaseName
          ..fields.add(Field((b) {
            b
              ..name = '_repository'
              ..type = refer(repoInterface)
              ..modifier = FieldModifier.final$;
          }));

        // Constructor
        b.constructors.add(Constructor((b) {
          b.requiredParameters.add(Parameter((b) {
            b
              ..name = '_repository'
              ..toThis = true;
          }));
        }));

        // Call method
        final returnType = endpoint.hasResponseBody
            ? 'Future<Either<FailureDetails, ${endpoint.responseClassName}>>'
            : 'Future<Either<FailureDetails, void>>';

        b.methods.add(Method((b) {
          b
            ..name = 'call'
            ..returns = refer(returnType)
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

          // Body
          final args = <Expression>[];
          if (endpoint.hasRequestBody ||
              endpoint.queryParams.isNotEmpty ||
              endpoint.pathParams.isNotEmpty) {
            args.add(refer('req'));
          }

          final namedArgs = <String, Expression>{
            'cancelToken': refer('cancelToken'),
            'options': refer('options'),
          };

          b.body = refer('_repository')
              .property(endpoint.methodName)
              .call(args, namedArgs)
              .awaited
              .returned
              .statement;
        }));
      }));
    });

    final emitter = DartEmitter();
    final code = library.accept(emitter).toString();
    final formatter = DartFormatter();

    final file = File('${outputDir.path}/$fileName');
    await file.writeAsString(formatter.format(code));
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
