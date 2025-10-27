import 'package:example/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:example/data/repositories/auth/auth.dart';
import 'package:example/data/datasources/auth/auth.dart';
import 'package:example/data/models/auth/requests/authlogin_req.dart';
import 'package:example/data/models/auth/responses/authlogin_res.dart';

class AuthRepositoryImpl implements AuthRepository {
  final Failure failure;
  final AuthDataSource _dataSource;

  AuthRepositoryImpl(this._dataSource, this.failure);

  @override
  Future<Either<FailureDetails, AuthloginRes>> authlogin(AuthloginReq req, {CancelToken? cancelToken}) async {
    try {
      final result = await _dataSource.authlogin(req, cancelToken: cancelToken);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(failure.handle(e, stackTrace));
    }
  }

}
