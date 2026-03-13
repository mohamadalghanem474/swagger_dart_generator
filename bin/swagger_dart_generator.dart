#!/usr/bin/env dart

import 'dart:io';

import '../lib/src/cli/argument_parser.dart';
import '../lib/src/cli/cli_runner.dart';

/// Entry point for the Swagger Dart Generator CLI.
///
/// Run with --help for usage information.
Future<void> main(List<String> args) async {
  if (args.isEmpty) {
    final runner = CliRunner(const GeneratorConfig(inputPath: '', outputDir: ''));
    await runner.runInteractive();
    return;
  }

  final parser = ArgumentParser();
  final config = parser.parse(args);

  if (config == null) {
    exit(0);
  }

  final runner = CliRunner(config);
  await runner.run();
}
