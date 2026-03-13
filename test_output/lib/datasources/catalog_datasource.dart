import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';
import 'package:test_output/models/catalog/requests/catalog_get_category__post_req.dart';
import 'package:test_output/models/catalog/responses/catalog_get_category__post_res.dart';
import 'package:test_output/models/catalog/requests/catalog_get_catalog_sub_categories__get_req.dart';
import 'package:test_output/models/catalog/requests/catalog_get_manufacturer__post_req.dart';
import 'package:test_output/models/catalog/responses/catalog_get_manufacturer__post_res.dart';
import 'package:test_output/models/catalog/requests/catalog_get_manufacturer_products__post_req.dart';
import 'package:test_output/models/catalog/responses/catalog_get_manufacturer_products__post_res.dart';
import 'package:test_output/models/catalog/requests/catalog_get_vendor__post_req.dart';
import 'package:test_output/models/catalog/responses/catalog_get_vendor__post_res.dart';
import 'package:test_output/models/catalog/requests/catalog_get_vendor_products__post_req.dart';
import 'package:test_output/models/catalog/responses/catalog_get_vendor_products__post_res.dart';
import 'package:test_output/models/catalog/requests/catalog_get_products_by_tag__post_req.dart';
import 'package:test_output/models/catalog/responses/catalog_get_products_by_tag__post_res.dart';
import 'package:test_output/models/catalog/requests/catalog_get_tag_products__post_req.dart';
import 'package:test_output/models/catalog/responses/catalog_get_tag_products__post_res.dart';
import 'package:test_output/models/catalog/responses/catalog_product_tags_all__get_res.dart';
import 'package:test_output/models/catalog/requests/catalog_search__post_req.dart';
import 'package:test_output/models/catalog/responses/catalog_search__post_res.dart';
import 'package:test_output/models/catalog/requests/catalog_search_term_auto_complete__get_req.dart';
import 'package:test_output/models/catalog/requests/catalog_search_products__post_req.dart';
import 'package:test_output/models/catalog/responses/catalog_search_products__post_res.dart';
import 'package:test_output/models/catalog/requests/catalog_smartware_get_category_products__post_req.dart';
import 'package:test_output/models/catalog/responses/catalog_smartware_get_category_products__post_res.dart';
import 'package:test_output/models/catalog/requests/catalog_smartware_get_catalog_sub_categories_with_images__get_req.dart';
import 'package:test_output/models/catalog/requests/catalog_smartware_get_catalog_sub_categories_as_tree__get_req.dart';

