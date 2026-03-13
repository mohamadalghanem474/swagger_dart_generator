import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

import '../../core/models/architecture_style.dart';
import '../../core/models/endpoint_model.dart';
import '../../utils/string_utils.dart';

/// Generates domain repository interfaces.
///
/// Output structure varies by architecture style:
/// - feature: lib/features/{feature}/domain/repositories/
/// - layer: lib/domain/repositories/
/// - Simple: skipped (interface + impl in same file)
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
    // For simple architecture, interface is combined with implementation
    if (architectureStyle == ArchitectureStyle.simple) {
      return;
    }

    for (final category in categories) {
      await _generateRepositoryInterface(category);
    }
  }

  /// Gets the repositories directory path based on architecture style.
  String _getRepositoriesPath(String featureName) {
    return switch (architectureStyle) {
      ArchitectureStyle.featureFirst => '$outputDir/lib/features/$featureName/domain/repositories',
      ArchitectureStyle.layerFirst => '$outputDir/lib/domain/repositories',
      ArchitectureStyle.simple => '$outputDir/lib/repositories',
    };
  }

  /// Gets the entity import path for a specific endpoint.
  String _getEntityImport(String featureName, String endpointName) {
    final entityFileName = '${StringUtils.toSnakeCase(endpointName)}_entity.dart';
    return switch (architectureStyle) {
      ArchitectureStyle.featureFirst => 'package:$packageName/features/$featureName/domain/entities/$entityFileName',
      ArchitectureStyle.layerFirst => 'package:$packageName/domain/entities/$featureName/$entityFileName',
      ArchitectureStyle.simple => 'package:$packageName/models/$featureName/$entityFileName',
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

  /// Generates repository interface for a single feature.
  Future<void> _generateRepositoryInterface(EndpointCategory category) async {
    final featureName = StringUtils.toSnakeCase(category.name);
    final repoDir = Directory(_getRepositoriesPath(featureName));
    repoDir.createSync(recursive: true);

    final interfaceName = 'I${category.name}Repository';

    final library = Library((b) {
      // Imports
      b.directives.add(Directive.import('package:dartz/dartz.dart'));
      b.directives.add(Directive.import('package:$packageName/failure.dart'));

      // Individual entity imports
      for (final endpoint in category.endpoints) {
        if (endpoint.hasResponseBody) {
          b.directives.add(Directive.import(
            _getEntityImport(featureName, endpoint.name),
          ));
        }
      }

      // Request model imports (for method parameters)
      for (final endpoint in category.endpoints) {
        if (endpoint.hasRequestBody || endpoint.queryParams.isNotEmpty || endpoint.pathParams.isNotEmpty) {
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

    final file = File('${repoDir.path}/${featureName}_repository.dart');
    await file.writeAsString(formatter.format(code));
  }

  /// Builds an interface method definition.
  Method _buildInterfaceMethod(EndpointModel endpoint) {
    final returnType = endpoint.hasResponseBody ? 'Future<Either<FailureDetails, ${endpoint.entityClassName}>>' : 'Future<Either<FailureDetails, dynamic>>';

    final builder = MethodBuilder()
      ..name = endpoint.methodName
      ..returns = refer(returnType);

    // Request parameter
    if (endpoint.hasRequestBody || endpoint.queryParams.isNotEmpty || endpoint.pathParams.isNotEmpty) {
      builder.requiredParameters.add(Parameter((b) {
        b
          ..name = 'req'
          ..type = refer(endpoint.requestClassName);
      }));
    }

    // Optional parameters
    builder.optionalParameters.addAll([
      _buildOptionalParam('cancelToken', 'Object?'),
      _buildOptionalParam('extraHeaders', 'Map<String, dynamic>?'),
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
