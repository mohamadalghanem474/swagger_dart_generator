import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/webhooks_datasource.dart';

abstract class IWebhooksRepository {
  Future<Either<FailureDetails, void>> webhooksPost({
    CancelToken? cancelToken,
    Options? options,
  });
}

class WebhooksRepositoryImpl implements IWebhooksRepository {
  WebhooksRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final IWebhooksDataSource _dataSource;

  final Failure _failure;

  @override
  Future<Either<FailureDetails, void>> webhooksPost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.webhooksPost(
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
