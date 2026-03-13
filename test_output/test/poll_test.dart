import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/poll_repository.dart';
import 'package:test_output/models/poll/requests/poll_vote__get_req.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('Poll Tests', () {
    test('voteGet should return Right', () async {
      final req = VoteGetRequest();
      final result = await api.poll.voteGet(req);
      expect(result.isRight(), isTrue);
    });
  });
}
