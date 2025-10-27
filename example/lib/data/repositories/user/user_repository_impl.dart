import 'package:example/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:example/data/repositories/user/user.dart';
import 'package:example/data/datasources/user/user.dart';
import 'package:example/data/models/user/requests/useruser_id_req.dart';
import 'package:example/data/models/user/responses/useruser_id_res.dart';

class UserRepositoryImpl implements UserRepository {
  final Failure failure;
  final UserDataSource _dataSource;

  UserRepositoryImpl(this._dataSource, this.failure);

  @override
  Future<Either<FailureDetails, UseruserIdRes>> useruserId(UseruserIdReq req, {CancelToken? cancelToken}) async {
    try {
      final result = await _dataSource.useruserId(req, cancelToken: cancelToken);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(failure.handle(e, stackTrace));
    }
  }

}
