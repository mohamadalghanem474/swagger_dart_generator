import 'dart:io';

import 'package:swagger_dart_generator/src/core/models/architecture_style.dart';
import 'package:swagger_dart_generator/src/core/models/endpoint_model.dart';
import 'package:swagger_dart_generator/src/generators/models/builders/entity_builder.dart';
import 'package:swagger_dart_generator/src/utils/string_utils.dart';

/// Generates domain entities.
///
/// Output structure varies by architecture style:
/// - feature: lib/features/{feature}/domain/entities/
/// - layer: lib/domain/entities/{feature}/
/// - Simple: No entities (return early or skip)
class EntitiesGenerator {
  final String outputDir;
  final String packageName;
  final ArchitectureStyle architectureStyle;

  EntitiesGenerator({
    required this.outputDir,
    required this.packageName,
    required this.architectureStyle,
  });

  /// Generates entities for all features.
  Future<void> generate(List<EndpointCategory> categories) async {
    for (final category in categories) {
      await _generateFeatureEntities(category);
    }
  }

  /// Gets the entities directory path based on architecture style.
  /// Returns null for simple architecture (no entities layer).
  String? _getEntitiesPath(String featureName) {
    return switch (architectureStyle) {
      ArchitectureStyle.featureFirst => '$outputDir/lib/features/$featureName/domain/entities',
      ArchitectureStyle.layerFirst => '$outputDir/lib/domain/entities/$featureName',
      ArchitectureStyle.simple => null,
    };
  }

  /// Generates entities for a single feature.
  Future<void> _generateFeatureEntities(EndpointCategory category) async {
    final featureName = StringUtils.toSnakeCase(category.name);
    final entitiesPath = _getEntitiesPath(featureName);

    // Skip for simple architecture (no entities layer)
    if (entitiesPath == null) return;

    final entitiesDir = Directory(entitiesPath);
    entitiesDir.createSync(recursive: true);

    // Generate individual entity files for each response
    for (final endpoint in category.endpoints) {
      if (endpoint.hasResponseBody) {
        await _generateEntityFile(endpoint, entitiesDir);
      }
    }
  }

  /// Generates a single entity file based on response model.
  Future<void> _generateEntityFile(
    EndpointModel endpoint,
    Directory outputDir,
  ) async {
    final className = _getEntityClassName(endpoint);
    final fileName = '${StringUtils.toSnakeCase(endpoint.name)}_entity.dart';

    // Extract properties from response body
    final properties = endpoint.responseBody != null ? _extractProperties(endpoint.responseBody!) : <String, dynamic>{};

    final builder = EntityBuilder(
      className: className,
      properties: properties,
    );

    final file = File('${outputDir.path}/$fileName');
    await file.writeAsString(builder.build());
  }

  /// Gets the entity class name.
  String _getEntityClassName(EndpointModel endpoint) => endpoint.entityClassName;

  /// Extracts properties from response body schema.
  Map<String, dynamic> _extractProperties(Map<String, dynamic> data) {
    final result = <String, dynamic>{};

    data.forEach((key, value) {
      if (value is Map<String, dynamic>) {
        // Check if nested object
        final hasNested = value.values.any((v) => v is Map || v is List);
        if (hasNested) {
          result[key] = StringUtils.toPascalCase(key);
        } else {
          // Flat object - include its properties directly
          result[key] = value;
        }
      } else if (value is List && value.isNotEmpty && value.first is Map) {
        // List of objects
        result[key] = ['${StringUtils.toPascalCase(key)}Item'];
      } else {
        result[key] = value;
      }
    });

    return result;
  }
}
