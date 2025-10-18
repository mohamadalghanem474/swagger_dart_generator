library swagger_dart_generator;

export 'src/swagger_parser.dart';
export 'src/generators/model_generator.dart';
export 'src/generators/datasource_generator.dart';
export 'src/generators/repository_generator.dart';
export 'src/generators/endpoint_generator.dart';
export 'src/generators/test_generator.dart';
import 'dart:io';
import 'package:swagger_dart_generator/src/generators/api_generator.dart';
import 'package:swagger_dart_generator/src/generators/failure_generator.dart';
import 'package:swagger_dart_generator/src/generators/mg_tools_and_build_runner.dart';
import 'package:swagger_dart_generator/src/generators/pkg_generator.dart';
import 'package:swagger_dart_generator/src/swagger_parser.dart';
import 'package:swagger_dart_generator/src/generators/model_generator.dart';
import 'package:swagger_dart_generator/src/generators/datasource_generator.dart';
import 'package:swagger_dart_generator/src/generators/repository_generator.dart';
import 'package:swagger_dart_generator/src/generators/endpoint_generator.dart';
import 'package:swagger_dart_generator/src/generators/test_generator.dart';

Future<void> generateFromSwagger(bool replace) async {
  final directory = Directory.current;
  final swaggerJsonPath = '${directory.path}/swagger.json';
  final outputDirectory = '${directory.path}';
  final packageName = directory.path.split(Platform.pathSeparator).last;
  final result = await generatePkg(swaggerJsonPath,outputDirectory, packageName, replace);
  if (result) {
    final tempParsedSwaggerPath = await parseSwaggerFile(swaggerJsonPath, outputDirectory);
    await generateEndpoints(tempParsedSwaggerPath, packageName, outputDirectory);
    await generateModels(tempParsedSwaggerPath, packageName, outputDirectory);
    await generateDatasources(tempParsedSwaggerPath, packageName, outputDirectory);
    await generateRepositories(tempParsedSwaggerPath, packageName, outputDirectory);
    await generateApi(tempParsedSwaggerPath, packageName, outputDirectory);
    await generateFailureClasses(outputDirectory);
    await generateIntegrationTests(tempParsedSwaggerPath, packageName, outputDirectory);
    await mgToolsAndBuildRunner();
    await File(tempParsedSwaggerPath).delete(recursive: true);
  }
}
