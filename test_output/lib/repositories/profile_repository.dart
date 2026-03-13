import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/profile_datasource.dart';
import 'package:test_output/models/profile/responses/profile_index__get_res.dart';
import 'package:test_output/models/profile/requests/profile_index__get_req.dart';

abstract class IProfileRepository {
  Future<Either<FailureDetails, IndexGetResponse>> indexGet(
    IndexGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class ProfileRepositoryImpl implements IProfileRepository {
  ProfileRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final IProfileDataSource _dataSource;

  final Failure _failure;

  @override
  Future<Either<FailureDetails, IndexGetResponse>> indexGet(
    IndexGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.indexGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
