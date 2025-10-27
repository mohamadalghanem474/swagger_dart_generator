import 'dart:io';

Future<void> generateFailureClasses(String outputDirectory) async {
  final content = '''
abstract class Failure {
  const Failure();
  FailureDetails handle(dynamic e, StackTrace stackTrace);
}

class DefaultFailure extends Failure {
  const DefaultFailure();
  @override
  FailureDetails handle(dynamic e, StackTrace stackTrace) {
    return FailureDetails(message: e.toString(), stackTrace: stackTrace);
  }
}

class FailureDetails {
  final String message;
  final StackTrace stackTrace;
  final bool show;
  final Object? extra;
  const FailureDetails({required this.message, required this.stackTrace, this.show = true, this.extra});
}

''';
  final file = File('$outputDirectory/lib/failure.dart');
  await file.writeAsString(content);
}
