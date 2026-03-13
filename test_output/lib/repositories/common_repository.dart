import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/common_datasource.dart';
import 'package:test_output/models/common/responses/common_contact_us__get_res.dart';
import 'package:test_output/models/common/responses/common_contact_us_send__post_res.dart';
import 'package:test_output/models/common/responses/common_contact_vendor__get_res.dart';
import 'package:test_output/models/common/responses/common_contact_vendor_send__post_res.dart';
import 'package:test_output/models/common/responses/common_sitemap__post_res.dart';
import 'package:test_output/models/common/responses/common_sitemap_xml__get_res.dart';
import 'package:test_output/models/common/responses/common_robots_text_file__get_res.dart';
import 'package:test_output/models/common/responses/common_search_by_name__get_res.dart';
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

abstract class ICommonRepository {
  Future<Either<FailureDetails, void>> setLanguagePost(
    SetLanguagePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> setCurrencyPost(
    SetCurrencyPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> setTaxTypePost(
    SetTaxTypePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, ContactUsGetResponse>> contactUsGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, ContactUsSendPostResponse>> contactUsSendPost(
    ContactUsSendPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, ContactVendorGetResponse>> contactVendorGet(
    ContactVendorGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, ContactVendorSendPostResponse>>
      contactVendorSendPost(
    ContactVendorSendPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, SitemapPostResponse>> sitemapPost(
    SitemapPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, SitemapXmlGetResponse>> sitemapXmlGet(
    SitemapXmlGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> setStoreThemeGet(
    SetStoreThemeGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> euCookieLawAcceptGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, RobotsTextFileGetResponse>> robotsTextFileGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> getResourceGet(
    GetResourceGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, SearchByNameGetResponse>> searchByNameGet(
    SearchByNameGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class CommonRepositoryImpl implements ICommonRepository {
  CommonRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final ICommonDataSource _dataSource;

  final Failure _failure;

  @override
  Future<Either<FailureDetails, void>> setLanguagePost(
    SetLanguagePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.setLanguagePost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> setCurrencyPost(
    SetCurrencyPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.setCurrencyPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> setTaxTypePost(
    SetTaxTypePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.setTaxTypePost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, ContactUsGetResponse>> contactUsGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.contactUsGet(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, ContactUsSendPostResponse>> contactUsSendPost(
    ContactUsSendPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.contactUsSendPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, ContactVendorGetResponse>> contactVendorGet(
    ContactVendorGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.contactVendorGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, ContactVendorSendPostResponse>>
      contactVendorSendPost(
    ContactVendorSendPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.contactVendorSendPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, SitemapPostResponse>> sitemapPost(
    SitemapPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.sitemapPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, SitemapXmlGetResponse>> sitemapXmlGet(
    SitemapXmlGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.sitemapXmlGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> setStoreThemeGet(
    SetStoreThemeGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.setStoreThemeGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> euCookieLawAcceptGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.euCookieLawAcceptGet(
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, RobotsTextFileGetResponse>> robotsTextFileGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.robotsTextFileGet(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> getResourceGet(
    GetResourceGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.getResourceGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, SearchByNameGetResponse>> searchByNameGet(
    SearchByNameGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.searchByNameGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
