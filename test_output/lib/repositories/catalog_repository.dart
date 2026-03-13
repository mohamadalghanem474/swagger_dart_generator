import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/catalog_datasource.dart';
import 'package:test_output/models/catalog/responses/catalog_get_category__post_res.dart';
import 'package:test_output/models/catalog/responses/catalog_get_manufacturer__post_res.dart';
import 'package:test_output/models/catalog/responses/catalog_get_manufacturer_products__post_res.dart';
import 'package:test_output/models/catalog/responses/catalog_get_vendor__post_res.dart';
import 'package:test_output/models/catalog/responses/catalog_get_vendor_products__post_res.dart';
import 'package:test_output/models/catalog/responses/catalog_get_products_by_tag__post_res.dart';
import 'package:test_output/models/catalog/responses/catalog_get_tag_products__post_res.dart';
import 'package:test_output/models/catalog/responses/catalog_product_tags_all__get_res.dart';
import 'package:test_output/models/catalog/responses/catalog_search__post_res.dart';
import 'package:test_output/models/catalog/responses/catalog_search_products__post_res.dart';
import 'package:test_output/models/catalog/responses/catalog_smartware_get_category_products__post_res.dart';
import 'package:test_output/models/catalog/requests/catalog_get_category__post_req.dart';
import 'package:test_output/models/catalog/requests/catalog_get_catalog_sub_categories__get_req.dart';
import 'package:test_output/models/catalog/requests/catalog_get_manufacturer__post_req.dart';
import 'package:test_output/models/catalog/requests/catalog_get_manufacturer_products__post_req.dart';
import 'package:test_output/models/catalog/requests/catalog_get_vendor__post_req.dart';
import 'package:test_output/models/catalog/requests/catalog_get_vendor_products__post_req.dart';
import 'package:test_output/models/catalog/requests/catalog_get_products_by_tag__post_req.dart';
import 'package:test_output/models/catalog/requests/catalog_get_tag_products__post_req.dart';
import 'package:test_output/models/catalog/requests/catalog_search__post_req.dart';
import 'package:test_output/models/catalog/requests/catalog_search_term_auto_complete__get_req.dart';
import 'package:test_output/models/catalog/requests/catalog_search_products__post_req.dart';
import 'package:test_output/models/catalog/requests/catalog_smartware_get_category_products__post_req.dart';
import 'package:test_output/models/catalog/requests/catalog_smartware_get_catalog_sub_categories_with_images__get_req.dart';
import 'package:test_output/models/catalog/requests/catalog_smartware_get_catalog_sub_categories_as_tree__get_req.dart';

abstract class ICatalogRepository {
  Future<Either<FailureDetails, GetCategoryPostResponse>> getCategoryPost(
    GetCategoryPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> getCatalogRootGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> getCatalogSubCategoriesGet(
    GetCatalogSubCategoriesGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, GetManufacturerPostResponse>>
      getManufacturerPost(
    GetManufacturerPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, GetManufacturerProductsPostResponse>>
      getManufacturerProductsPost(
    GetManufacturerProductsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> manufacturerAllGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, GetVendorPostResponse>> getVendorPost(
    GetVendorPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, GetVendorProductsPostResponse>>
      getVendorProductsPost(
    GetVendorProductsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> vendorAllGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, GetProductsByTagPostResponse>>
      getProductsByTagPost(
    GetProductsByTagPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, GetTagProductsPostResponse>> getTagProductsPost(
    GetTagProductsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, ProductTagsAllGetResponse>> productTagsAllGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, SearchPostResponse>> searchPost(
    SearchPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> searchTermAutoCompleteGet(
    SearchTermAutoCompleteGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, SearchProductsPostResponse>> searchProductsPost(
    SearchProductsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, SmartwareGetCategoryProductsPostResponse>>
      smartwareGetCategoryProductsPost(
    SmartwareGetCategoryProductsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> smartwareGetCatalogRootWithImagesGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>>
      smartwareGetCatalogSubCategoriesWithImagesGet(
    SmartwareGetCatalogSubCategoriesWithImagesGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>>
      smartwareGetCatalogSubCategoriesAsTreeGet(
    SmartwareGetCatalogSubCategoriesAsTreeGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class CatalogRepositoryImpl implements ICatalogRepository {
  CatalogRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final ICatalogDataSource _dataSource;

  final Failure _failure;

  @override
  Future<Either<FailureDetails, GetCategoryPostResponse>> getCategoryPost(
    GetCategoryPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.getCategoryPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> getCatalogRootGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.getCatalogRootGet(
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> getCatalogSubCategoriesGet(
    GetCatalogSubCategoriesGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.getCatalogSubCategoriesGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, GetManufacturerPostResponse>>
      getManufacturerPost(
    GetManufacturerPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.getManufacturerPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, GetManufacturerProductsPostResponse>>
      getManufacturerProductsPost(
    GetManufacturerProductsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.getManufacturerProductsPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> manufacturerAllGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.manufacturerAllGet(
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, GetVendorPostResponse>> getVendorPost(
    GetVendorPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.getVendorPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, GetVendorProductsPostResponse>>
      getVendorProductsPost(
    GetVendorProductsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.getVendorProductsPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> vendorAllGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.vendorAllGet(
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, GetProductsByTagPostResponse>>
      getProductsByTagPost(
    GetProductsByTagPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.getProductsByTagPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, GetTagProductsPostResponse>> getTagProductsPost(
    GetTagProductsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.getTagProductsPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, ProductTagsAllGetResponse>> productTagsAllGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.productTagsAllGet(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, SearchPostResponse>> searchPost(
    SearchPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.searchPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> searchTermAutoCompleteGet(
    SearchTermAutoCompleteGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.searchTermAutoCompleteGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, SearchProductsPostResponse>> searchProductsPost(
    SearchProductsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.searchProductsPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, SmartwareGetCategoryProductsPostResponse>>
      smartwareGetCategoryProductsPost(
    SmartwareGetCategoryProductsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.smartwareGetCategoryProductsPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> smartwareGetCatalogRootWithImagesGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.smartwareGetCatalogRootWithImagesGet(
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>>
      smartwareGetCatalogSubCategoriesWithImagesGet(
    SmartwareGetCatalogSubCategoriesWithImagesGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.smartwareGetCatalogSubCategoriesWithImagesGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>>
      smartwareGetCatalogSubCategoriesAsTreeGet(
    SmartwareGetCatalogSubCategoriesAsTreeGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.smartwareGetCatalogSubCategoriesAsTreeGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
