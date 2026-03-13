import 'package:args/args.dart';
import 'package:swagger_dart_generator/src/core/models/architecture_style.dart';

/// Configuration options for the generator.
class GeneratorConfig {
  final String inputPath;
  final String outputDir;
  final String? packageName;
  final bool verbose;
  final bool dryRun;
  final ArchitectureStyle architectureStyle;

  const GeneratorConfig({
    required this.inputPath,
    required this.outputDir,
    this.packageName,
    this.verbose = false,
    this.dryRun = false,
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

    return GeneratorConfig(
      inputPath: results['input'] as String,
      outputDir: results['output'] as String,
      packageName: results['name'] as String?,
      verbose: results['verbose'] as bool,
      dryRun: results['dry-run'] as bool,
      architectureStyle: parseArchitectureStyle(results['architecture'] as String),
    );
  }

  /// Gets the usage message.
  String get usage => _parser.usage;
}
