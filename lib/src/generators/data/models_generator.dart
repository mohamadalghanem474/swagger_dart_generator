import 'dart:io';

import 'package:swagger_dart_generator/src/core/models/architecture_style.dart';
import 'package:swagger_dart_generator/src/core/models/endpoint_model.dart';
import 'package:swagger_dart_generator/src/generators/models/builders/class_builder.dart';
import 'package:swagger_dart_generator/src/utils/string_utils.dart';

/// Generates data models with barrel exports.
///
/// Output structure varies by architecture style:
/// - Feature-First: lib/features/{feature}/data/models/{requests, responses}/
/// - Layer-First: lib/data/models/{feature}/{requests, responses}/
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
      final filePrefix = architectureStyle == ArchitectureStyle.simple 
          ? '${featureName}_' 
          : '';
      
      // Generate request model
      if (endpoint.hasRequestBody) {
        await _generateRequestModel(endpoint, requestsDir, filePrefix: filePrefix);
        requestExports.add("export 'requests/${filePrefix}${StringUtils.toSnakeCase(endpoint.name)}_req.dart';");
      } else if (endpoint.queryParams.isNotEmpty || endpoint.pathParams.isNotEmpty) {
        await _generateParamsRequestModel(endpoint, requestsDir, filePrefix: filePrefix);
        requestExports.add("export 'requests/${filePrefix}${StringUtils.toSnakeCase(endpoint.name)}_req.dart';");
      }

      // Generate response model
      if (endpoint.hasResponseBody) {
        await _generateResponseModel(endpoint, responsesDir, filePrefix: filePrefix);
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

    final builder = ClassBuilder(
      className: className,
      properties: properties,
      useEquatable: true,
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

    final builder = ClassBuilder(
      className: className,
      properties: properties,
      useEquatable: true,
    );

    final file = File('${outputDir.path}/$fileName');
    await file.writeAsString(builder.build());
  }

  Future<void> _generateResponseModel(
    EndpointModel endpoint,
    Directory outputDir, {
    String filePrefix = '',
  }) async {
    final className = endpoint.responseClassName;
    final fileName = '${filePrefix}${StringUtils.toSnakeCase(endpoint.name)}_res.dart';

    final properties = endpoint.responseBody != null 
        ? _flattenProperties(endpoint.responseBody!)
        : <String, dynamic>{};

    final builder = ClassBuilder(
      className: className,
      properties: properties,
      useEquatable: true,
    );

    final file = File('${outputDir.path}/$fileName');
    await file.writeAsString(builder.build());
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
