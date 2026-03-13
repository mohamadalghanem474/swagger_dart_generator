import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';
import 'package:test_output/models/shoppingcart/requests/shoppingcart_select_shipping_option__post_req.dart';
import 'package:test_output/models/shoppingcart/responses/shoppingcart_select_shipping_option__post_res.dart';
import 'package:test_output/models/shoppingcart/requests/shoppingcart_add_product_to_cart_from_catalog__post_req.dart';
import 'package:test_output/models/shoppingcart/responses/shoppingcart_add_product_to_cart_from_catalog__post_res.dart';
import 'package:test_output/models/shoppingcart/requests/shoppingcart_add_product_to_cart_from_details__post_req.dart';
import 'package:test_output/models/shoppingcart/responses/shoppingcart_add_product_to_cart_from_details__post_res.dart';
import 'package:test_output/models/shoppingcart/requests/shoppingcart_add_subscription_plan_to_cart__details__post_req.dart';
import 'package:test_output/models/shoppingcart/responses/shoppingcart_add_subscription_plan_to_cart__details__post_res.dart';
import 'package:test_output/models/shoppingcart/requests/shoppingcart_product_details_attribute_change__put_req.dart';
import 'package:test_output/models/shoppingcart/responses/shoppingcart_product_details_attribute_change__put_res.dart';
import 'package:test_output/models/shoppingcart/responses/shoppingcart_checkout_attribute_change__post_res.dart';
import 'package:test_output/models/shoppingcart/requests/shoppingcart_upload_file_product_attribute__post_req.dart';
import 'package:test_output/models/shoppingcart/responses/shoppingcart_upload_file_product_attribute__post_res.dart';
import 'package:test_output/models/shoppingcart/requests/shoppingcart_upload_file_checkout_attribute__post_req.dart';
import 'package:test_output/models/shoppingcart/responses/shoppingcart_upload_file_checkout_attribute__post_res.dart';
import 'package:test_output/models/shoppingcart/responses/shoppingcart_cart__get_res.dart';
import 'package:test_output/models/shoppingcart/responses/shoppingcart_mini_cart__get_res.dart';
import 'package:test_output/models/shoppingcart/responses/shoppingcart_update_cart__post_res.dart';
import 'package:test_output/models/shoppingcart/requests/shoppingcart_apply_discount_coupon__post_req.dart';
import 'package:test_output/models/shoppingcart/responses/shoppingcart_apply_discount_coupon__post_res.dart';
import 'package:test_output/models/shoppingcart/requests/shoppingcart_apply_subscription_discount_coupon__post_req.dart';
import 'package:test_output/models/shoppingcart/requests/shoppingcart_remove_subscription_discount_coupon__post_req.dart';
import 'package:test_output/models/shoppingcart/requests/shoppingcart_get_cart_order_details__get_req.dart';
import 'package:test_output/models/shoppingcart/requests/shoppingcart_apply_gift_card__post_req.dart';
import 'package:test_output/models/shoppingcart/responses/shoppingcart_apply_gift_card__post_res.dart';
import 'package:test_output/models/shoppingcart/responses/shoppingcart_remove_discount_coupon__post_res.dart';
import 'package:test_output/models/shoppingcart/responses/shoppingcart_remove_gift_card_code__post_res.dart';

