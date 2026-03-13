import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/stickerlabel_datasource.dart';
import 'package:test_output/models/stickerlabel/requests/stickerlabel_list__get_req.dart';

abstract class IStickerlabelRepository {
  Future<Either<FailureDetails, void>> listGet(
    ListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class StickerlabelRepositoryImpl implements IStickerlabelRepository {
  StickerlabelRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final IStickerlabelDataSource _dataSource;

  final Failure _failure;

  @override
  Future<Either<FailureDetails, void>> listGet(
    ListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.listGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
