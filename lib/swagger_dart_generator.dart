library swagger_dart_generator;

export 'src/swagger_parser.dart';
export 'src/generators/model_generator.dart';
export 'src/generators/datasource_generator.dart';
export 'src/generators/repository_generator.dart';
export 'src/generators/endpoint_generator.dart';
export 'src/generators/test_generator.dart';

import 'dart:io';
import 'package:swagger_dart_generator/src/generators/api_generator.dart';
import 'package:swagger_dart_generator/src/generators/controller_generator.dart';
import 'package:swagger_dart_generator/src/generators/failure_generator.dart';
import 'package:swagger_dart_generator/src/swagger_parser.dart';
import 'package:swagger_dart_generator/src/generators/model_generator.dart';
import 'package:swagger_dart_generator/src/generators/datasource_generator.dart';
import 'package:swagger_dart_generator/src/generators/repository_generator.dart';
import 'package:swagger_dart_generator/src/generators/endpoint_generator.dart';
import 'package:swagger_dart_generator/src/generators/test_generator.dart';

/// Main function to generate complete Flutter project structure from Swagger JSON
Future<void> generateFromSwagger(String packageName, bool replace) async {
  final directory = Directory.current;
  final swaggerJsonPath = '${directory.path}/swagger.json';
  final outputDirectory = '${directory.path}';

  print('🚀 Generating code from $swaggerJsonPath for package "$packageName"...\n');
  print('📁 Output directory: $outputDirectory\n');

  final parsedSwaggerPath = await parseSwaggerFile(swaggerJsonPath, outputDirectory, replace);
  await generateEndpoints(parsedSwaggerPath, packageName, outputDirectory, replace);
  await generateModels(parsedSwaggerPath, packageName, outputDirectory, replace);
  await generateDatasources(parsedSwaggerPath, packageName, outputDirectory, replace);
  await generateRepositories(parsedSwaggerPath, packageName, outputDirectory, replace);
  await generateApi(parsedSwaggerPath, packageName, outputDirectory, replace);
  await generateFailureClasses(outputDirectory);
  await generateIntegrationTests(parsedSwaggerPath, packageName, outputDirectory, replace);
  await generateControllers(parsedSwaggerPath, packageName, outputDirectory, replace);
  // Activate mg_tools
  print('📦 Activating mg_tools...');
  final activateResult = await Process.run('dart', ['pub', 'global', 'activate', 'mg_tools'], runInShell: true, workingDirectory: directory.path);
  if (activateResult.exitCode != 0) {
    print('❌ Failed to activate mg_tools: ${activateResult.stderr}');
  } else {
    print('✅ mg_tools activated successfully');
  }

  // Run mg_tools
  print('🛠️ Running mg_tools...');
  final mgToolsResult = await Process.run('mg_tools', ['--replace'], runInShell: true, workingDirectory: directory.path);
  if (mgToolsResult.exitCode != 0) {
    print('❌ mg_tools failed: ${mgToolsResult.stderr}');
  } else {
    print('✅ mg_tools completed successfully');
    if (mgToolsResult.stdout != null && mgToolsResult.stdout.isNotEmpty) {
      print('📝 mg_tools output: ${mgToolsResult.stdout}');
    }
  }

  // Get dependencies
  print('📥 Getting dependencies...');
  final pubGetResult = await Process.run('dart', ['pub', 'get'], runInShell: true, workingDirectory: directory.path);
  if (pubGetResult.exitCode != 0) {
    print('❌ dart pub get failed: ${pubGetResult.stderr}');
  } else {
    print('✅ Dependencies resolved successfully');
  }

  // Run build runner with detailed logging
  print('🏗️ Running build_runner...');
  print('⏳ This may take a few moments...');

  final buildRunnerResult = await Process.run('dart', ['run', 'build_runner', 'build', '--delete-conflicting-outputs', '--verbose'], runInShell: true, workingDirectory: directory.path);

  // Detailed build runner status
  print('\n📊 Build Runner Status Report:');
  print('─────────────────────────────');
  print('Exit Code: ${buildRunnerResult.exitCode}');

  if (buildRunnerResult.exitCode == 0) {
    print('✅ Build Runner: SUCCESS');
    if (buildRunnerResult.stdout != null && buildRunnerResult.stdout.isNotEmpty) {
      final output = buildRunnerResult.stdout.toString();
      if (output.contains('Succeeded')) {
        final lines = output.split('\n');
        for (final line in lines) {
          if (line.contains('Succeeded') || line.contains('Generated')) {
            print('📄 $line');
          }
        }
      } else {
        print('📝 Build output: ${buildRunnerResult.stdout}');
      }
    }
  } else {
    print('❌ Build Runner: FAILED');
    print('🔍 Error details:');
    if (buildRunnerResult.stderr != null && buildRunnerResult.stderr.isNotEmpty) {
      print('STDERR: ${buildRunnerResult.stderr}');
    }
    if (buildRunnerResult.stdout != null && buildRunnerResult.stdout.isNotEmpty) {
      print('STDOUT: ${buildRunnerResult.stdout}');
    }
  }

  print('\n🎉 All code generation processes completed!');
  print('📁 Files saved in: $outputDirectory');

  // Final summary
  if (buildRunnerResult.exitCode == 0) {
    print('✅ Ready to use! You can now import and use the generated code.');
  } else {
    print('⚠️  Some issues occurred during generation. Check the logs above.');
  }
}
