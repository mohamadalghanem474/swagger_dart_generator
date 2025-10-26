import 'dart:io';

Future<void> generatePkg(String swaggerJsonPath, String outputDir, String packageName) async {
  stdout.write('\x1B[1J\x1B[0;0H');
  print('Thank you for using swagger_dart_generator! 🚀\n');
  if (!File(swaggerJsonPath).existsSync()) {
    print('❌ swagger.json not found in the current directory!\n');
    return;
  }

  print('⏳ Checking Files...\n');
  final resultCreate = await Process.run("dart", ['create', '.', "-t", 'package']);
  if (resultCreate.exitCode != 0) {
    print("You Can Update Specific dto.json And Generate Freezed File Without Replacing All Files.\n");
    print("Please See https://pub.dev/packages/mg_tools For More Details.\n");
    return;
  }
  final resultAddDevMgTools = await Process.run("dart", ['pub', 'add', '--dev', 'mg_tools']);
  final resultAdd = await Process.run("dart", ['pub', 'add', 'dartz', 'dio', 'freezed_annotation']);
  final resultAddDev = await Process.run("dart", ['pub', 'add', '--dev', 'build_runner', 'flutter_lints', 'freezed', 'json_serializable']);
  Directory('${outputDir}/example').delete(recursive: true);
  Directory('${outputDir}/test').delete(recursive: true);
  Directory('${outputDir}/lib/src').delete(recursive: true);
  if (resultAddDevMgTools.exitCode != 0 || resultCreate.exitCode != 0 || resultAdd.exitCode != 0 || resultAddDev.exitCode != 0) {
    throw Exception('Failed to create package or add dependencies:\n${resultAddDevMgTools.stdout}\n${resultCreate.stdout}\n${resultAdd.stderr}\n${resultAddDev.stdout}');
  }
}
