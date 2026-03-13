import 'dart:io';

import 'package:swagger_dart_generator/src/core/models/architecture_style.dart';
import 'package:swagger_dart_generator/src/core/models/endpoint_model.dart';
import 'package:swagger_dart_generator/src/utils/string_utils.dart';

/// Generates domain entities.
///
/// Output structure varies by architecture style:
/// - Feature-First: lib/features/{feature}/domain/entities/
/// - Layer-First: lib/domain/entities/
/// - Clean-Mixed: lib/domain/entities/
/// - Simple: lib/models/ (no separate entities layer)
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
    // For simple architecture, entities are combined with models
    if (architectureStyle == ArchitectureStyle.simple) {
      return;
    }

    for (final category in categories) {
      await _generateFeatureEntities(category);
    }
  }

  /// Gets the entities directory path based on architecture style.
  String _getEntitiesPath(String featureName) {
    return switch (architectureStyle) {
      ArchitectureStyle.featureFirst => '$outputDir/lib/features/$featureName/domain/entities',
      ArchitectureStyle.layerFirst => '$outputDir/lib/domain/entities',
      ArchitectureStyle.cleanMixed => '$outputDir/lib/domain/entities',
      ArchitectureStyle.simple => '$outputDir/lib/models',
    };
  }

  /// Gets the relative import path to response models.
  String _getModelImportPath(String featureName) {
    return switch (architectureStyle) {
      ArchitectureStyle.featureFirst => '../../data/models/responses',
      ArchitectureStyle.layerFirst => '../../data/models/$featureName/responses',
      ArchitectureStyle.cleanMixed => '../../features/$featureName/data/models/responses',
      ArchitectureStyle.simple => 'responses',
    };
  }

  /// Generates entities for a single feature.
  Future<void> _generateFeatureEntities(EndpointCategory category) async {
    final featureName = StringUtils.toSnakeCase(category.name);
    final entitiesDir = Directory(_getEntitiesPath(featureName));
    entitiesDir.createSync(recursive: true);

    final buffer = StringBuffer();
    buffer.writeln('// Domain Entities for ${category.name} Feature');
    buffer.writeln('// In Clean Architecture, entities represent domain objects');
    buffer.writeln();
    buffer.writeln('// For simplicity, we export response models as entities');
    buffer.writeln('// In production, map Data Models -> Domain Entities');
    buffer.writeln();
    
    for (final endpoint in category.endpoints) {
      if (endpoint.hasResponseBody) {
        final modelName = endpoint.responseClassName;
        final importPath = _getModelImportPath(featureName);
        buffer.writeln("export '$importPath/${StringUtils.toSnakeCase(endpoint.name)}_res.dart' show $modelName;");
      }
    }

    final file = File('${entitiesDir.path}/${featureName}_entities.dart');
    await file.writeAsString(buffer.toString());
  }
}
