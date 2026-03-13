import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/backinstocksubscription_repository.dart';
import 'package:test_output/models/backinstocksubscription/requests/backinstocksubscription_subscribe_popup__get_req.dart';
import 'package:test_output/models/backinstocksubscription/requests/backinstocksubscription_subscribe_popup_p_o_s_t__post_req.dart';
import 'package:test_output/models/backinstocksubscription/requests/backinstocksubscription_customer_subscriptions__get_req.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('Backinstocksubscription Tests', () {
    test('subscribePopupGet should return Right', () async {
      final req = SubscribePopupGetRequest();
      final result = await api.backinstocksubscription.subscribePopupGet(req);
      expect(result.isRight(), isTrue);
    });

    test('subscribePopupPOSTPost should return Right', () async {
      final req = SubscribePopupPOSTPostRequest();
      final result =
          await api.backinstocksubscription.subscribePopupPOSTPost(req);
      expect(result.isRight(), isTrue);
    });

    test('customerSubscriptionsGet should return Right', () async {
      final req = CustomerSubscriptionsGetRequest();
      final result =
          await api.backinstocksubscription.customerSubscriptionsGet(req);
      expect(result.isRight(), isTrue);
    });

    test('customerSubscriptionsPOSTPost should return Right', () async {
      final result =
          await api.backinstocksubscription.customerSubscriptionsPOSTPost();
      expect(result.isRight(), isTrue);
    });
  });
}
