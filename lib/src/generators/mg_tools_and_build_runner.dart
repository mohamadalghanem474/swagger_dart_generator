import 'dart:io';

Future<void> runMgTools(String tempParsedSwaggerPath) async {
  print('⏳ Running mg_tools...');
  final mgToolsResult = await Process.run('dart', ['run', 'mg_tools', '--replace']);
  if (mgToolsResult.exitCode == 0) {
    print('🔥 Ready to use! You can now import and use the generated code.');
  } else {
    print('⚠️  Some issues occurred during generation. Check the logs above.');
  }
  await File(tempParsedSwaggerPath).delete(recursive: true);
}
