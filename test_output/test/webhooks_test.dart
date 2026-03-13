import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/webhooks_repository.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('Webhooks Tests', () {
    test('webhooksPost should return Right', () async {
      final result = await api.webhooks.webhooksPost();
      expect(result.isRight(), isTrue);
    });
  });
}
