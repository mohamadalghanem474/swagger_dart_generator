import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/poll_datasource.dart';
import 'package:test_output/models/poll/responses/poll_vote__get_res.dart';
import 'package:test_output/models/poll/requests/poll_vote__get_req.dart';

abstract class IPollRepository {
  Future<Either<FailureDetails, VoteGetResponse>> voteGet(
    VoteGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class PollRepositoryImpl implements IPollRepository {
  PollRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final IPollDataSource _dataSource;

  final Failure _failure;

  @override
  Future<Either<FailureDetails, VoteGetResponse>> voteGet(
    VoteGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.voteGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
