import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/newsletter_repository.dart';
import 'package:test_output/models/newsletter/requests/newsletter_subscribe_newsletter__get_req.dart';
import 'package:test_output/models/newsletter/requests/newsletter_subscription_activation__get_req.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('Newsletter Tests', () {
    test('subscribeNewsletterGet should return Right', () async {
      final req = SubscribeNewsletterGetRequest();
      final result = await api.newsletter.subscribeNewsletterGet(req);
      expect(result.isRight(), isTrue);
    });

    test('subscriptionActivationGet should return Right', () async {
      final req = SubscriptionActivationGetRequest();
      final result = await api.newsletter.subscriptionActivationGet(req);
      expect(result.isRight(), isTrue);
    });
  });
}
