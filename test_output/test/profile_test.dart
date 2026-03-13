import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/profile_repository.dart';
import 'package:test_output/models/profile/requests/profile_index__get_req.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('Profile Tests', () {
    test('indexGet should return Right', () async {
      final req = IndexGetRequest();
      final result = await api.profile.indexGet(req);
      expect(result.isRight(), isTrue);
    });
  });
}
