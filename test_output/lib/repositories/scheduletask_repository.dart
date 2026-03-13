import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/scheduletask_datasource.dart';
import 'package:test_output/models/scheduletask/requests/scheduletask_run_task__get_req.dart';

abstract class IScheduletaskRepository {
  Future<Either<FailureDetails, void>> runTaskGet(
    RunTaskGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class ScheduletaskRepositoryImpl implements IScheduletaskRepository {
  ScheduletaskRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final IScheduletaskDataSource _dataSource;

  final Failure _failure;

  @override
  Future<Either<FailureDetails, void>> runTaskGet(
    RunTaskGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.runTaskGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
