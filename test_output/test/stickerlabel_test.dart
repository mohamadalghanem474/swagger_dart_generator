import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/stickerlabel_repository.dart';
import 'package:test_output/models/stickerlabel/requests/stickerlabel_list__get_req.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('Stickerlabel Tests', () {
    test('listGet should return Right', () async {
      final req = ListGetRequest();
      final result = await api.stickerlabel.listGet(req);
      expect(result.isRight(), isTrue);
    });
  });
}
