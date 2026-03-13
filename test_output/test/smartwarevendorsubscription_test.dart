import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/smartwarevendorsubscription_repository.dart';
import 'package:test_output/models/smartwarevendorsubscription/requests/smartwarevendorsubscription_vendor_subscription_custom_attr_by_system_name__get_req.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('Smartwarevendorsubscription Tests', () {
    test('companyProfileGet should return Right', () async {
      final result = await api.smartwarevendorsubscription.companyProfileGet();
      expect(result.isRight(), isTrue);
    });

    test('listGet should return Right', () async {
      final result = await api.smartwarevendorsubscription.listGet();
      expect(result.isRight(), isTrue);
    });

    test('vendorSubscriptionCustomAttrGet should return Right', () async {
      final result = await api.smartwarevendorsubscription
          .vendorSubscriptionCustomAttrGet();
      expect(result.isRight(), isTrue);
    });

    test('vendorSubscriptionCustomAttrBySystemNameGet should return Right',
        () async {
      final req = VendorSubscriptionCustomAttrBySystemNameGetRequest();
      final result = await api.smartwarevendorsubscription
          .vendorSubscriptionCustomAttrBySystemNameGet(req);
      expect(result.isRight(), isTrue);
    });
  });
}
