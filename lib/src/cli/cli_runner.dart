import 'dart:io';

import 'package:swagger_dart_generator/src/cli/argument_parser.dart';
import 'package:swagger_dart_generator/src/core/models/endpoint_model.dart';
import 'package:swagger_dart_generator/src/core/swagger_parser.dart';
import 'package:swagger_dart_generator/src/generators/api/api_generator.dart';
import 'package:swagger_dart_generator/src/generators/datasource/datasource_generator.dart';
import 'package:swagger_dart_generator/src/generators/endpoints/endpoints_generator.dart';
import 'package:swagger_dart_generator/src/generators/failure/failure_generator.dart';
import 'package:swagger_dart_generator/src/generators/models/model_generator.dart';
import 'package:swagger_dart_generator/src/generators/pubspec/pubspec_generator.dart';
import 'package:swagger_dart_generator/src/generators/repository/repository_generator.dart';
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
    _info('🚀 Generating code...');

    try {
      // Create package structure
      await _createPackageStructure(packageName);

      // Generate pubspec.yaml
      _verbose('Generating pubspec.yaml...');
      final pubspecGen = PubspecGenerator(
        packageName: packageName,
        outputDir: config.outputDir,
      );
      await pubspecGen.generate();

      // Generate endpoints
      _verbose('Generating endpoints...');
      final endpointsGen = EndpointsGenerator(outputDir: config.outputDir);
      await endpointsGen.generate(categories);

      // Generate failure classes
      _verbose('Generating failure classes...');
      final failureGen = FailureGenerator(outputDir: config.outputDir);
      await failureGen.generate();

      // Generate models
      _verbose('Generating models...');
      final modelGen = ModelGenerator(
        outputDir: config.outputDir,
        packageName: packageName,
      );
      await modelGen.generate(categories);

      // Generate data sources
      _verbose('Generating data sources...');
      final datasourceGen = DatasourceGenerator(
        outputDir: config.outputDir,
        packageName: packageName,
      );
      await datasourceGen.generate(categories);

      // Generate repositories
      _verbose('Generating repositories...');
      final repositoryGen = RepositoryGenerator(
        outputDir: config.outputDir,
        packageName: packageName,
      );
      await repositoryGen.generate(categories);

      // Generate API class
      _verbose('Generating API class...');
      final apiGen = ApiGenerator(
        outputDir: config.outputDir,
        packageName: packageName,
      );
      await apiGen.generate(categories);

      // Generate tests
      _verbose('Generating tests...');
      final testGen = TestGenerator(
        outputDir: config.outputDir,
        packageName: packageName,
      );
      await testGen.generate(categories);

      _info('');
      _success('✅ Code generation complete!');
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

    // Create lib directory
    final libDir = Directory('${config.outputDir}/lib');
    if (!libDir.existsSync()) {
      libDir.createSync(recursive: true);
    }

    // Check if lib already exists and warn
    if (libDir.listSync().isNotEmpty) {
      _warn('Output directory is not empty. Files may be overwritten.');
    }
  }

  /// Gets the package name from the output directory.
  String _getPackageName() {
    final dir = Directory(config.outputDir);
    final name = dir.path.split(Platform.pathSeparator).last;
    // Sanitize for dart package name
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

  // Logging helpers

  void _printBanner() {
    print('');
    print('╔════════════════════════════════════════════════════════════╗');
    print('║          Swagger Dart Generator v2.0.0                     ║');
    print('║          Professional Code Generation Tool                 ║');
    print('╚════════════════════════════════════════════════════════════╝');
    print('');
  }

  void _info(String message) {
    print(message);
  }

  void _success(String message) {
    print('\x1B[32m$message\x1B[0m');
  }

  void _warn(String message) {
    print('\x1B[33m⚠️  $message\x1B[0m');
  }

  void _error(String message) {
    print('\x1B[31m❌ $message\x1B[0m');
  }

  void _verbose(String message) {
    if (config.verbose) {
      print('\x1B[90m  $message\x1B[0m');
    }
  }
}
