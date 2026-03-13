import 'dart:io';
import 'package:args/args.dart';
import 'package:yaml/yaml.dart';
import '../core/models/architecture_style.dart';

/// Configuration options for the generator.
class GeneratorConfig {
  final String inputPath;
  final String outputDir;
  final String? packageName;
  final bool verbose;
  final bool dryRun;
  final bool watch;
  final bool generateBloc;
  final Map<String, String> typeMappings;
  final ArchitectureStyle architectureStyle;

  const GeneratorConfig({
    required this.inputPath,
    required this.outputDir,
    this.packageName,
    this.verbose = false,
    this.dryRun = false,
    this.watch = false,
    this.generateBloc = false,
    this.typeMappings = const {},
    this.architectureStyle = ArchitectureStyle.featureFirst,
  });
}

/// Parses command line arguments.
class ArgumentParser {
  final ArgParser _parser = ArgParser()
    ..addOption(
      'input',
      abbr: 'i',
      help: 'Path to the Swagger/OpenAPI JSON file',
      defaultsTo: 'swagger.json',
    )
    ..addOption(
      'output',
      abbr: 'o',
      help: 'Output directory for the generated package',
      defaultsTo: '.',
    )
    ..addOption(
      'name',
      abbr: 'n',
      help: 'Package name (defaults to output directory name)',
    )
    ..addFlag(
      'verbose',
      abbr: 'v',
      help: 'Enable verbose logging',
      negatable: false,
    )
    ..addFlag(
      'dry-run',
      help: 'Preview changes without writing files',
      negatable: false,
    )
    ..addFlag(
      'watch',
      abbr: 'w',
      help: 'Automatically re-generate code when the input file changes',
      negatable: false,
    )
    ..addFlag(
      'bloc',
      abbr: 'b',
      help: 'Generate basic Bloc/Cubit classes for endpoints',
      negatable: false,
    )
    ..addOption(
      'architecture',
      abbr: 'a',
      help: 'Architecture pattern to use',
      allowed: ArchitectureStyle.values.map((e) => e.cliValue).toList(),
      defaultsTo: ArchitectureStyle.featureFirst.cliValue,
      allowedHelp: getArchitectureStyleChoices(),
    )
    ..addFlag(
      'help',
      abbr: 'h',
      help: 'Show this help message',
      negatable: false,
    );

  /// Parses the command line arguments.
  GeneratorConfig? parse(List<String> args) {
    final results = _parser.parse(args);

    if (results['help'] as bool) {
      print(_parser.usage);
      return null;
    }

    // Load from yaml if exists
    final configFile = File('swagger_generator.yaml');
    Map<dynamic, dynamic> yamlConfig = {};
    if (configFile.existsSync()) {
      final content = configFile.readAsStringSync();
      final doc = loadYaml(content);
      if (doc is Map) {
        yamlConfig = doc;
      }
    }

    final architectureValue = results['architecture'] as String? ?? yamlConfig['architecture'] as String? ?? ArchitectureStyle.featureFirst.cliValue;

    // Advanced Type Mapping from YAML
    final Map<String, String> typeMappings = {};
    final rawMappings = yamlConfig['type_mappings'];
    if (rawMappings is Map) {
      rawMappings.forEach((key, value) {
        typeMappings[key.toString()] = value.toString();
      });
    }

    return GeneratorConfig(
      inputPath: results['input'] as String? ?? yamlConfig['input'] as String? ?? 'swagger.json',
      outputDir: results['output'] as String? ?? yamlConfig['output'] as String? ?? '.',
      packageName: results['name'] as String? ?? yamlConfig['name'] as String?,
      verbose: results['verbose'] as bool? ?? yamlConfig['verbose'] as bool? ?? false,
      dryRun: results['dry-run'] as bool? ?? yamlConfig['dry-run'] as bool? ?? false,
      watch: results['watch'] as bool? ?? yamlConfig['watch'] as bool? ?? false,
      generateBloc: results['bloc'] as bool? ?? yamlConfig['bloc'] as bool? ?? false,
      typeMappings: typeMappings,
      architectureStyle: parseArchitectureStyle(architectureValue),
    );
  }

  /// Gets the usage message.
  String get usage => _parser.usage;
}
