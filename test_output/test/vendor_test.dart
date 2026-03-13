import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/vendor_repository.dart';
import 'package:test_output/models/vendor/requests/vendor_apply_vendor_submit__post_req.dart';
import 'package:test_output/models/vendor/requests/vendor_remove_legal_document__delete_req.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('Vendor Tests', () {
    test('applyVendorGet should return Right', () async {
      final result = await api.vendor.applyVendorGet();
      expect(result.isRight(), isTrue);
    });

    test('applyVendorSubmitPost should return Right', () async {
      final req = ApplyVendorSubmitPostRequest();
      final result = await api.vendor.applyVendorSubmitPost(req);
      expect(result.isRight(), isTrue);
    });

    test('infoGet should return Right', () async {
      final result = await api.vendor.infoGet();
      expect(result.isRight(), isTrue);
    });

    test('infoPost should return Right', () async {
      final result = await api.vendor.infoPost();
      expect(result.isRight(), isTrue);
    });

    test('removePictureDelete should return Right', () async {
      final result = await api.vendor.removePictureDelete();
      expect(result.isRight(), isTrue);
    });

    test('removeLegalDocumentDelete should return Right', () async {
      final req = RemoveLegalDocumentDeleteRequest();
      final result = await api.vendor.removeLegalDocumentDelete(req);
      expect(result.isRight(), isTrue);
    });
  });
}
