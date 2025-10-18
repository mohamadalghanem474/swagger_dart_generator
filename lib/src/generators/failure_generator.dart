import 'dart:io';

Future<void> generateFailureClasses(String outputDirectory) async {
  final content = '''
abstract class Failure {
  final String message;
  Failure(this.message);
  Failure handle(dynamic e, StackTrace stackTrace);
}
''';
  final file = File('$outputDirectory/lib/failure.dart');
  await file.writeAsString(content);
}