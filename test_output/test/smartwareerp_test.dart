import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/smartwareerp_repository.dart';
import 'package:test_output/models/smartwareerp/requests/smartwareerp_get_erp_data_by_order_and_operation_id__get_req.dart';
import 'package:test_output/models/smartwareerp/requests/smartwareerp_reset_erp_entity_status__post_req.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('Smartwareerp Tests', () {
    test('getErpDataByOrderAndOperationIdGet should return Right', () async {
      final req = GetErpDataByOrderAndOperationIdGetRequest();
      final result =
          await api.smartwareerp.getErpDataByOrderAndOperationIdGet(req);
      expect(result.isRight(), isTrue);
    });

    test('resetErpEntityStatusPost should return Right', () async {
      final req = ResetErpEntityStatusPostRequest();
      final result = await api.smartwareerp.resetErpEntityStatusPost(req);
      expect(result.isRight(), isTrue);
    });
  });
}
