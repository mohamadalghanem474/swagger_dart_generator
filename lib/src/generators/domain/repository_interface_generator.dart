import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

import 'package:swagger_dart_generator/src/core/models/architecture_style.dart';
import 'package:swagger_dart_generator/src/core/models/endpoint_model.dart';
import 'package:swagger_dart_generator/src/utils/string_utils.dart';

/// Generates domain repository interfaces.
///
/// Output structure varies by architecture style:
/// - Feature-First: lib/features/{feature}/domain/repositories/
/// - Layer-First: lib/domain/repositories/
/// - Clean-Mixed: lib/domain/repositories/
class RepositoryInterfaceGenerator {
  final String outputDir;
  final String packageName;
  final ArchitectureStyle architectureStyle;

  RepositoryInterfaceGenerator({
    required this.outputDir,
    required this.packageName,
    required this.architectureStyle,
  });

  /// Generates repository interfaces for all features.
  Future<void> generate(List<EndpointCategory> categories) async {
    // For global domain architectures, we might want to group by category or put all in one
    for (final category in categories) {
      await _generateRepositoryInterface(category);
    }
  }

  /// Gets the repositories directory path based on architecture style.
  String _getRepositoriesPath(String featureName) {
    return switch (architectureStyle) {
      ArchitectureStyle.featureFirst => '$outputDir/lib/features/$featureName/domain/repositories',
      ArchitectureStyle.layerFirst => '$outputDir/lib/domain/repositories',
      ArchitectureStyle.cleanMixed => '$outputDir/lib/domain/repositories',
      ArchitectureStyle.simple => '$outputDir/lib/repositories',
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
        'package:$packageName/models/${featureName}_responses.dart',
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

  /// Generates repository interface for a single feature.
  Future<void> _generateRepositoryInterface(EndpointCategory category) async {
    final featureName = StringUtils.toSnakeCase(category.name);
    final repoDir = Directory(_getRepositoriesPath(featureName));
    repoDir.createSync(recursive: true);

    final interfaceName = 'I${category.name}Repository';

    final library = Library((b) {
      // Imports
      b.directives.add(Directive.import('package:dartz/dartz.dart'));
      b.directives.add(Directive.import('package:dio/dio.dart'));
      b.directives.add(Directive.import('package:$packageName/failure.dart'));
      b.directives.add(Directive.import(_getEntitiesImport(featureName)));

      // Request model imports (for method parameters)
      for (final endpoint in category.endpoints) {
        if (endpoint.hasRequestBody ||
            endpoint.queryParams.isNotEmpty ||
            endpoint.pathParams.isNotEmpty) {
          b.directives.add(Directive.import(
            _getRequestImport(featureName, endpoint.name),
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
    });

    final emitter = DartEmitter();
    final code = library.accept(emitter).toString();
    final formatter = DartFormatter();

    final fileName = architectureStyle == ArchitectureStyle.simple 
        ? '${featureName}_repository.dart'
        : '${featureName}_repository.dart';
    final file = File('${repoDir.path}/$fileName');
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
