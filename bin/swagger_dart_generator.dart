#!/usr/bin/env dart

import 'dart:io';

import 'package:swagger_dart_generator/swagger_dart_generator.dart';

void main(List<String> args) async {
  if (args.length < 1) {
    print(
      '❌ Usage: swagger_dart_generator <package_name>',
    );
    print('   Example: swagger_dart_generator my_package');
    exit(1);
  }
  final package = args[0];
  final replace = args.length > 1 && args[1] == '--replace';
  await generateFromSwagger(package, replace);
}
