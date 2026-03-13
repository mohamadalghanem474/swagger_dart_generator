import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/backinstocksubscription_datasource.dart';
import 'package:test_output/models/backinstocksubscription/responses/backinstocksubscription_subscribe_popup__get_res.dart';
import 'package:test_output/models/backinstocksubscription/responses/backinstocksubscription_customer_subscriptions__get_res.dart';
import 'package:test_output/models/backinstocksubscription/responses/backinstocksubscription_customer_subscriptions_p_o_s_t__post_res.dart';
import 'package:test_output/models/backinstocksubscription/requests/backinstocksubscription_subscribe_popup__get_req.dart';
import 'package:test_output/models/backinstocksubscription/requests/backinstocksubscription_subscribe_popup_p_o_s_t__post_req.dart';
import 'package:test_output/models/backinstocksubscription/requests/backinstocksubscription_customer_subscriptions__get_req.dart';

abstract class IBackinstocksubscriptionRepository {
  Future<Either<FailureDetails, SubscribePopupGetResponse>> subscribePopupGet(
    SubscribePopupGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> subscribePopupPOSTPost(
    SubscribePopupPOSTPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, CustomerSubscriptionsGetResponse>>
      customerSubscriptionsGet(
    CustomerSubscriptionsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, CustomerSubscriptionsPOSTPostResponse>>
      customerSubscriptionsPOSTPost({
    CancelToken? cancelToken,
    Options? options,
  });
}

class BackinstocksubscriptionRepositoryImpl
    implements IBackinstocksubscriptionRepository {
  BackinstocksubscriptionRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final IBackinstocksubscriptionDataSource _dataSource;

  final Failure _failure;

  @override
  Future<Either<FailureDetails, SubscribePopupGetResponse>> subscribePopupGet(
    SubscribePopupGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.subscribePopupGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> subscribePopupPOSTPost(
    SubscribePopupPOSTPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.subscribePopupPOSTPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, CustomerSubscriptionsGetResponse>>
      customerSubscriptionsGet(
    CustomerSubscriptionsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.customerSubscriptionsGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, CustomerSubscriptionsPOSTPostResponse>>
      customerSubscriptionsPOSTPost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.customerSubscriptionsPOSTPost(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
