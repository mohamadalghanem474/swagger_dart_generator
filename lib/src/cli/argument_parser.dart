import 'package:args/args.dart';

/// Configuration options for the generator.
class GeneratorConfig {
  final String inputPath;
  final String outputDir;
  final String? packageName;
  final bool verbose;
  final bool dryRun;

  const GeneratorConfig({
    required this.inputPath,
    required this.outputDir,
    this.packageName,
    this.verbose = false,
    this.dryRun = false,
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
    );
  }

  /// Gets the usage message.
  String get usage => _parser.usage;
}
