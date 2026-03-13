import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/newsletter_datasource.dart';
import 'package:test_output/models/newsletter/responses/newsletter_subscription_activation__get_res.dart';
import 'package:test_output/models/newsletter/requests/newsletter_subscribe_newsletter__get_req.dart';
import 'package:test_output/models/newsletter/requests/newsletter_subscription_activation__get_req.dart';

abstract class INewsletterRepository {
  Future<Either<FailureDetails, void>> subscribeNewsletterGet(
    SubscribeNewsletterGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, SubscriptionActivationGetResponse>>
      subscriptionActivationGet(
    SubscriptionActivationGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class NewsletterRepositoryImpl implements INewsletterRepository {
  NewsletterRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final INewsletterDataSource _dataSource;

  final Failure _failure;

  @override
  Future<Either<FailureDetails, void>> subscribeNewsletterGet(
    SubscribeNewsletterGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.subscribeNewsletterGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, SubscriptionActivationGetResponse>>
      subscriptionActivationGet(
    SubscriptionActivationGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.subscriptionActivationGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
