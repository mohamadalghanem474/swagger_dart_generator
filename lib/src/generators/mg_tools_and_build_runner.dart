import 'dart:io';

Future<bool> mgToolsAndBuildRunner() async {
  print('⏳ Running build_runner...');
  final mgToolsResult = await Process.run('dart', ['run', 'mg_tools', '--replace']);
  if (mgToolsResult.exitCode != 0) {
    return false;
  }
  await Process.run('dart', ['pub', 'get']);
  final buildRunnerResult = await Process.run('dart', ['run', 'build_runner', 'build', '--delete-conflicting-outputs']);
  if (buildRunnerResult.exitCode == 0) {
    print('🔥 Ready to use! You can now import and use the generated code.');
  } else {
    print('⚠️  Some issues occurred during generation. Check the logs above.');
    return false;
  }
  return true;
}
