/// Architecture pattern styles for code generation.
///
/// Defines how the generated code is organized structurally.
enum ArchitectureStyle {
  /// Feature-First Clean Architecture (default)
  /// 
  /// Structure:
  /// ```
  /// lib/features/{feature}/
  ///   ├── domain/
  ///   │   ├── entities/
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

  /// Layer-First Clean Architecture
  /// 
  /// Structure:
  /// ```
  /// lib/
  ///   ├── domain/
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

  /// Clean Mixed - Shared Domain + Feature Data
  /// 
  /// Structure:
  /// ```
  /// lib/
  ///   ├── domain/           # Shared across all features
  ///   │   ├── entities/
  ///   │   └── repositories/
  ///   └── features/{feature}/
  ///       └── data/
  ///           ├── models/
  ///           └── datasources/
  /// ```
  /// 
  /// Best for: Apps with shared domain logic
  cleanMixed,

  /// Simple Architecture (no layers)
  /// 
  /// Structure:
  /// ```
  /// lib/
  ///   ├── models/
  ///   ├── repositories/
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
      ArchitectureStyle.featureFirst => 'Feature-First Clean Arch',
      ArchitectureStyle.layerFirst => 'Layer-First Clean Arch',
      ArchitectureStyle.cleanMixed => 'Clean Mixed',
      ArchitectureStyle.simple => 'Simple (No Layers)',
    };
  }

  /// CLI argument value
  String get cliValue {
    return switch (this) {
      ArchitectureStyle.featureFirst => 'feature-first',
      ArchitectureStyle.layerFirst => 'layer-first',
      ArchitectureStyle.cleanMixed => 'clean-mixed',
      ArchitectureStyle.simple => 'simple',
    };
  }

  /// Description for help text
  String get description {
    return switch (this) {
      ArchitectureStyle.featureFirst => 
        'Each feature has its own domain and data layers. Best for scalability.',
      ArchitectureStyle.layerFirst => 
        'Domain and data layers are global, features only have usecases. Best for strict separation.',
      ArchitectureStyle.cleanMixed => 
        'Domain is shared globally, each feature has its own data layer. Best balance.',
      ArchitectureStyle.simple => 
        'No layers, just models/repositories/datasources. Best for small apps.',
    };
  }

  /// Whether this style generates usecases
  bool get generatesUsecases => 
      this != ArchitectureStyle.simple;

  /// Whether this style has separate domain layer
  bool get hasDomainLayer => 
      this != ArchitectureStyle.simple;

  /// Whether domain is feature-based or global
  bool get isDomainFeatureBased => 
      this == ArchitectureStyle.featureFirst;
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
    for (final style in ArchitectureStyle.values)
      style.cliValue: '${style.displayName}: ${style.description}',
  };
}
