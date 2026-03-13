import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/scheduletask_repository.dart';
import 'package:test_output/models/scheduletask/requests/scheduletask_run_task__get_req.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('Scheduletask Tests', () {
    test('runTaskGet should return Right', () async {
      final req = RunTaskGetRequest();
      final result = await api.scheduletask.runTaskGet(req);
      expect(result.isRight(), isTrue);
    });
  });
}
