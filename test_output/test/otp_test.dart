import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/otp_repository.dart';
import 'package:test_output/models/otp/requests/otp_send_otp__post_req.dart';
import 'package:test_output/models/otp/requests/otp_is_otp_expired__post_req.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('Otp Tests', () {
    test('sendOtpPost should return Right', () async {
      final req = SendOtpPostRequest();
      final result = await api.otp.sendOtpPost(req);
      expect(result.isRight(), isTrue);
    });

    test('isOtpExpiredPost should return Right', () async {
      final req = IsOtpExpiredPostRequest();
      final result = await api.otp.isOtpExpiredPost(req);
      expect(result.isRight(), isTrue);
    });
  });
}
