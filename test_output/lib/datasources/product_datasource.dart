import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';
import 'package:test_output/models/product/requests/product_get_product_details__get_req.dart';
import 'package:test_output/models/product/responses/product_get_product_details__get_res.dart';
import 'package:test_output/models/product/requests/product_estimate_shipping__post_req.dart';
import 'package:test_output/models/product/responses/product_estimate_shipping__post_res.dart';
import 'package:test_output/models/product/requests/product_get_product_combinations__get_req.dart';
import 'package:test_output/models/product/requests/product_product_reviews__get_req.dart';
import 'package:test_output/models/product/responses/product_product_reviews__get_res.dart';
import 'package:test_output/models/product/requests/product_product_reviews_add__post_req.dart';
import 'package:test_output/models/product/responses/product_product_reviews_add__post_res.dart';
import 'package:test_output/models/product/requests/product_set_product_review_helpfulness__post_req.dart';
import 'package:test_output/models/product/responses/product_set_product_review_helpfulness__post_res.dart';
import 'package:test_output/models/product/requests/product_customer_product_reviews__get_req.dart';
import 'package:test_output/models/product/responses/product_customer_product_reviews__get_res.dart';
import 'package:test_output/models/product/requests/product_product_email_a_friend__get_req.dart';
import 'package:test_output/models/product/responses/product_product_email_a_friend__get_res.dart';
import 'package:test_output/models/product/requests/product_product_email_a_friend_send__post_req.dart';
import 'package:test_output/models/product/responses/product_product_email_a_friend_send__post_res.dart';
import 'package:test_output/models/product/requests/product_add_product_to_compare_list__get_req.dart';
import 'package:test_output/models/product/responses/product_add_product_to_compare_list__get_res.dart';
import 'package:test_output/models/product/requests/product_remove_product_from_compare_list__get_req.dart';
import 'package:test_output/models/product/responses/product_compare_products__get_res.dart';
import 'package:test_output/models/product/requests/product_get_all_vendor_products__get_req.dart';
import 'package:test_output/models/product/responses/product_get_all_vendor_products__get_res.dart';

abstract class IProductDataSource {
  Future<GetProductDetailsGetResponse> getProductDetailsGet(
    GetProductDetailsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<EstimateShippingPostResponse> estimateShippingPost(
    EstimateShippingPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> getProductCombinationsGet(
    GetProductCombinationsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> recentlyViewedProductsGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> newProductsGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> newProductsRssGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<ProductReviewsGetResponse> productReviewsGet(
    ProductReviewsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<ProductReviewsAddPostResponse> productReviewsAddPost(
    ProductReviewsAddPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<SetProductReviewHelpfulnessPostResponse>
      setProductReviewHelpfulnessPost(
    SetProductReviewHelpfulnessPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<CustomerProductReviewsGetResponse> customerProductReviewsGet(
    CustomerProductReviewsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<ProductEmailAFriendGetResponse> productEmailAFriendGet(
    ProductEmailAFriendGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<ProductEmailAFriendSendPostResponse> productEmailAFriendSendPost(
    ProductEmailAFriendSendPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<AddProductToCompareListGetResponse> addProductToCompareListGet(
    AddProductToCompareListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> removeProductFromCompareListGet(
    RemoveProductFromCompareListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<CompareProductsGetResponse> compareProductsGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> clearCompareListGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<GetAllVendorProductsGetResponse> getAllVendorProductsGet(
    GetAllVendorProductsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class ProductDataSourceImpl implements IProductDataSource {
  ProductDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<GetProductDetailsGetResponse> getProductDetailsGet(
    GetProductDetailsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.product.getProductDetailsGet;
    url = url.replaceAll(
      '{productId}',
      req.productid?.toString() ?? '',
    );
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return GetProductDetailsGetResponse.fromJson(result.data);
  }

  @override
  Future<EstimateShippingPostResponse> estimateShippingPost(
    EstimateShippingPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.product.estimateShippingPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return EstimateShippingPostResponse.fromJson(result.data);
  }

  @override
  Future<void> getProductCombinationsGet(
    GetProductCombinationsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.product.getProductCombinationsGet;
    url = url.replaceAll(
      '{productId}',
      req.productid?.toString() ?? '',
    );
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> recentlyViewedProductsGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.product.recentlyViewedProductsGet;
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> newProductsGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.product.newProductsGet;
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> newProductsRssGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.product.newProductsRssGet;
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<ProductReviewsGetResponse> productReviewsGet(
    ProductReviewsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.product.productReviewsGet;
    url = url.replaceAll(
      '{productId}',
      req.productid?.toString() ?? '',
    );
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return ProductReviewsGetResponse.fromJson(result.data);
  }

  @override
  Future<ProductReviewsAddPostResponse> productReviewsAddPost(
    ProductReviewsAddPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.product.productReviewsAddPost;
    url = url.replaceAll(
      '{productId}',
      req.productid?.toString() ?? '',
    );
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return ProductReviewsAddPostResponse.fromJson(result.data);
  }

  @override
  Future<SetProductReviewHelpfulnessPostResponse>
      setProductReviewHelpfulnessPost(
    SetProductReviewHelpfulnessPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.product.setProductReviewHelpfulnessPost;
    url = url.replaceAll(
      '{productReviewId}',
      req.productreviewid?.toString() ?? '',
    );
    final result = await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return SetProductReviewHelpfulnessPostResponse.fromJson(result.data);
  }

  @override
  Future<CustomerProductReviewsGetResponse> customerProductReviewsGet(
    CustomerProductReviewsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.product.customerProductReviewsGet;
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return CustomerProductReviewsGetResponse.fromJson(result.data);
  }

  @override
  Future<ProductEmailAFriendGetResponse> productEmailAFriendGet(
    ProductEmailAFriendGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.product.productEmailAFriendGet;
    url = url.replaceAll(
      '{productId}',
      req.productid?.toString() ?? '',
    );
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return ProductEmailAFriendGetResponse.fromJson(result.data);
  }

  @override
  Future<ProductEmailAFriendSendPostResponse> productEmailAFriendSendPost(
    ProductEmailAFriendSendPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.product.productEmailAFriendSendPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return ProductEmailAFriendSendPostResponse.fromJson(result.data);
  }

  @override
  Future<AddProductToCompareListGetResponse> addProductToCompareListGet(
    AddProductToCompareListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.product.addProductToCompareListGet;
    url = url.replaceAll(
      '{productId}',
      req.productid?.toString() ?? '',
    );
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return AddProductToCompareListGetResponse.fromJson(result.data);
  }

  @override
  Future<void> removeProductFromCompareListGet(
    RemoveProductFromCompareListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.product.removeProductFromCompareListGet;
    url = url.replaceAll(
      '{productId}',
      req.productid?.toString() ?? '',
    );
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<CompareProductsGetResponse> compareProductsGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.product.compareProductsGet;
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return CompareProductsGetResponse.fromJson(result.data);
  }

  @override
  Future<void> clearCompareListGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.product.clearCompareListGet;
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<GetAllVendorProductsGetResponse> getAllVendorProductsGet(
    GetAllVendorProductsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.product.getAllVendorProductsGet;
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return GetAllVendorProductsGetResponse.fromJson(result.data);
  }
}
