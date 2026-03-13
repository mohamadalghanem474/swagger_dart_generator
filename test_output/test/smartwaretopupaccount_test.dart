import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/smartwaretopupaccount_repository.dart';
import 'package:test_output/models/smartwaretopupaccount/requests/smartwaretopupaccount_vendor_account_list__get_req.dart';
import 'package:test_output/models/smartwaretopupaccount/requests/smartwaretopupaccount_get_vendor_available_wallets__get_req.dart';
import 'package:test_output/models/smartwaretopupaccount/requests/smartwaretopupaccount_create__post_req.dart';
import 'package:test_output/models/smartwaretopupaccount/requests/smartwaretopupaccount_business_create__post_req.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('Smartwaretopupaccount Tests', () {
    test('customerAccountListGet should return Right', () async {
      final result = await api.smartwaretopupaccount.customerAccountListGet();
      expect(result.isRight(), isTrue);
    });

    test('vendorAccountListGet should return Right', () async {
      final req = VendorAccountListGetRequest();
      final result = await api.smartwaretopupaccount.vendorAccountListGet(req);
      expect(result.isRight(), isTrue);
    });

    test('getVendorAvailableWalletsGet should return Right', () async {
      final req = GetVendorAvailableWalletsGetRequest();
      final result =
          await api.smartwaretopupaccount.getVendorAvailableWalletsGet(req);
      expect(result.isRight(), isTrue);
    });

    test('createPost should return Right', () async {
      final req = CreatePostRequest();
      final result = await api.smartwaretopupaccount.createPost(req);
      expect(result.isRight(), isTrue);
    });

    test('businessCreatePost should return Right', () async {
      final req = BusinessCreatePostRequest();
      final result = await api.smartwaretopupaccount.businessCreatePost(req);
      expect(result.isRight(), isTrue);
    });
  });
}
