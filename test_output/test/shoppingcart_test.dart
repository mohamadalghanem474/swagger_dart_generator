import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/shoppingcart_repository.dart';
import 'package:test_output/models/shoppingcart/requests/shoppingcart_select_shipping_option__post_req.dart';
import 'package:test_output/models/shoppingcart/requests/shoppingcart_add_product_to_cart_from_catalog__post_req.dart';
import 'package:test_output/models/shoppingcart/requests/shoppingcart_add_product_to_cart_from_details__post_req.dart';
import 'package:test_output/models/shoppingcart/requests/shoppingcart_add_subscription_plan_to_cart__details__post_req.dart';
import 'package:test_output/models/shoppingcart/requests/shoppingcart_product_details_attribute_change__put_req.dart';
import 'package:test_output/models/shoppingcart/requests/shoppingcart_upload_file_product_attribute__post_req.dart';
import 'package:test_output/models/shoppingcart/requests/shoppingcart_upload_file_checkout_attribute__post_req.dart';
import 'package:test_output/models/shoppingcart/requests/shoppingcart_apply_discount_coupon__post_req.dart';
import 'package:test_output/models/shoppingcart/requests/shoppingcart_apply_subscription_discount_coupon__post_req.dart';
import 'package:test_output/models/shoppingcart/requests/shoppingcart_remove_subscription_discount_coupon__post_req.dart';
import 'package:test_output/models/shoppingcart/requests/shoppingcart_get_cart_order_details__get_req.dart';
import 'package:test_output/models/shoppingcart/requests/shoppingcart_apply_gift_card__post_req.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('Shoppingcart Tests', () {
    test('selectShippingOptionPost should return Right', () async {
      final req = SelectShippingOptionPostRequest();
      final result = await api.shoppingcart.selectShippingOptionPost(req);
      expect(result.isRight(), isTrue);
    });

    test('addProductToCartFromCatalogPost should return Right', () async {
      final req = AddProductToCartFromCatalogPostRequest();
      final result =
          await api.shoppingcart.addProductToCartFromCatalogPost(req);
      expect(result.isRight(), isTrue);
    });

    test('addProductToCartFromDetailsPost should return Right', () async {
      final req = AddProductToCartFromDetailsPostRequest();
      final result =
          await api.shoppingcart.addProductToCartFromDetailsPost(req);
      expect(result.isRight(), isTrue);
    });

    test('addSubscriptionPlanToCartDetailsPost should return Right', () async {
      final req = AddSubscriptionPlanToCartDetailsPostRequest();
      final result =
          await api.shoppingcart.addSubscriptionPlanToCartDetailsPost(req);
      expect(result.isRight(), isTrue);
    });

    test('productDetailsAttributeChangePut should return Right', () async {
      final req = ProductDetailsAttributeChangePutRequest();
      final result =
          await api.shoppingcart.productDetailsAttributeChangePut(req);
      expect(result.isRight(), isTrue);
    });

    test('checkoutAttributeChangePost should return Right', () async {
      final result = await api.shoppingcart.checkoutAttributeChangePost();
      expect(result.isRight(), isTrue);
    });

    test('uploadFileProductAttributePost should return Right', () async {
      final req = UploadFileProductAttributePostRequest();
      final result = await api.shoppingcart.uploadFileProductAttributePost(req);
      expect(result.isRight(), isTrue);
    });

    test('uploadFileCheckoutAttributePost should return Right', () async {
      final req = UploadFileCheckoutAttributePostRequest();
      final result =
          await api.shoppingcart.uploadFileCheckoutAttributePost(req);
      expect(result.isRight(), isTrue);
    });

    test('cartGet should return Right', () async {
      final result = await api.shoppingcart.cartGet();
      expect(result.isRight(), isTrue);
    });

    test('miniCartGet should return Right', () async {
      final result = await api.shoppingcart.miniCartGet();
      expect(result.isRight(), isTrue);
    });

    test('updateCartPost should return Right', () async {
      final result = await api.shoppingcart.updateCartPost();
      expect(result.isRight(), isTrue);
    });

    test('applyDiscountCouponPost should return Right', () async {
      final req = ApplyDiscountCouponPostRequest();
      final result = await api.shoppingcart.applyDiscountCouponPost(req);
      expect(result.isRight(), isTrue);
    });

    test('applySubscriptionDiscountCouponPost should return Right', () async {
      final req = ApplySubscriptionDiscountCouponPostRequest();
      final result =
          await api.shoppingcart.applySubscriptionDiscountCouponPost(req);
      expect(result.isRight(), isTrue);
    });

    test('removeSubscriptionDiscountCouponPost should return Right', () async {
      final req = RemoveSubscriptionDiscountCouponPostRequest();
      final result =
          await api.shoppingcart.removeSubscriptionDiscountCouponPost(req);
      expect(result.isRight(), isTrue);
    });

    test('getCartOrderDetailsGet should return Right', () async {
      final req = GetCartOrderDetailsGetRequest();
      final result = await api.shoppingcart.getCartOrderDetailsGet(req);
      expect(result.isRight(), isTrue);
    });

    test('applyGiftCardPost should return Right', () async {
      final req = ApplyGiftCardPostRequest();
      final result = await api.shoppingcart.applyGiftCardPost(req);
      expect(result.isRight(), isTrue);
    });

    test('removeDiscountCouponPost should return Right', () async {
      final result = await api.shoppingcart.removeDiscountCouponPost();
      expect(result.isRight(), isTrue);
    });

    test('removeGiftCardCodePost should return Right', () async {
      final result = await api.shoppingcart.removeGiftCardCodePost();
      expect(result.isRight(), isTrue);
    });
  });
}
