import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';
import 'package:test_output/models/common/requests/common_set_language__post_req.dart';
import 'package:test_output/models/common/requests/common_set_currency__post_req.dart';
import 'package:test_output/models/common/requests/common_set_tax_type__post_req.dart';
import 'package:test_output/models/common/responses/common_contact_us__get_res.dart';
import 'package:test_output/models/common/requests/common_contact_us_send__post_req.dart';
import 'package:test_output/models/common/responses/common_contact_us_send__post_res.dart';
import 'package:test_output/models/common/requests/common_contact_vendor__get_req.dart';
import 'package:test_output/models/common/responses/common_contact_vendor__get_res.dart';
import 'package:test_output/models/common/requests/common_contact_vendor_send__post_req.dart';
import 'package:test_output/models/common/responses/common_contact_vendor_send__post_res.dart';
import 'package:test_output/models/common/requests/common_sitemap__post_req.dart';
import 'package:test_output/models/common/responses/common_sitemap__post_res.dart';
import 'package:test_output/models/common/requests/common_sitemap_xml__get_req.dart';
import 'package:test_output/models/common/responses/common_sitemap_xml__get_res.dart';
import 'package:test_output/models/common/requests/common_set_store_theme__get_req.dart';
import 'package:test_output/models/common/responses/common_robots_text_file__get_res.dart';
import 'package:test_output/models/common/requests/common_get_resource__get_req.dart';
import 'package:test_output/models/common/requests/common_search_by_name__get_req.dart';
import 'package:test_output/models/common/responses/common_search_by_name__get_res.dart';

abstract class ICommonDataSource {
  Future<void> setLanguagePost(
    SetLanguagePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> setCurrencyPost(
    SetCurrencyPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> setTaxTypePost(
    SetTaxTypePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<ContactUsGetResponse> contactUsGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<ContactUsSendPostResponse> contactUsSendPost(
    ContactUsSendPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<ContactVendorGetResponse> contactVendorGet(
    ContactVendorGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<ContactVendorSendPostResponse> contactVendorSendPost(
    ContactVendorSendPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<SitemapPostResponse> sitemapPost(
    SitemapPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<SitemapXmlGetResponse> sitemapXmlGet(
    SitemapXmlGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> setStoreThemeGet(
    SetStoreThemeGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> euCookieLawAcceptGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<RobotsTextFileGetResponse> robotsTextFileGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> getResourceGet(
    GetResourceGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<SearchByNameGetResponse> searchByNameGet(
    SearchByNameGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class CommonDataSourceImpl implements ICommonDataSource {
  CommonDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<void> setLanguagePost(
    SetLanguagePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.common.setLanguagePost;
    url = url.replaceAll(
      '{langId}',
      req.langid?.toString() ?? '',
    );
    await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> setCurrencyPost(
    SetCurrencyPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.common.setCurrencyPost;
    url = url.replaceAll(
      '{customerCurrencyId}',
      req.customercurrencyid?.toString() ?? '',
    );
    await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> setTaxTypePost(
    SetTaxTypePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.common.setTaxTypePost;
    await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<ContactUsGetResponse> contactUsGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.common.contactUsGet;
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return ContactUsGetResponse.fromJson(result.data);
  }

  @override
  Future<ContactUsSendPostResponse> contactUsSendPost(
    ContactUsSendPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.common.contactUsSendPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return ContactUsSendPostResponse.fromJson(result.data);
  }

  @override
  Future<ContactVendorGetResponse> contactVendorGet(
    ContactVendorGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.common.contactVendorGet;
    url = url.replaceAll(
      '{vendorId}',
      req.vendorid?.toString() ?? '',
    );
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return ContactVendorGetResponse.fromJson(result.data);
  }

  @override
  Future<ContactVendorSendPostResponse> contactVendorSendPost(
    ContactVendorSendPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.common.contactVendorSendPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return ContactVendorSendPostResponse.fromJson(result.data);
  }

  @override
  Future<SitemapPostResponse> sitemapPost(
    SitemapPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.common.sitemapPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return SitemapPostResponse.fromJson(result.data);
  }

  @override
  Future<SitemapXmlGetResponse> sitemapXmlGet(
    SitemapXmlGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.common.sitemapXmlGet;
    url = url.replaceAll(
      '{id}',
      req.id?.toString() ?? '',
    );
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return SitemapXmlGetResponse.fromJson(result.data);
  }

  @override
  Future<void> setStoreThemeGet(
    SetStoreThemeGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.common.setStoreThemeGet;
    await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> euCookieLawAcceptGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.common.euCookieLawAcceptGet;
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<RobotsTextFileGetResponse> robotsTextFileGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.common.robotsTextFileGet;
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return RobotsTextFileGetResponse.fromJson(result.data);
  }

  @override
  Future<void> getResourceGet(
    GetResourceGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.common.getResourceGet;
    url = url.replaceAll(
      '{languageId}',
      req.languageid?.toString() ?? '',
    );
    await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<SearchByNameGetResponse> searchByNameGet(
    SearchByNameGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.common.searchByNameGet;
    url = url.replaceAll(
      '{languageId}',
      req.languageid?.toString() ?? '',
    );
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return SearchByNameGetResponse.fromJson(result.data);
  }
}
