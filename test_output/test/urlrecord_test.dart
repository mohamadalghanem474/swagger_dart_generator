import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/urlrecord_repository.dart';
import 'package:test_output/models/urlrecord/requests/urlrecord_get_by_slug__get_req.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('Urlrecord Tests', () {
    test('getBySlugGet should return Right', () async {
      final req = GetBySlugGetRequest();
      final result = await api.urlrecord.getBySlugGet(req);
      expect(result.isRight(), isTrue);
    });
  });
}
