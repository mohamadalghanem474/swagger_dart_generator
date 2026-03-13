import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/webhook_repository.dart';
import 'package:test_output/models/webhook/requests/webhook_create_webhook__post_req.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('Webhook Tests', () {
    test('createWebhookPost should return Right', () async {
      final req = CreateWebhookPostRequest();
      final result = await api.webhook.createWebhookPost(req);
      expect(result.isRight(), isTrue);
    });
  });
}
