import 'dart:io';

Future mgToolsAndBuildRunner() async {
  print('⏳ Running build_runner...');
  await Process.run('dart', ['pub', 'global', 'activate', 'mg_tools']);
  await Process.run('mg_tools', ['--replace']);
  await Process.run('dart', ['pub', 'get']);
  final buildRunnerResult = await Process.run('dart', ['run', 'build_runner', 'build', '--delete-conflicting-outputs']);
  if (buildRunnerResult.exitCode == 0) {
    print('🔥 Ready to use! You can now import and use the generated code.');
  } else {
    print('⚠️  Some issues occurred during generation. Check the logs above.');
  }
}
