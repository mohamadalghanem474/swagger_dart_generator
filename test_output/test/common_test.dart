import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/common_repository.dart';
import 'package:test_output/models/common/requests/common_set_language__post_req.dart';
import 'package:test_output/models/common/requests/common_set_currency__post_req.dart';
import 'package:test_output/models/common/requests/common_set_tax_type__post_req.dart';
import 'package:test_output/models/common/requests/common_contact_us_send__post_req.dart';
import 'package:test_output/models/common/requests/common_contact_vendor__get_req.dart';
import 'package:test_output/models/common/requests/common_contact_vendor_send__post_req.dart';
import 'package:test_output/models/common/requests/common_sitemap__post_req.dart';
import 'package:test_output/models/common/requests/common_sitemap_xml__get_req.dart';
import 'package:test_output/models/common/requests/common_set_store_theme__get_req.dart';
import 'package:test_output/models/common/requests/common_get_resource__get_req.dart';
import 'package:test_output/models/common/requests/common_search_by_name__get_req.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('Common Tests', () {
    test('setLanguagePost should return Right', () async {
      final req = SetLanguagePostRequest();
      final result = await api.common.setLanguagePost(req);
      expect(result.isRight(), isTrue);
    });

    test('setCurrencyPost should return Right', () async {
      final req = SetCurrencyPostRequest();
      final result = await api.common.setCurrencyPost(req);
      expect(result.isRight(), isTrue);
    });

    test('setTaxTypePost should return Right', () async {
      final req = SetTaxTypePostRequest();
      final result = await api.common.setTaxTypePost(req);
      expect(result.isRight(), isTrue);
    });

    test('contactUsGet should return Right', () async {
      final result = await api.common.contactUsGet();
      expect(result.isRight(), isTrue);
    });

    test('contactUsSendPost should return Right', () async {
      final req = ContactUsSendPostRequest();
      final result = await api.common.contactUsSendPost(req);
      expect(result.isRight(), isTrue);
    });

    test('contactVendorGet should return Right', () async {
      final req = ContactVendorGetRequest();
      final result = await api.common.contactVendorGet(req);
      expect(result.isRight(), isTrue);
    });

    test('contactVendorSendPost should return Right', () async {
      final req = ContactVendorSendPostRequest();
      final result = await api.common.contactVendorSendPost(req);
      expect(result.isRight(), isTrue);
    });

    test('sitemapPost should return Right', () async {
      final req = SitemapPostRequest();
      final result = await api.common.sitemapPost(req);
      expect(result.isRight(), isTrue);
    });

    test('sitemapXmlGet should return Right', () async {
      final req = SitemapXmlGetRequest();
      final result = await api.common.sitemapXmlGet(req);
      expect(result.isRight(), isTrue);
    });

    test('setStoreThemeGet should return Right', () async {
      final req = SetStoreThemeGetRequest();
      final result = await api.common.setStoreThemeGet(req);
      expect(result.isRight(), isTrue);
    });

    test('euCookieLawAcceptGet should return Right', () async {
      final result = await api.common.euCookieLawAcceptGet();
      expect(result.isRight(), isTrue);
    });

    test('robotsTextFileGet should return Right', () async {
      final result = await api.common.robotsTextFileGet();
      expect(result.isRight(), isTrue);
    });

    test('getResourceGet should return Right', () async {
      final req = GetResourceGetRequest();
      final result = await api.common.getResourceGet(req);
      expect(result.isRight(), isTrue);
    });

    test('searchByNameGet should return Right', () async {
      final req = SearchByNameGetRequest();
      final result = await api.common.searchByNameGet(req);
      expect(result.isRight(), isTrue);
    });
  });
}
