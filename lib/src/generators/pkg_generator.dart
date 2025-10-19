import 'dart:io';

import 'package:swagger_dart_generator/src/utils/keep_file.dart';

Future<bool> generatePkg(String swaggerJsonPath, String outputDir, String packageName, bool replaceAll) async {
  stdout.write('\x1B[1J\x1B[0;0H');
  print('Thank you for using swagger_dart_generator! 🚀\n');
  final outputDirHandle = Directory(outputDir);
  if (!File(swaggerJsonPath).existsSync()) {
    print('❌ swagger.json not found in the current directory!\n');
    return false;
  } else {
    if (replaceAll) {
      outputDirHandle.listSync().forEach((element) {
        final shouldKeep = keepFiles.any((pattern) => element.path.endsWith(pattern));
        if (!shouldKeep) {
          element.deleteSync(recursive: true);
        }
      });
    } else if (File('${outputDir}/pubspec.yaml').existsSync()) {
      print("You have already created a package in this directory. If you want to replace existing package use flag --replace to replace existing package.");
      print(" ");
      print("You can update existing dtos/models without replacing the whole package by using mg_tools. see https://pub.dev/packages/mg_tools for more details.");
      print(" ");
      return false;
    }
  }

  print('⏳ Creating $packageName Dart package...');
  final resultCreate = await Process.run("dart", ['create', '.', "--force", "-t", 'package']);
  final resultAddDevMgTools = await Process.run("dart", ['pub', 'add', '--dev', 'mg_tools']);
  final resultAdd = await Process.run("dart", ['pub', 'add', 'dartz', 'dio', 'freezed_annotation']);
  final resultAddDev = await Process.run("dart", ['pub', 'add', '--dev', 'build_runner', 'flutter_lints', 'freezed', 'json_serializable']);
  Directory('${outputDir}/example').delete(recursive: true);
  Directory('${outputDir}/test').delete(recursive: true);
  Directory('${outputDir}/lib/src').delete(recursive: true);
  if (resultAddDevMgTools.exitCode != 0 || resultCreate.exitCode != 0 || resultAdd.exitCode != 0 || resultAddDev.exitCode != 0) {
    throw Exception('Failed to create package or add dependencies:\n${resultCreate.stdout}\n${resultCreate.stderr}\n${resultAdd.stdout}\n${resultAdd.stderr}\n${resultAddDev.stdout}\n${resultAddDev.stderr}');
  }
  return true;
}
