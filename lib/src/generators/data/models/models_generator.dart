import 'dart:io';

import '../../../core/models/architecture_style.dart';
import '../../../core/models/endpoint_model.dart';
import 'model_builder.dart';
import '../../../utils/string_utils.dart';

/// Generates data models with barrel exports.
///
/// Output structure varies by architecture style:
/// - feature: lib/features/{feature}/data/models/{requests, responses}/
/// - layer: lib/data/models/{feature}/{requests, responses}/
/// - Simple: lib/models/{requests, responses}/
class ModelsGenerator {
  final String outputDir;
  final String packageName;
  final ArchitectureStyle architectureStyle;

  ModelsGenerator({
    required this.outputDir,
    required this.packageName,
    required this.architectureStyle,
  });

  /// Generates models for all features.
  Future<void> generate(List<EndpointCategory> categories) async {
    for (final category in categories) {
      await _generateFeatureModels(category);
    }
  }

  /// Gets the models base directory path based on architecture style.
  String _getModelsPath(String featureName) {
    return switch (architectureStyle) {
      ArchitectureStyle.featureFirst => '$outputDir/lib/features/$featureName/data/models',
      ArchitectureStyle.layerFirst => '$outputDir/lib/data/models/$featureName',
      ArchitectureStyle.simple => '$outputDir/lib/models/$featureName',
    };
  }

  /// Generates models for a single feature.
  Future<void> _generateFeatureModels(EndpointCategory category) async {
    final featureName = StringUtils.toSnakeCase(category.name);
    final modelsDir = Directory(_getModelsPath(featureName));
    final requestsDir = Directory('${modelsDir.path}/requests');
    final responsesDir = Directory('${modelsDir.path}/responses');

    modelsDir.createSync(recursive: true);
    requestsDir.createSync(recursive: true);
    responsesDir.createSync(recursive: true);

    final requestExports = <String>[];
    final responseExports = <String>[];

    for (final endpoint in category.endpoints) {
      // In simple architecture, prefix filenames with feature name to avoid collisions
      final filePrefix = architectureStyle == ArchitectureStyle.simple ? '${featureName}_' : '';

      // Generate request model (only for simple architecture - for clean arch, requests are in usecases)
      if (architectureStyle == ArchitectureStyle.simple) {
        if (endpoint.hasRequestBody) {
          await _generateRequestModel(endpoint, requestsDir, filePrefix: filePrefix);
          requestExports.add("export 'requests/${filePrefix}${StringUtils.toSnakeCase(endpoint.name)}_req.dart';");
        } else if (endpoint.queryParams.isNotEmpty || endpoint.pathParams.isNotEmpty) {
          await _generateParamsRequestModel(endpoint, requestsDir, filePrefix: filePrefix);
          requestExports.add("export 'requests/${filePrefix}${StringUtils.toSnakeCase(endpoint.name)}_req.dart';");
        }
      }

      // Generate response model
      if (endpoint.hasResponseBody) {
        await _generateResponseModel(endpoint, responsesDir, featureName, filePrefix: filePrefix);
        responseExports.add("export 'responses/${filePrefix}${StringUtils.toSnakeCase(endpoint.name)}_res.dart';");
      }
    }

    // Create barrel files
    await _createBarrelFile('${modelsDir.path}/${featureName}_requests.dart', requestExports);
    await _createBarrelFile('${modelsDir.path}/${featureName}_responses.dart', responseExports);
  }

  Future<void> _createBarrelFile(String path, List<String> exports) async {
    final buffer = StringBuffer();
    buffer.writeln('// Barrel file for models');
    buffer.writeln();
    for (final export in exports) {
      buffer.writeln(export);
    }
    await File(path).writeAsString(buffer.toString());
  }

  Future<void> _generateRequestModel(
    EndpointModel endpoint,
    Directory outputDir, {
    String filePrefix = '',
  }) async {
    final className = endpoint.requestClassName;
    final fileName = '${filePrefix}${StringUtils.toSnakeCase(endpoint.name)}_req.dart';

    final properties = <String, dynamic>{};

    if (endpoint.requestBody != null) {
      properties.addAll(_flattenProperties(endpoint.requestBody!));
    }

    for (final param in endpoint.pathParams) {
      final fieldName = StringUtils.toLowerCamelCase(param.name);
      properties[fieldName] = _getDefaultValueForType(param.type);
    }

    for (final param in endpoint.queryParams) {
      final fieldName = StringUtils.toLowerCamelCase(param.name);
      properties[fieldName] = _getDefaultValueForType(param.type);
    }

    // For simple architecture: Request models need Equatable, toJson, fromJson
    final builder = ModelBuilder(
      className: className,
      properties: properties,
    );

    final file = File('${outputDir.path}/$fileName');
    await file.writeAsString(builder.build());
  }