abstract class ICatalogDataSource {
  Future<GetCategoryPostResponse> getCategoryPost(
    GetCategoryPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> getCatalogRootGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> getCatalogSubCategoriesGet(
    GetCatalogSubCategoriesGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<GetManufacturerPostResponse> getManufacturerPost(
    GetManufacturerPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<GetManufacturerProductsPostResponse> getManufacturerProductsPost(
    GetManufacturerProductsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> manufacturerAllGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<GetVendorPostResponse> getVendorPost(
    GetVendorPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<GetVendorProductsPostResponse> getVendorProductsPost(
    GetVendorProductsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> vendorAllGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<GetProductsByTagPostResponse> getProductsByTagPost(
    GetProductsByTagPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<GetTagProductsPostResponse> getTagProductsPost(
    GetTagProductsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<ProductTagsAllGetResponse> productTagsAllGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<SearchPostResponse> searchPost(
    SearchPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> searchTermAutoCompleteGet(
    SearchTermAutoCompleteGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<SearchProductsPostResponse> searchProductsPost(
    SearchProductsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<SmartwareGetCategoryProductsPostResponse>
      smartwareGetCategoryProductsPost(
    SmartwareGetCategoryProductsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> smartwareGetCatalogRootWithImagesGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> smartwareGetCatalogSubCategoriesWithImagesGet(
    SmartwareGetCatalogSubCategoriesWithImagesGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> smartwareGetCatalogSubCategoriesAsTreeGet(
    SmartwareGetCatalogSubCategoriesAsTreeGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class CatalogDataSourceImpl implements ICatalogDataSource {
  CatalogDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<GetCategoryPostResponse> getCategoryPost(
    GetCategoryPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.catalog.getCategoryPost;
    url = url.replaceAll(
      '{categoryId}',
      req.categoryid?.toString() ?? '',
    );
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return GetCategoryPostResponse.fromJson(result.data);
  }

  @override
  Future<void> getCatalogRootGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.catalog.getCatalogRootGet;
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> getCatalogSubCategoriesGet(
    GetCatalogSubCategoriesGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.catalog.getCatalogSubCategoriesGet;
    url = url.replaceAll(
      '{id}',
      req.id?.toString() ?? '',
    );
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<GetManufacturerPostResponse> getManufacturerPost(
    GetManufacturerPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.catalog.getManufacturerPost;
    url = url.replaceAll(
      '{manufacturerId}',
      req.manufacturerid?.toString() ?? '',
    );
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return GetManufacturerPostResponse.fromJson(result.data);
  }

  @override
  Future<GetManufacturerProductsPostResponse> getManufacturerProductsPost(
    GetManufacturerProductsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.catalog.getManufacturerProductsPost;
    url = url.replaceAll(
      '{manufacturerId}',
      req.manufacturerid?.toString() ?? '',
    );
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return GetManufacturerProductsPostResponse.fromJson(result.data);
  }

  @override
  Future<void> manufacturerAllGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.catalog.manufacturerAllGet;
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<GetVendorPostResponse> getVendorPost(
    GetVendorPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.catalog.getVendorPost;
    url = url.replaceAll(
      '{vendorId}',
      req.vendorid?.toString() ?? '',
    );
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return GetVendorPostResponse.fromJson(result.data);
  }

  @override
  Future<GetVendorProductsPostResponse> getVendorProductsPost(
    GetVendorProductsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.catalog.getVendorProductsPost;
    url = url.replaceAll(
      '{vendorId}',
      req.vendorid?.toString() ?? '',
    );
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return GetVendorProductsPostResponse.fromJson(result.data);
  }

  @override
  Future<void> vendorAllGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.catalog.vendorAllGet;
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<GetProductsByTagPostResponse> getProductsByTagPost(
    GetProductsByTagPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.catalog.getProductsByTagPost;
    url = url.replaceAll(
      '{productTagId}',
      req.producttagid?.toString() ?? '',
    );
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return GetProductsByTagPostResponse.fromJson(result.data);
  }

  @override
  Future<GetTagProductsPostResponse> getTagProductsPost(
    GetTagProductsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.catalog.getTagProductsPost;
    url = url.replaceAll(
      '{productTagId}',
      req.producttagid?.toString() ?? '',
    );
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return GetTagProductsPostResponse.fromJson(result.data);
  }

  @override
  Future<ProductTagsAllGetResponse> productTagsAllGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.catalog.productTagsAllGet;
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return ProductTagsAllGetResponse.fromJson(result.data);
  }

  @override
  Future<SearchPostResponse> searchPost(
    SearchPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.catalog.searchPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return SearchPostResponse.fromJson(result.data);
  }

  @override
  Future<void> searchTermAutoCompleteGet(
    SearchTermAutoCompleteGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.catalog.searchTermAutoCompleteGet;
    await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<SearchProductsPostResponse> searchProductsPost(
    SearchProductsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.catalog.searchProductsPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return SearchProductsPostResponse.fromJson(result.data);
  }

  @override
  Future<SmartwareGetCategoryProductsPostResponse>
      smartwareGetCategoryProductsPost(
    SmartwareGetCategoryProductsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.catalog.smartwareGetCategoryProductsPost;
    url = url.replaceAll(
      '{categoryId}',
      req.categoryid?.toString() ?? '',
    );
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return SmartwareGetCategoryProductsPostResponse.fromJson(result.data);
  }

  @override
  Future<void> smartwareGetCatalogRootWithImagesGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.catalog.smartwareGetCatalogRootWithImagesGet;
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> smartwareGetCatalogSubCategoriesWithImagesGet(
    SmartwareGetCatalogSubCategoriesWithImagesGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.catalog.smartwareGetCatalogSubCategoriesWithImagesGet;
    url = url.replaceAll(
      '{id}',
      req.id?.toString() ?? '',
    );
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> smartwareGetCatalogSubCategoriesAsTreeGet(
    SmartwareGetCatalogSubCategoriesAsTreeGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.catalog.smartwareGetCatalogSubCategoriesAsTreeGet;
    url = url.replaceAll(
      '{id}',
      req.id?.toString() ?? '',
    );
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }
}
