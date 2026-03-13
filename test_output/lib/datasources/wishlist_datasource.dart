import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';
import 'package:test_output/models/wishlist/requests/wishlist_wishlist__get_req.dart';
import 'package:test_output/models/wishlist/responses/wishlist_wishlist__get_res.dart';
import 'package:test_output/models/wishlist/responses/wishlist_update_wishlist__post_res.dart';
import 'package:test_output/models/wishlist/requests/wishlist_add_items_to_cart_from_wishlist__put_req.dart';
import 'package:test_output/models/wishlist/responses/wishlist_add_items_to_cart_from_wishlist__put_res.dart';
import 'package:test_output/models/wishlist/responses/wishlist_email_wishlist__get_res.dart';
import 'package:test_output/models/wishlist/requests/wishlist_email_wishlist_send__post_req.dart';
import 'package:test_output/models/wishlist/responses/wishlist_email_wishlist_send__post_res.dart';

abstract class IWishlistDataSource {
  Future<WishlistGetResponse> wishlistGet(
    WishlistGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<UpdateWishlistPostResponse> updateWishlistPost({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<AddItemsToCartFromWishlistPutResponse> addItemsToCartFromWishlistPut(
    AddItemsToCartFromWishlistPutRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<EmailWishlistGetResponse> emailWishlistGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<EmailWishlistSendPostResponse> emailWishlistSendPost(
    EmailWishlistSendPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class WishlistDataSourceImpl implements IWishlistDataSource {
  WishlistDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<WishlistGetResponse> wishlistGet(
    WishlistGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.wishlist.wishlistGet;
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return WishlistGetResponse.fromJson(result.data);
  }

  @override
  Future<UpdateWishlistPostResponse> updateWishlistPost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.wishlist.updateWishlistPost;
    final result = await _dio.post(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return UpdateWishlistPostResponse.fromJson(result.data);
  }

  @override
  Future<AddItemsToCartFromWishlistPutResponse> addItemsToCartFromWishlistPut(
    AddItemsToCartFromWishlistPutRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.wishlist.addItemsToCartFromWishlistPut;
    final result = await _dio.put(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return AddItemsToCartFromWishlistPutResponse.fromJson(result.data);
  }

  @override
  Future<EmailWishlistGetResponse> emailWishlistGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.wishlist.emailWishlistGet;
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return EmailWishlistGetResponse.fromJson(result.data);
  }

  @override
  Future<EmailWishlistSendPostResponse> emailWishlistSendPost(
    EmailWishlistSendPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.wishlist.emailWishlistSendPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return EmailWishlistSendPostResponse.fromJson(result.data);
  }
}
