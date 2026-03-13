import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/returnrequest_repository.dart';
import 'package:test_output/models/returnrequest/requests/returnrequest_return_request__get_req.dart';
import 'package:test_output/models/returnrequest/requests/returnrequest_return_request_submit__post_req.dart';
import 'package:test_output/models/returnrequest/requests/returnrequest_upload_file_return_request__post_req.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('Returnrequest Tests', () {
    test('customerReturnRequestsGet should return Right', () async {
      final result = await api.returnrequest.customerReturnRequestsGet();
      expect(result.isRight(), isTrue);
    });

    test('returnRequestGet should return Right', () async {
      final req = ReturnRequestGetRequest();
      final result = await api.returnrequest.returnRequestGet(req);
      expect(result.isRight(), isTrue);
    });

    test('returnRequestSubmitPost should return Right', () async {
      final req = ReturnRequestSubmitPostRequest();
      final result = await api.returnrequest.returnRequestSubmitPost(req);
      expect(result.isRight(), isTrue);
    });

    test('uploadFileReturnRequestPost should return Right', () async {
      final req = UploadFileReturnRequestPostRequest();
      final result = await api.returnrequest.uploadFileReturnRequestPost(req);
      expect(result.isRight(), isTrue);
    });
  });
}
