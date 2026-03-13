import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/topic_datasource.dart';
import 'package:test_output/models/topic/responses/topic_get_topic_details__get_res.dart';
import 'package:test_output/models/topic/requests/topic_get_topic_details__get_req.dart';

abstract class ITopicRepository {
  Future<Either<FailureDetails, GetTopicDetailsGetResponse>> getTopicDetailsGet(
    GetTopicDetailsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class TopicRepositoryImpl implements ITopicRepository {
  TopicRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final ITopicDataSource _dataSource;

  final Failure _failure;

  @override
  Future<Either<FailureDetails, GetTopicDetailsGetResponse>> getTopicDetailsGet(
    GetTopicDetailsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.getTopicDetailsGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
