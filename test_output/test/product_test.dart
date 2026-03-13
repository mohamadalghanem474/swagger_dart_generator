import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/product_repository.dart';
import 'package:test_output/models/product/requests/product_get_product_details__get_req.dart';
import 'package:test_output/models/product/requests/product_estimate_shipping__post_req.dart';
import 'package:test_output/models/product/requests/product_get_product_combinations__get_req.dart';
import 'package:test_output/models/product/requests/product_product_reviews__get_req.dart';
import 'package:test_output/models/product/requests/product_product_reviews_add__post_req.dart';
import 'package:test_output/models/product/requests/product_set_product_review_helpfulness__post_req.dart';
import 'package:test_output/models/product/requests/product_customer_product_reviews__get_req.dart';
import 'package:test_output/models/product/requests/product_product_email_a_friend__get_req.dart';
import 'package:test_output/models/product/requests/product_product_email_a_friend_send__post_req.dart';
import 'package:test_output/models/product/requests/product_add_product_to_compare_list__get_req.dart';
import 'package:test_output/models/product/requests/product_remove_product_from_compare_list__get_req.dart';
import 'package:test_output/models/product/requests/product_get_all_vendor_products__get_req.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('Product Tests', () {
    test('getProductDetailsGet should return Right', () async {
      final req = GetProductDetailsGetRequest();
      final result = await api.product.getProductDetailsGet(req);
      expect(result.isRight(), isTrue);
    });

    test('estimateShippingPost should return Right', () async {
      final req = EstimateShippingPostRequest();
      final result = await api.product.estimateShippingPost(req);
      expect(result.isRight(), isTrue);
    });

    test('getProductCombinationsGet should return Right', () async {
      final req = GetProductCombinationsGetRequest();
      final result = await api.product.getProductCombinationsGet(req);
      expect(result.isRight(), isTrue);
    });

    test('recentlyViewedProductsGet should return Right', () async {
      final result = await api.product.recentlyViewedProductsGet();
      expect(result.isRight(), isTrue);
    });

    test('newProductsGet should return Right', () async {
      final result = await api.product.newProductsGet();
      expect(result.isRight(), isTrue);
    });

    test('newProductsRssGet should return Right', () async {
      final result = await api.product.newProductsRssGet();
      expect(result.isRight(), isTrue);
    });

    test('productReviewsGet should return Right', () async {
      final req = ProductReviewsGetRequest();
      final result = await api.product.productReviewsGet(req);
      expect(result.isRight(), isTrue);
    });

    test('productReviewsAddPost should return Right', () async {
      final req = ProductReviewsAddPostRequest();
      final result = await api.product.productReviewsAddPost(req);
      expect(result.isRight(), isTrue);
    });

    test('setProductReviewHelpfulnessPost should return Right', () async {
      final req = SetProductReviewHelpfulnessPostRequest();
      final result = await api.product.setProductReviewHelpfulnessPost(req);
      expect(result.isRight(), isTrue);
    });

    test('customerProductReviewsGet should return Right', () async {
      final req = CustomerProductReviewsGetRequest();
      final result = await api.product.customerProductReviewsGet(req);
      expect(result.isRight(), isTrue);
    });

    test('productEmailAFriendGet should return Right', () async {
      final req = ProductEmailAFriendGetRequest();
      final result = await api.product.productEmailAFriendGet(req);
      expect(result.isRight(), isTrue);
    });

    test('productEmailAFriendSendPost should return Right', () async {
      final req = ProductEmailAFriendSendPostRequest();
      final result = await api.product.productEmailAFriendSendPost(req);
      expect(result.isRight(), isTrue);
    });

    test('addProductToCompareListGet should return Right', () async {
      final req = AddProductToCompareListGetRequest();
      final result = await api.product.addProductToCompareListGet(req);
      expect(result.isRight(), isTrue);
    });

    test('removeProductFromCompareListGet should return Right', () async {
      final req = RemoveProductFromCompareListGetRequest();
      final result = await api.product.removeProductFromCompareListGet(req);
      expect(result.isRight(), isTrue);
    });

    test('compareProductsGet should return Right', () async {
      final result = await api.product.compareProductsGet();
      expect(result.isRight(), isTrue);
    });

    test('clearCompareListGet should return Right', () async {
      final result = await api.product.clearCompareListGet();
      expect(result.isRight(), isTrue);
    });

    test('getAllVendorProductsGet should return Right', () async {
      final req = GetAllVendorProductsGetRequest();
      final result = await api.product.getAllVendorProductsGet(req);
      expect(result.isRight(), isTrue);
    });
  });
}
