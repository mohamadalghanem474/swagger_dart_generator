import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/catalog_repository.dart';
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

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('Catalog Tests', () {
    test('getCategoryPost should return Right', () async {
      final req = GetCategoryPostRequest();
      final result = await api.catalog.getCategoryPost(req);
      expect(result.isRight(), isTrue);
    });

    test('getCatalogRootGet should return Right', () async {
      final result = await api.catalog.getCatalogRootGet();
      expect(result.isRight(), isTrue);
    });

    test('getCatalogSubCategoriesGet should return Right', () async {
      final req = GetCatalogSubCategoriesGetRequest();
      final result = await api.catalog.getCatalogSubCategoriesGet(req);
      expect(result.isRight(), isTrue);
    });

    test('getManufacturerPost should return Right', () async {
      final req = GetManufacturerPostRequest();
      final result = await api.catalog.getManufacturerPost(req);
      expect(result.isRight(), isTrue);
    });

    test('getManufacturerProductsPost should return Right', () async {
      final req = GetManufacturerProductsPostRequest();
      final result = await api.catalog.getManufacturerProductsPost(req);
      expect(result.isRight(), isTrue);
    });

    test('manufacturerAllGet should return Right', () async {
      final result = await api.catalog.manufacturerAllGet();
      expect(result.isRight(), isTrue);
    });

    test('getVendorPost should return Right', () async {
      final req = GetVendorPostRequest();
      final result = await api.catalog.getVendorPost(req);
      expect(result.isRight(), isTrue);
    });

    test('getVendorProductsPost should return Right', () async {
      final req = GetVendorProductsPostRequest();
      final result = await api.catalog.getVendorProductsPost(req);
      expect(result.isRight(), isTrue);
    });

    test('vendorAllGet should return Right', () async {
      final result = await api.catalog.vendorAllGet();
      expect(result.isRight(), isTrue);
    });

    test('getProductsByTagPost should return Right', () async {
      final req = GetProductsByTagPostRequest();
      final result = await api.catalog.getProductsByTagPost(req);
      expect(result.isRight(), isTrue);
    });

    test('getTagProductsPost should return Right', () async {
      final req = GetTagProductsPostRequest();
      final result = await api.catalog.getTagProductsPost(req);
      expect(result.isRight(), isTrue);
    });

    test('productTagsAllGet should return Right', () async {
      final result = await api.catalog.productTagsAllGet();
      expect(result.isRight(), isTrue);
    });

    test('searchPost should return Right', () async {
      final req = SearchPostRequest();
      final result = await api.catalog.searchPost(req);
      expect(result.isRight(), isTrue);
    });

    test('searchTermAutoCompleteGet should return Right', () async {
      final req = SearchTermAutoCompleteGetRequest();
      final result = await api.catalog.searchTermAutoCompleteGet(req);
      expect(result.isRight(), isTrue);
    });

    test('searchProductsPost should return Right', () async {
      final req = SearchProductsPostRequest();
      final result = await api.catalog.searchProductsPost(req);
      expect(result.isRight(), isTrue);
    });

    test('smartwareGetCategoryProductsPost should return Right', () async {
      final req = SmartwareGetCategoryProductsPostRequest();
      final result = await api.catalog.smartwareGetCategoryProductsPost(req);
      expect(result.isRight(), isTrue);
    });

    test('smartwareGetCatalogRootWithImagesGet should return Right', () async {
      final result = await api.catalog.smartwareGetCatalogRootWithImagesGet();
      expect(result.isRight(), isTrue);
    });

    test('smartwareGetCatalogSubCategoriesWithImagesGet should return Right',
        () async {
      final req = SmartwareGetCatalogSubCategoriesWithImagesGetRequest();
      final result =
          await api.catalog.smartwareGetCatalogSubCategoriesWithImagesGet(req);
      expect(result.isRight(), isTrue);
    });

    test('smartwareGetCatalogSubCategoriesAsTreeGet should return Right',
        () async {
      final req = SmartwareGetCatalogSubCategoriesAsTreeGetRequest();
      final result =
          await api.catalog.smartwareGetCatalogSubCategoriesAsTreeGet(req);
      expect(result.isRight(), isTrue);
    });
  });
}
