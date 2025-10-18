#!/usr/bin/env dart

import 'package:swagger_dart_generator/swagger_dart_generator.dart';

void main(List<String> args) async {
  final replace = args.contains('--replace');
  await generateFromSwagger(replace);
}
