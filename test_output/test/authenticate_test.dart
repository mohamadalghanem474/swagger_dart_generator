import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/authenticate_repository.dart';
import 'package:test_output/models/authenticate/requests/authenticate_get_token__post_req.dart';
import 'package:test_output/models/authenticate/requests/authenticate_get_token_for_customer_api__post_req.dart';
import 'package:test_output/models/authenticate/requests/authenticate_get_token_external__post_req.dart';
import 'package:test_output/models/authenticate/requests/authenticate_get_token_by_driver_phone__post_req.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('Authenticate Tests', () {
    test('getTokenPost should return Right', () async {
      final req = GetTokenPostRequest();
      final result = await api.authenticate.getTokenPost(req);
      expect(result.isRight(), isTrue);
    });

    test('getTokenForCustomerApiPost should return Right', () async {
      final req = GetTokenForCustomerApiPostRequest();
      final result = await api.authenticate.getTokenForCustomerApiPost(req);
      expect(result.isRight(), isTrue);
    });

    test('getTokenExternalPost should return Right', () async {
      final req = GetTokenExternalPostRequest();
      final result = await api.authenticate.getTokenExternalPost(req);
      expect(result.isRight(), isTrue);
    });

    test('getTokenByDriverPhonePost should return Right', () async {
      final req = GetTokenByDriverPhonePostRequest();
      final result = await api.authenticate.getTokenByDriverPhonePost(req);
      expect(result.isRight(), isTrue);
    });
  });
}
