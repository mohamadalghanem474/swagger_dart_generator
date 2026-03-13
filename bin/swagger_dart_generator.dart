#!/usr/bin/env dart

import 'dart:io';

import 'package:swagger_dart_generator/src/cli/argument_parser.dart';
import 'package:swagger_dart_generator/src/cli/cli_runner.dart';

/// Entry point for the Swagger Dart Generator CLI.
///
/// Run with --help for usage information.
Future<void> main(List<String> args) async {
  final parser = ArgumentParser();
  final config = parser.parse(args);

  if (config == null) {
    exit(0);
  }

  final runner = CliRunner(config);
  await runner.run();
}
