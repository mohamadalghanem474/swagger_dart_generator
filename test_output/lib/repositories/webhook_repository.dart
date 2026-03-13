import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/webhook_datasource.dart';
import 'package:test_output/models/webhook/responses/webhook_create_webhook__post_res.dart';
import 'package:test_output/models/webhook/requests/webhook_create_webhook__post_req.dart';

abstract class IWebhookRepository {
  Future<Either<FailureDetails, CreateWebhookPostResponse>> createWebhookPost(
    CreateWebhookPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class WebhookRepositoryImpl implements IWebhookRepository {
  WebhookRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final IWebhookDataSource _dataSource;

  final Failure _failure;

  @override
  Future<Either<FailureDetails, CreateWebhookPostResponse>> createWebhookPost(
    CreateWebhookPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.createWebhookPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
