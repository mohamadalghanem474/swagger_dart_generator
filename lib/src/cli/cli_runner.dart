import 'dart:io';

import 'package:swagger_dart_generator/src/cli/argument_parser.dart';
import 'package:swagger_dart_generator/src/core/models/architecture_style.dart';
import 'package:swagger_dart_generator/src/core/models/endpoint_model.dart';
import 'package:swagger_dart_generator/src/core/swagger_parser.dart';
import 'package:swagger_dart_generator/src/generators/api/api_generator.dart';
import 'package:swagger_dart_generator/src/generators/data/datasource_impl_generator.dart';
import 'package:swagger_dart_generator/src/generators/data/models_generator.dart';
import 'package:swagger_dart_generator/src/generators/data/repository_impl_generator.dart';
import 'package:swagger_dart_generator/src/generators/domain/entities_generator.dart';
import 'package:swagger_dart_generator/src/generators/domain/repository_interface_generator.dart';
import 'package:swagger_dart_generator/src/generators/domain/usecases_generator.dart';
import 'package:swagger_dart_generator/src/generators/endpoints/endpoints_generator.dart';
import 'package:swagger_dart_generator/src/generators/failure/failure_generator.dart';
import 'package:swagger_dart_generator/src/generators/pubspec/pubspec_generator.dart';
import 'package:swagger_dart_generator/src/generators/test/test_generator.dart';

/// Runs the code generation process.
class CliRunner {
  final GeneratorConfig config;

  CliRunner(this.config);

  /// Runs the generator.
  Future<void> run() async {
    _printBanner();

    // Validate input file
    final inputFile = File(config.inputPath);
    if (!inputFile.existsSync()) {
      _error('Swagger file not found: ${config.inputPath}');
      exit(1);
    }

    // Determine package name
    final packageName = config.packageName ?? _getPackageName();

    _info('📋 Package name: $packageName');
    _info('📄 Input file: ${config.inputPath}');
    _info('📁 Output directory: ${config.outputDir}');
    _info('🏗️  Architecture: ${config.architectureStyle.displayName}');

    if (config.dryRun) {
      _info('🔍 Dry run mode - no files will be written');
    }

    // Parse Swagger file
    _info('');
    _info('🔍 Parsing Swagger file...');

    final parser = SwaggerParser(
      swaggerPath: config.inputPath,
      outputDir: config.outputDir,
    );

    late final List<EndpointCategory> categories;
    try {
      categories = await parser.parse();
    } catch (e) {
      _error('Failed to parse Swagger file: $e');
      exit(1);
    }

    _success('Found ${categories.length} categories with ${categories.fold<int>(0, (sum, c) => sum + c.endpoints.length)} endpoints');

    if (config.dryRun) {
      _preview(categories);
      return;
    }

    // Generate files
    _info('');
    _info('🚀 Generating Clean Architecture code...');

    try {
      // Create package structure
      await _createPackageStructure(packageName);

      // Generate pubspec.yaml
      _verbose('Generating pubspec.yaml...');
      await PubspecGenerator(
        packageName: packageName,
        outputDir: config.outputDir,
      ).generate();

      // Generate endpoints
      _verbose('Generating endpoints...');
      await EndpointsGenerator(outputDir: config.outputDir).generate(categories);

      // Generate failure classes
      _verbose('Generating failure classes...');
      await FailureGenerator(outputDir: config.outputDir).generate();

      // DOMAIN LAYER
      _verbose('Generating domain layer...');
      
      // Domain - Entities
      await EntitiesGenerator(
        outputDir: config.outputDir,
        packageName: packageName,
        architectureStyle: config.architectureStyle,
      ).generate(categories);

      // Domain - Repository Interfaces
      await RepositoryInterfaceGenerator(
        outputDir: config.outputDir,
        packageName: packageName,
        architectureStyle: config.architectureStyle,
      ).generate(categories);

      // Domain - Use Cases (skip for simple architecture)
      if (config.architectureStyle.generatesUsecases) {
        await UsecasesGenerator(
          outputDir: config.outputDir,
          packageName: packageName,
          architectureStyle: config.architectureStyle,
        ).generate(categories);
      }

      // DATA LAYER
      _verbose('Generating data layer...');

      // Data - Models
      await ModelsGenerator(
        outputDir: config.outputDir,
        packageName: packageName,
        architectureStyle: config.architectureStyle,
      ).generate(categories);

      // Data - Datasource Implementations
      await DatasourceImplGenerator(
        outputDir: config.outputDir,
        packageName: packageName,
        architectureStyle: config.architectureStyle,
      ).generate(categories);

      // Data - Repository Implementations
      await RepositoryImplGenerator(
        outputDir: config.outputDir,
        packageName: packageName,
        architectureStyle: config.architectureStyle,
      ).generate(categories);

      // PRESENTATION/INFRASTRUCTURE LAYER
      _verbose('Generating API class...');
      await ApiGenerator(
        outputDir: config.outputDir,
        packageName: packageName,
        architectureStyle: config.architectureStyle,
      ).generate(categories);

      // Generate tests
      _verbose('Generating tests...');
      await TestGenerator(
        outputDir: config.outputDir,
        packageName: packageName,
        architectureStyle: config.architectureStyle,
      ).generate(categories);

      _info('');
      _success('✅ Code generation complete!');
      _info('');
      _printStructureInfo();
      _info('');
      _info('Next steps:');
      _info('  1. cd ${config.outputDir}');
      _info('  2. dart pub get');
      _info('  3. dart analyze');
    } catch (e, stackTrace) {
      _error('Code generation failed: $e');
      if (config.verbose) {
        _error(stackTrace.toString());
      }
      exit(1);
    }
  }

