import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/urlrecord_datasource.dart';
import 'package:test_output/models/urlrecord/responses/urlrecord_get_by_slug__get_res.dart';
import 'package:test_output/models/urlrecord/requests/urlrecord_get_by_slug__get_req.dart';

abstract class IUrlrecordRepository {
  Future<Either<FailureDetails, GetBySlugGetResponse>> getBySlugGet(
    GetBySlugGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class UrlrecordRepositoryImpl implements IUrlrecordRepository {
  UrlrecordRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final IUrlrecordDataSource _dataSource;

  final Failure _failure;

  @override
  Future<Either<FailureDetails, GetBySlugGetResponse>> getBySlugGet(
    GetBySlugGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.getBySlugGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
