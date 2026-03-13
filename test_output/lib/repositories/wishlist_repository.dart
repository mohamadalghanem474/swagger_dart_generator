import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/wishlist_datasource.dart';
import 'package:test_output/models/wishlist/responses/wishlist_wishlist__get_res.dart';
import 'package:test_output/models/wishlist/responses/wishlist_update_wishlist__post_res.dart';
import 'package:test_output/models/wishlist/responses/wishlist_add_items_to_cart_from_wishlist__put_res.dart';
import 'package:test_output/models/wishlist/responses/wishlist_email_wishlist__get_res.dart';
import 'package:test_output/models/wishlist/responses/wishlist_email_wishlist_send__post_res.dart';
import 'package:test_output/models/wishlist/requests/wishlist_wishlist__get_req.dart';
import 'package:test_output/models/wishlist/requests/wishlist_add_items_to_cart_from_wishlist__put_req.dart';
import 'package:test_output/models/wishlist/requests/wishlist_email_wishlist_send__post_req.dart';

abstract class IWishlistRepository {
  Future<Either<FailureDetails, WishlistGetResponse>> wishlistGet(
    WishlistGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, UpdateWishlistPostResponse>>
      updateWishlistPost({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, AddItemsToCartFromWishlistPutResponse>>
      addItemsToCartFromWishlistPut(
    AddItemsToCartFromWishlistPutRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, EmailWishlistGetResponse>> emailWishlistGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, EmailWishlistSendPostResponse>>
      emailWishlistSendPost(
    EmailWishlistSendPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class WishlistRepositoryImpl implements IWishlistRepository {
  WishlistRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final IWishlistDataSource _dataSource;

  final Failure _failure;

  @override
  Future<Either<FailureDetails, WishlistGetResponse>> wishlistGet(
    WishlistGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.wishlistGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, UpdateWishlistPostResponse>>
      updateWishlistPost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.updateWishlistPost(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, AddItemsToCartFromWishlistPutResponse>>
      addItemsToCartFromWishlistPut(
    AddItemsToCartFromWishlistPutRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.addItemsToCartFromWishlistPut(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, EmailWishlistGetResponse>> emailWishlistGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.emailWishlistGet(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, EmailWishlistSendPostResponse>>
      emailWishlistSendPost(
    EmailWishlistSendPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.emailWishlistSendPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
