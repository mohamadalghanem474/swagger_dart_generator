library swagger_dart_generator;

export 'src/swagger_parser.dart';
export 'src/generators/model_generator.dart';
export 'src/generators/datasource_generator.dart';
export 'src/generators/repository_generator.dart';
export 'src/generators/controller_generator.dart';
export 'src/generators/endpoint_generator.dart';
export 'src/generators/test_generator.dart';

import 'dart:io';

import 'package:swagger_dart_generator/src/swagger_parser.dart';
import 'package:swagger_dart_generator/src/generators/model_generator.dart';
import 'package:swagger_dart_generator/src/generators/datasource_generator.dart';
import 'package:swagger_dart_generator/src/generators/repository_generator.dart';
import 'package:swagger_dart_generator/src/generators/controller_generator.dart';
import 'package:swagger_dart_generator/src/generators/endpoint_generator.dart';
import 'package:swagger_dart_generator/src/generators/test_generator.dart';

/// Main function to generate complete Flutter project structure from Swagger JSON
Future<void> generateFromSwagger(String packageName) async {
  final directory = Directory.current;
  final swaggerJsonPath = '${directory.path}/swagger.json';
  final outputDirectory = '${directory.path}';
  print('🚀 Generating code from $swaggerJsonPath for package "$packageName"...\n');
  print('📁 Output directory: $outputDirectory\n');

  final parsedSwaggerPath = await parseSwaggerFile(swaggerJsonPath, outputDirectory);
  await generateModels(parsedSwaggerPath, packageName, outputDirectory);
  await generateDatasources(parsedSwaggerPath, packageName, outputDirectory);
  await generateRepositories(parsedSwaggerPath, packageName, outputDirectory);
  await generateControllers(parsedSwaggerPath, packageName, outputDirectory);
  await generateEndpoints(parsedSwaggerPath, packageName, outputDirectory);
  await generateIntegrationTests(parsedSwaggerPath, packageName, outputDirectory);

  print('\n✅ All code generated successfully!');
  print('📁 Files saved in: $outputDirectory');
}
