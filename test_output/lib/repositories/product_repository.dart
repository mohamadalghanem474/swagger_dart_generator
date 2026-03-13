import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/product_datasource.dart';
import 'package:test_output/models/product/responses/product_get_product_details__get_res.dart';
import 'package:test_output/models/product/responses/product_estimate_shipping__post_res.dart';
import 'package:test_output/models/product/responses/product_product_reviews__get_res.dart';
import 'package:test_output/models/product/responses/product_product_reviews_add__post_res.dart';
import 'package:test_output/models/product/responses/product_set_product_review_helpfulness__post_res.dart';
import 'package:test_output/models/product/responses/product_customer_product_reviews__get_res.dart';
import 'package:test_output/models/product/responses/product_product_email_a_friend__get_res.dart';
import 'package:test_output/models/product/responses/product_product_email_a_friend_send__post_res.dart';
import 'package:test_output/models/product/responses/product_add_product_to_compare_list__get_res.dart';
import 'package:test_output/models/product/responses/product_compare_products__get_res.dart';
import 'package:test_output/models/product/responses/product_get_all_vendor_products__get_res.dart';
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

abstract class IProductRepository {
  Future<Either<FailureDetails, GetProductDetailsGetResponse>>
      getProductDetailsGet(
    GetProductDetailsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, EstimateShippingPostResponse>>
      estimateShippingPost(
    EstimateShippingPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> getProductCombinationsGet(
    GetProductCombinationsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> recentlyViewedProductsGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> newProductsGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> newProductsRssGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, ProductReviewsGetResponse>> productReviewsGet(
    ProductReviewsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, ProductReviewsAddPostResponse>>
      productReviewsAddPost(
    ProductReviewsAddPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, SetProductReviewHelpfulnessPostResponse>>
      setProductReviewHelpfulnessPost(
    SetProductReviewHelpfulnessPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, CustomerProductReviewsGetResponse>>
      customerProductReviewsGet(
    CustomerProductReviewsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, ProductEmailAFriendGetResponse>>
      productEmailAFriendGet(
    ProductEmailAFriendGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, ProductEmailAFriendSendPostResponse>>
      productEmailAFriendSendPost(
    ProductEmailAFriendSendPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, AddProductToCompareListGetResponse>>
      addProductToCompareListGet(
    AddProductToCompareListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> removeProductFromCompareListGet(
    RemoveProductFromCompareListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, CompareProductsGetResponse>>
      compareProductsGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> clearCompareListGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, GetAllVendorProductsGetResponse>>
      getAllVendorProductsGet(
    GetAllVendorProductsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class ProductRepositoryImpl implements IProductRepository {
  ProductRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final IProductDataSource _dataSource;

  final Failure _failure;

  @override
  Future<Either<FailureDetails, GetProductDetailsGetResponse>>
      getProductDetailsGet(
    GetProductDetailsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.getProductDetailsGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, EstimateShippingPostResponse>>
      estimateShippingPost(
    EstimateShippingPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.estimateShippingPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> getProductCombinationsGet(
    GetProductCombinationsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.getProductCombinationsGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> recentlyViewedProductsGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.recentlyViewedProductsGet(
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> newProductsGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.newProductsGet(
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> newProductsRssGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.newProductsRssGet(
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, ProductReviewsGetResponse>> productReviewsGet(
    ProductReviewsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.productReviewsGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, ProductReviewsAddPostResponse>>
      productReviewsAddPost(
    ProductReviewsAddPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.productReviewsAddPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, SetProductReviewHelpfulnessPostResponse>>
      setProductReviewHelpfulnessPost(
    SetProductReviewHelpfulnessPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.setProductReviewHelpfulnessPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, CustomerProductReviewsGetResponse>>
      customerProductReviewsGet(
    CustomerProductReviewsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.customerProductReviewsGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, ProductEmailAFriendGetResponse>>
      productEmailAFriendGet(
    ProductEmailAFriendGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.productEmailAFriendGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, ProductEmailAFriendSendPostResponse>>
      productEmailAFriendSendPost(
    ProductEmailAFriendSendPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.productEmailAFriendSendPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, AddProductToCompareListGetResponse>>
      addProductToCompareListGet(
    AddProductToCompareListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.addProductToCompareListGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> removeProductFromCompareListGet(
    RemoveProductFromCompareListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.removeProductFromCompareListGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, CompareProductsGetResponse>>
      compareProductsGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.compareProductsGet(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> clearCompareListGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.clearCompareListGet(
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, GetAllVendorProductsGetResponse>>
      getAllVendorProductsGet(
    GetAllVendorProductsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.getAllVendorProductsGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
