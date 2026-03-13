import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/topic_repository.dart';
import 'package:test_output/models/topic/requests/topic_get_topic_details__get_req.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('Topic Tests', () {
    test('getTopicDetailsGet should return Right', () async {
      final req = GetTopicDetailsGetRequest();
      final result = await api.topic.getTopicDetailsGet(req);
      expect(result.isRight(), isTrue);
    });
  });
}
