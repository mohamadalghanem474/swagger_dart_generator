abstract class Failure {
  final String message;
  Failure(this.message);
  Failure handle(dynamic e, StackTrace stackTrace);
}
