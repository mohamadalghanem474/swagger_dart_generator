import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/shoppingcart_datasource.dart';
import 'package:test_output/models/shoppingcart/responses/shoppingcart_select_shipping_option__post_res.dart';
import 'package:test_output/models/shoppingcart/responses/shoppingcart_add_product_to_cart_from_catalog__post_res.dart';
import 'package:test_output/models/shoppingcart/responses/shoppingcart_add_product_to_cart_from_details__post_res.dart';
import 'package:test_output/models/shoppingcart/responses/shoppingcart_add_subscription_plan_to_cart__details__post_res.dart';
import 'package:test_output/models/shoppingcart/responses/shoppingcart_product_details_attribute_change__put_res.dart';
import 'package:test_output/models/shoppingcart/responses/shoppingcart_checkout_attribute_change__post_res.dart';
import 'package:test_output/models/shoppingcart/responses/shoppingcart_upload_file_product_attribute__post_res.dart';
import 'package:test_output/models/shoppingcart/responses/shoppingcart_upload_file_checkout_attribute__post_res.dart';
import 'package:test_output/models/shoppingcart/responses/shoppingcart_cart__get_res.dart';
import 'package:test_output/models/shoppingcart/responses/shoppingcart_mini_cart__get_res.dart';
import 'package:test_output/models/shoppingcart/responses/shoppingcart_update_cart__post_res.dart';
import 'package:test_output/models/shoppingcart/responses/shoppingcart_apply_discount_coupon__post_res.dart';
import 'package:test_output/models/shoppingcart/responses/shoppingcart_apply_gift_card__post_res.dart';
import 'package:test_output/models/shoppingcart/responses/shoppingcart_remove_discount_coupon__post_res.dart';
import 'package:test_output/models/shoppingcart/responses/shoppingcart_remove_gift_card_code__post_res.dart';
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

abstract class IShoppingcartRepository {
  Future<Either<FailureDetails, SelectShippingOptionPostResponse>>
      selectShippingOptionPost(
    SelectShippingOptionPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, AddProductToCartFromCatalogPostResponse>>
      addProductToCartFromCatalogPost(
    AddProductToCartFromCatalogPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, AddProductToCartFromDetailsPostResponse>>
      addProductToCartFromDetailsPost(
    AddProductToCartFromDetailsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, AddSubscriptionPlanToCartDetailsPostResponse>>
      addSubscriptionPlanToCartDetailsPost(
    AddSubscriptionPlanToCartDetailsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, ProductDetailsAttributeChangePutResponse>>
      productDetailsAttributeChangePut(
    ProductDetailsAttributeChangePutRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, CheckoutAttributeChangePostResponse>>
      checkoutAttributeChangePost({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, UploadFileProductAttributePostResponse>>
      uploadFileProductAttributePost(
    UploadFileProductAttributePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, UploadFileCheckoutAttributePostResponse>>
      uploadFileCheckoutAttributePost(
    UploadFileCheckoutAttributePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, CartGetResponse>> cartGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, MiniCartGetResponse>> miniCartGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, UpdateCartPostResponse>> updateCartPost({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, ApplyDiscountCouponPostResponse>>
      applyDiscountCouponPost(
    ApplyDiscountCouponPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> applySubscriptionDiscountCouponPost(
    ApplySubscriptionDiscountCouponPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> removeSubscriptionDiscountCouponPost(
    RemoveSubscriptionDiscountCouponPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> getCartOrderDetailsGet(
    GetCartOrderDetailsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, ApplyGiftCardPostResponse>> applyGiftCardPost(
    ApplyGiftCardPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, RemoveDiscountCouponPostResponse>>
      removeDiscountCouponPost({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, RemoveGiftCardCodePostResponse>>
      removeGiftCardCodePost({
    CancelToken? cancelToken,
    Options? options,
  });
}

class ShoppingcartRepositoryImpl implements IShoppingcartRepository {
  ShoppingcartRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final IShoppingcartDataSource _dataSource;

  final Failure _failure;

  @override
  Future<Either<FailureDetails, SelectShippingOptionPostResponse>>
      selectShippingOptionPost(
    SelectShippingOptionPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.selectShippingOptionPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, AddProductToCartFromCatalogPostResponse>>
      addProductToCartFromCatalogPost(
    AddProductToCartFromCatalogPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.addProductToCartFromCatalogPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, AddProductToCartFromDetailsPostResponse>>
      addProductToCartFromDetailsPost(
    AddProductToCartFromDetailsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.addProductToCartFromDetailsPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, AddSubscriptionPlanToCartDetailsPostResponse>>
      addSubscriptionPlanToCartDetailsPost(
    AddSubscriptionPlanToCartDetailsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.addSubscriptionPlanToCartDetailsPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, ProductDetailsAttributeChangePutResponse>>
      productDetailsAttributeChangePut(
    ProductDetailsAttributeChangePutRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.productDetailsAttributeChangePut(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, CheckoutAttributeChangePostResponse>>
      checkoutAttributeChangePost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.checkoutAttributeChangePost(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, UploadFileProductAttributePostResponse>>
      uploadFileProductAttributePost(
    UploadFileProductAttributePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.uploadFileProductAttributePost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, UploadFileCheckoutAttributePostResponse>>
      uploadFileCheckoutAttributePost(
    UploadFileCheckoutAttributePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.uploadFileCheckoutAttributePost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, CartGetResponse>> cartGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result =
          await _dataSource.cartGet(cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, MiniCartGetResponse>> miniCartGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.miniCartGet(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, UpdateCartPostResponse>> updateCartPost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.updateCartPost(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, ApplyDiscountCouponPostResponse>>
      applyDiscountCouponPost(
    ApplyDiscountCouponPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.applyDiscountCouponPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> applySubscriptionDiscountCouponPost(
    ApplySubscriptionDiscountCouponPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.applySubscriptionDiscountCouponPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> removeSubscriptionDiscountCouponPost(
    RemoveSubscriptionDiscountCouponPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.removeSubscriptionDiscountCouponPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> getCartOrderDetailsGet(
    GetCartOrderDetailsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.getCartOrderDetailsGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, ApplyGiftCardPostResponse>> applyGiftCardPost(
    ApplyGiftCardPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.applyGiftCardPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, RemoveDiscountCouponPostResponse>>
      removeDiscountCouponPost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.removeDiscountCouponPost(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, RemoveGiftCardCodePostResponse>>
      removeGiftCardCodePost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.removeGiftCardCodePost(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