  Future<void> _generateParamsRequestModel(
    EndpointModel endpoint,
    Directory outputDir, {
    String filePrefix = '',
  }) async {
    final className = endpoint.requestClassName;
    final fileName = '${filePrefix}${StringUtils.toSnakeCase(endpoint.name)}_req.dart';

    final properties = <String, dynamic>{};

    for (final param in endpoint.queryParams) {
      final fieldName = StringUtils.toLowerCamelCase(param.name);
      properties[fieldName] = _getDefaultValueForType(param.type);
    }

    for (final param in endpoint.pathParams) {
      final fieldName = StringUtils.toLowerCamelCase(param.name);
      properties[fieldName] = _getDefaultValueForType(param.type);
    }

    if (properties.isEmpty) return;

    // For simple architecture: Request models need Equatable, toJson, fromJson
    final builder = ModelBuilder(
      className: className,
      properties: properties,
    );

    final file = File('${outputDir.path}/$fileName');
    await file.writeAsString(builder.build());
  }

  Future<void> _generateResponseModel(
    EndpointModel endpoint,
    Directory outputDir,
    String featureName, {
    String filePrefix = '',
  }) async {
    final className = endpoint.responseClassName;
    final fileName = '${filePrefix}${StringUtils.toSnakeCase(endpoint.name)}_res.dart';

    final properties = endpoint.responseBody != null ? _flattenProperties(endpoint.responseBody!) : <String, dynamic>{};

    // For simple architecture, response models are standalone (no entity layer)
    // For feature and layer, response models extend Entity
    if (architectureStyle == ArchitectureStyle.simple) {
      final builder = ModelBuilder(
        className: className,
        properties: properties,
      );
      final file = File('${outputDir.path}/$fileName');
      await file.writeAsString(builder.build());
    } else {
      final entityClassName = endpoint.entityClassName;
      final entityImportPath = _getEntityImportPath(featureName, endpoint.name);
      final builder = ModelBuilder(
        className: className,
        entityClassName: entityClassName,
        entityImportPath: entityImportPath,
        properties: properties,
      );
      final file = File('${outputDir.path}/$fileName');
      await file.writeAsString(builder.build());
    }
  }

  /// Gets the entity import path relative to the response model file.
  String _getEntityImportPath(String featureName, String endpointName) {
    final entityFileName = '${StringUtils.toSnakeCase(endpointName)}_entity.dart';
    return switch (architectureStyle) {
      ArchitectureStyle.featureFirst =>
        // From: lib/features/{feature}/data/models/responses/file.dart
        // To:   lib/features/{feature}/domain/entities/file.dart
        '../../../domain/entities/$entityFileName',
      ArchitectureStyle.layerFirst =>
        // From: lib/data/models/{feature}/responses/file.dart
        // To:   lib/domain/entities/{feature}/file.dart
        '../../../../domain/entities/$featureName/$entityFileName',
      ArchitectureStyle.simple => '', // No entity in simple architecture
    };
  }

  Map<String, dynamic> _flattenProperties(Map<String, dynamic> data) {
    final result = <String, dynamic>{};

    data.forEach((key, value) {
      if (value is Map<String, dynamic>) {
        final hasNested = value.values.any((v) => v is Map || v is List);
        if (hasNested) {
          result[key] = StringUtils.toPascalCase(key);
        } else {
          result[key] = value;
        }
      } else if (value is List && value.isNotEmpty && value.first is Map) {
        result[key] = ['${StringUtils.toPascalCase(key)}Item'];
      } else {
        result[key] = value;
      }
    });

    return result;
  }

  dynamic _getDefaultValueForType(String type) {
    final baseType = type.replaceAll('?', '');
    return switch (baseType) {
      'String' => 'string',
      'int' => 0,
      'double' => 0.0,
      'bool' => false,
      'List<dynamic>' => [],
      'Map<String, dynamic>' => {},
      _ => 'string',
    };
  }
}
