import 'package:example/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:example/data/repositories/auth/auth.dart';
import 'package:example/data/datasources/auth/auth.dart';
import 'package:example/data/models/auth/requests/login_post_req.dart';
import 'package:example/data/models/auth/responses/login_post_res.dart';

class AuthRepositoryImpl implements AuthRepository {
  final Failure failure;
  final AuthDataSource _dataSource;

  AuthRepositoryImpl(this._dataSource, this.failure);

  @override
  Future<Either<FailureDetails, LoginPostRes>> loginPost(LoginPostReq req, {CancelToken? cancelToken, void Function(int, int)? onReceiveProgress, Options? options}) async {
    try {
      final result = await _dataSource.loginPost(req, cancelToken: cancelToken, onReceiveProgress: onReceiveProgress, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(failure.handle(e, stackTrace));
    }
  }

}
