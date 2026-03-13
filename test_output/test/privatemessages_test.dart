import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/privatemessages_repository.dart';
import 'package:test_output/models/privatemessages/requests/privatemessages_index__get_req.dart';
import 'package:test_output/models/privatemessages/requests/privatemessages_send_p_m__get_req.dart';
import 'package:test_output/models/privatemessages/requests/privatemessages_send_p_m__post_req.dart';
import 'package:test_output/models/privatemessages/requests/privatemessages_view_p_m__get_req.dart';
import 'package:test_output/models/privatemessages/requests/privatemessages_delete_p_m__delete_req.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('Privatemessages Tests', () {
    test('indexGet should return Right', () async {
      final req = IndexGetRequest();
      final result = await api.privatemessages.indexGet(req);
      expect(result.isRight(), isTrue);
    });

    test('deleteInboxPMPost should return Right', () async {
      final result = await api.privatemessages.deleteInboxPMPost();
      expect(result.isRight(), isTrue);
    });

    test('markUnreadPost should return Right', () async {
      final result = await api.privatemessages.markUnreadPost();
      expect(result.isRight(), isTrue);
    });

    test('deleteSentPMPost should return Right', () async {
      final result = await api.privatemessages.deleteSentPMPost();
      expect(result.isRight(), isTrue);
    });

    test('sendPMGet should return Right', () async {
      final req = SendPMGetRequest();
      final result = await api.privatemessages.sendPMGet(req);
      expect(result.isRight(), isTrue);
    });

    test('sendPMPost should return Right', () async {
      final req = SendPMPostRequest();
      final result = await api.privatemessages.sendPMPost(req);
      expect(result.isRight(), isTrue);
    });

    test('viewPMGet should return Right', () async {
      final req = ViewPMGetRequest();
      final result = await api.privatemessages.viewPMGet(req);
      expect(result.isRight(), isTrue);
    });

    test('deletePMDelete should return Right', () async {
      final req = DeletePMDeleteRequest();
      final result = await api.privatemessages.deletePMDelete(req);
      expect(result.isRight(), isTrue);
    });
  });
}
