/// Architecture pattern styles for code generation.
///
/// Defines how the generated code is organized structurally.
enum ArchitectureStyle {
  /// feature Clean Architecture (default)
  ///
  /// Structure:
  /// ```
  /// lib/features/{feature}/
  ///   ├── domain/
  ///   │   ├── entities/       ← Real entities (not exports)
  ///   │   ├── repositories/
  ///   │   └── usecases/
  ///   └── data/
  ///       ├── models/
  ///       ├── datasources/
  ///       └── repositories/
  /// ```
  ///
  /// Best for: Medium to large apps, team collaboration, scalability
  featureFirst,

  /// layer Clean Architecture
  ///
  /// Structure:
  /// ```
  /// lib/
  ///   ├── domain/             ← Real entities (not exports)
  ///   │   ├── entities/
  ///   │   └── repositories/
  ///   ├── data/
  ///   │   ├── models/
  ///   │   └── repositories/
  ///   └── features/{feature}/
  ///       └── usecases/
  /// ```
  ///
  /// Best for: Large enterprise apps, strict layer separation
  layerFirst,

  /// Simple Architecture (no layers, no entities)
  ///
  /// Structure:
  /// ```
  /// lib/
  ///   ├── models/             ← DTOs only (no entities layer)
  ///   ├── repositories/       ← Interface + Impl in same file
  ///   └── datasources/
  /// ```
  ///
  /// Best for: Small apps, prototypes, quick MVPs
  simple,
}

/// Extension to get style metadata
extension ArchitectureStyleExtension on ArchitectureStyle {
  /// Human-readable name
  String get displayName {
    return switch (this) {
      ArchitectureStyle.featureFirst => 'feature Clean Arch',
      ArchitectureStyle.layerFirst => 'layer Clean Arch',
      ArchitectureStyle.simple => 'Simple (No Layers)',
    };
  }

  /// CLI argument value
  String get cliValue {
    return switch (this) {
      ArchitectureStyle.featureFirst => 'feature',
      ArchitectureStyle.layerFirst => 'layer',
      ArchitectureStyle.simple => 'simple',
    };
  }

  /// Description for help text
  String get description {
    return switch (this) {
      ArchitectureStyle.featureFirst => 'Each feature has its own domain layer with real entities. Best for scalability.',
      ArchitectureStyle.layerFirst => 'Domain layer is global with real entities, features only have usecases. Best for strict separation.',
      ArchitectureStyle.simple => 'No layers, just models/repositories/datasources. No entities layer. Best for small apps.',
    };
  }

  /// Whether this style generates usecases
  bool get generatesUsecases => this != ArchitectureStyle.simple;

  /// Whether this style has separate domain layer with real entities
  bool get hasDomainLayer => this != ArchitectureStyle.simple;

  /// Whether domain is feature-based or global
  bool get isDomainFeatureBased => this == ArchitectureStyle.featureFirst;
}

/// Parse architecture style from CLI string
ArchitectureStyle parseArchitectureStyle(String value) {
  return ArchitectureStyle.values.firstWhere(
    (style) => style.cliValue == value.toLowerCase(),
    orElse: () => ArchitectureStyle.featureFirst,
  );
}

/// Get all available styles as CLI choices
Map<String, String> getArchitectureStyleChoices() {
  return {
    for (final style in ArchitectureStyle.values) style.cliValue: '${style.displayName}: ${style.description}',
  };
}