  /// Creates the basic package structure.
  Future<void> _createPackageStructure(String packageName) async {
    _verbose('Creating package structure...');

    final libDir = Directory('${config.outputDir}/lib');
    if (!libDir.existsSync()) {
      libDir.createSync(recursive: true);
    }

    if (libDir.listSync().isNotEmpty) {
      _warn('Output directory is not empty. Files may be overwritten.');
    }
  }

  /// Gets the package name from the output directory.
  String _getPackageName() {
    final dir = Directory(config.outputDir);
    final name = dir.path.split(Platform.pathSeparator).last;
    return name.toLowerCase().replaceAll(RegExp(r'[^a-z0-9_]'), '_');
  }

  /// Previews what would be generated.
  void _preview(List<EndpointCategory> categories) {
    _info('');
    _info('📋 Preview:');
    _info('');

    for (final category in categories) {
      _info('  📁 ${category.name}');
      for (final endpoint in category.endpoints) {
        _info('    • ${endpoint.method.value.toUpperCase()} ${endpoint.path}');
        _info('      → ${endpoint.methodName}()');
      }
      _info('');
    }
  }

  void _printBanner() {
    print('');
    print('╔════════════════════════════════════════════════════════════╗');
    print('║          Swagger Dart Generator v2.0.0                     ║');
    print('║          Configurable Architecture Patterns                ║');
    print('╚════════════════════════════════════════════════════════════╝');
    print('');
  }

  void _printStructureInfo() {
    switch (config.architectureStyle) {
      case ArchitectureStyle.featureFirst:
        _info('📁 Structure: lib/features/{feature}/');
        _info('   ├── domain/');
        _info('   │   ├── entities/');
        _info('   │   ├── repositories/ (interfaces)');
        _info('   │   └── usecases/');
        _info('   └── data/');
        _info('       ├── models/');
        _info('       ├── datasources/');
        _info('       └── repositories/ (impl)');
      case ArchitectureStyle.layerFirst:
        _info('📁 Structure: lib/');
        _info('   ├── domain/');
        _info('   │   ├── entities/');
        _info('   │   └── repositories/ (interfaces)');
        _info('   ├── data/');
        _info('   │   ├── models/');
        _info('   │   └── repositories/ (impl)');
        _info('   └── features/{feature}/');
        _info('       └── usecases/');
      case ArchitectureStyle.cleanMixed:
        _info('📁 Structure: lib/');
        _info('   ├── domain/           # Shared');
        _info('   │   ├── entities/');
        _info('   │   └── repositories/ (interfaces)');
        _info('   └── features/{feature}/');
        _info('       └── data/');
        _info('           ├── models/');
        _info('           ├── datasources/');
        _info('           └── repositories/ (impl)');
      case ArchitectureStyle.simple:
        _info('📁 Structure: lib/');
        _info('   ├── models/');
        _info('   ├── repositories/');
        _info('   └── datasources/');
    }
  }

  void _info(String message) => print(message);
  void _success(String message) => print('\x1B[32m$message\x1B[0m');
  void _warn(String message) => print('\x1B[33m⚠️  $message\x1B[0m');
  void _error(String message) => print('\x1B[31m❌ $message\x1B[0m');
  void _verbose(String message) {
    if (config.verbose) print('\x1B[90m  $message\x1B[0m');
  }
}