abstract class IShoppingcartDataSource {
  Future<SelectShippingOptionPostResponse> selectShippingOptionPost(
    SelectShippingOptionPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<AddProductToCartFromCatalogPostResponse>
      addProductToCartFromCatalogPost(
    AddProductToCartFromCatalogPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<AddProductToCartFromDetailsPostResponse>
      addProductToCartFromDetailsPost(
    AddProductToCartFromDetailsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<AddSubscriptionPlanToCartDetailsPostResponse>
      addSubscriptionPlanToCartDetailsPost(
    AddSubscriptionPlanToCartDetailsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<ProductDetailsAttributeChangePutResponse>
      productDetailsAttributeChangePut(
    ProductDetailsAttributeChangePutRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<CheckoutAttributeChangePostResponse> checkoutAttributeChangePost({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<UploadFileProductAttributePostResponse> uploadFileProductAttributePost(
    UploadFileProductAttributePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<UploadFileCheckoutAttributePostResponse>
      uploadFileCheckoutAttributePost(
    UploadFileCheckoutAttributePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<CartGetResponse> cartGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<MiniCartGetResponse> miniCartGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<UpdateCartPostResponse> updateCartPost({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<ApplyDiscountCouponPostResponse> applyDiscountCouponPost(
    ApplyDiscountCouponPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> applySubscriptionDiscountCouponPost(
    ApplySubscriptionDiscountCouponPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> removeSubscriptionDiscountCouponPost(
    RemoveSubscriptionDiscountCouponPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> getCartOrderDetailsGet(
    GetCartOrderDetailsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<ApplyGiftCardPostResponse> applyGiftCardPost(
    ApplyGiftCardPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<RemoveDiscountCouponPostResponse> removeDiscountCouponPost({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<RemoveGiftCardCodePostResponse> removeGiftCardCodePost({
    CancelToken? cancelToken,
    Options? options,
  });
}

class ShoppingcartDataSourceImpl implements IShoppingcartDataSource {
  ShoppingcartDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<SelectShippingOptionPostResponse> selectShippingOptionPost(
    SelectShippingOptionPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.shoppingcart.selectShippingOptionPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return SelectShippingOptionPostResponse.fromJson(result.data);
  }

  @override
  Future<AddProductToCartFromCatalogPostResponse>
      addProductToCartFromCatalogPost(
    AddProductToCartFromCatalogPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.shoppingcart.addProductToCartFromCatalogPost;
    url = url.replaceAll(
      '{productId}',
      req.productid?.toString() ?? '',
    );
    final result = await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return AddProductToCartFromCatalogPostResponse.fromJson(result.data);
  }

  @override
  Future<AddProductToCartFromDetailsPostResponse>
      addProductToCartFromDetailsPost(
    AddProductToCartFromDetailsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.shoppingcart.addProductToCartFromDetailsPost;
    url = url.replaceAll(
      '{productId}',
      req.productid?.toString() ?? '',
    );
    final result = await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return AddProductToCartFromDetailsPostResponse.fromJson(result.data);
  }

  @override
  Future<AddSubscriptionPlanToCartDetailsPostResponse>
      addSubscriptionPlanToCartDetailsPost(
    AddSubscriptionPlanToCartDetailsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.shoppingcart.addSubscriptionPlanToCartDetailsPost;
    url = url.replaceAll(
      '{productId}',
      req.productid?.toString() ?? '',
    );
    final result = await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return AddSubscriptionPlanToCartDetailsPostResponse.fromJson(result.data);
  }

  @override
  Future<ProductDetailsAttributeChangePutResponse>
      productDetailsAttributeChangePut(
    ProductDetailsAttributeChangePutRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.shoppingcart.productDetailsAttributeChangePut;
    url = url.replaceAll(
      '{productId}',
      req.productid?.toString() ?? '',
    );
    final result = await _dio.put(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return ProductDetailsAttributeChangePutResponse.fromJson(result.data);
  }

  @override
  Future<CheckoutAttributeChangePostResponse> checkoutAttributeChangePost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.shoppingcart.checkoutAttributeChangePost;
    final result = await _dio.post(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return CheckoutAttributeChangePostResponse.fromJson(result.data);
  }

  @override
  Future<UploadFileProductAttributePostResponse> uploadFileProductAttributePost(
    UploadFileProductAttributePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.shoppingcart.uploadFileProductAttributePost;
    url = url.replaceAll(
      '{attributeId}',
      req.attributeid?.toString() ?? '',
    );
    final result = await _dio.post(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return UploadFileProductAttributePostResponse.fromJson(result.data);
  }

  @override
  Future<UploadFileCheckoutAttributePostResponse>
      uploadFileCheckoutAttributePost(
    UploadFileCheckoutAttributePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.shoppingcart.uploadFileCheckoutAttributePost;
    url = url.replaceAll(
      '{attributeId}',
      req.attributeid?.toString() ?? '',
    );
    final result = await _dio.post(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return UploadFileCheckoutAttributePostResponse.fromJson(result.data);
  }

  @override
  Future<CartGetResponse> cartGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.shoppingcart.cartGet;
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return CartGetResponse.fromJson(result.data);
  }

  @override
  Future<MiniCartGetResponse> miniCartGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.shoppingcart.miniCartGet;
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return MiniCartGetResponse.fromJson(result.data);
  }

  @override
  Future<UpdateCartPostResponse> updateCartPost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.shoppingcart.updateCartPost;
    final result = await _dio.post(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return UpdateCartPostResponse.fromJson(result.data);
  }

  @override
  Future<ApplyDiscountCouponPostResponse> applyDiscountCouponPost(
    ApplyDiscountCouponPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.shoppingcart.applyDiscountCouponPost;
    final result = await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return ApplyDiscountCouponPostResponse.fromJson(result.data);
  }

  @override
  Future<void> applySubscriptionDiscountCouponPost(
    ApplySubscriptionDiscountCouponPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.shoppingcart.applySubscriptionDiscountCouponPost;
    await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> removeSubscriptionDiscountCouponPost(
    RemoveSubscriptionDiscountCouponPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.shoppingcart.removeSubscriptionDiscountCouponPost;
    await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> getCartOrderDetailsGet(
    GetCartOrderDetailsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.shoppingcart.getCartOrderDetailsGet;
    await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<ApplyGiftCardPostResponse> applyGiftCardPost(
    ApplyGiftCardPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.shoppingcart.applyGiftCardPost;
    final result = await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return ApplyGiftCardPostResponse.fromJson(result.data);
  }

  @override
  Future<RemoveDiscountCouponPostResponse> removeDiscountCouponPost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.shoppingcart.removeDiscountCouponPost;
    final result = await _dio.post(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return RemoveDiscountCouponPostResponse.fromJson(result.data);
  }

  @override
  Future<RemoveGiftCardCodePostResponse> removeGiftCardCodePost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.shoppingcart.removeGiftCardCodePost;
    final result = await _dio.post(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return RemoveGiftCardCodePostResponse.fromJson(result.data);
  }
}
