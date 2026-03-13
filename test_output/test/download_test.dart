import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/download_repository.dart';
import 'package:test_output/models/download/requests/download_sample__get_req.dart';
import 'package:test_output/models/download/requests/download_get_download__get_req.dart';
import 'package:test_output/models/download/requests/download_get_license__get_req.dart';
import 'package:test_output/models/download/requests/download_get_file_upload__get_req.dart';
import 'package:test_output/models/download/requests/download_get_order_note_file__get_req.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('Download Tests', () {
    test('sampleGet should return Right', () async {
      final req = SampleGetRequest();
      final result = await api.download.sampleGet(req);
      expect(result.isRight(), isTrue);
    });

    test('getDownloadGet should return Right', () async {
      final req = GetDownloadGetRequest();
      final result = await api.download.getDownloadGet(req);
      expect(result.isRight(), isTrue);
    });

    test('getLicenseGet should return Right', () async {
      final req = GetLicenseGetRequest();
      final result = await api.download.getLicenseGet(req);
      expect(result.isRight(), isTrue);
    });

    test('getFileUploadGet should return Right', () async {
      final req = GetFileUploadGetRequest();
      final result = await api.download.getFileUploadGet(req);
      expect(result.isRight(), isTrue);
    });

    test('getOrderNoteFileGet should return Right', () async {
      final req = GetOrderNoteFileGetRequest();
      final result = await api.download.getOrderNoteFileGet(req);
      expect(result.isRight(), isTrue);
    });
  });
}
