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
import 'package:swagger_dart_generator/src/swagger_parser.dart';
import 'package:swagger_dart_generator/src/generators/model_generator.dart';
import 'package:swagger_dart_generator/src/generators/datasource_generator.dart';
import 'package:swagger_dart_generator/src/generators/repository_generator.dart';
import 'package:swagger_dart_generator/src/generators/endpoint_generator.dart';
import 'package:swagger_dart_generator/src/generators/test_generator.dart';

Future<void> generateFromSwagger() async {
  final directory = Directory.current;
  final swaggerJsonPath = '${directory.path}/swagger.json';
  final outputDirectory = '${directory.path}';
  final packageName = directory.path.split(Platform.pathSeparator).last;
  final tempParsedSwaggerPath = await parseSwaggerFile(swaggerJsonPath, outputDirectory);
  await generateEndpoints(tempParsedSwaggerPath, packageName, outputDirectory);
  await generateModels(tempParsedSwaggerPath, packageName, outputDirectory);
  await generateDatasources(tempParsedSwaggerPath, packageName, outputDirectory);
  await generateRepositories(tempParsedSwaggerPath, packageName, outputDirectory);
  await generateApi(tempParsedSwaggerPath, packageName, outputDirectory);
  await generateFailureClasses(outputDirectory);
  await generateIntegrationTests(tempParsedSwaggerPath, packageName, outputDirectory);
  print('⏳ Running mg_tools...');
  final mgToolsResult = await Process.run('dart', ['run', 'mg_tools', '--replace']);
  if (mgToolsResult.exitCode == 0) {
    print('🔥 Ready to use! You can now import and use the generated code.\n');
  } else {
    print('⚠️  Some issues occurred during generation. Check the logs above.\n');
  }
}
