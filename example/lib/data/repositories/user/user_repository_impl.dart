import 'package:example/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:example/data/repositories/user/user.dart';
import 'package:example/data/datasources/user/user.dart';
import 'package:example/data/models/user/requests/user_get_req.dart';
import 'package:example/data/models/user/responses/user_get_res.dart';

class UserRepositoryImpl implements UserRepository {
  final Failure failure;
  final UserDataSource _dataSource;

  UserRepositoryImpl(this._dataSource, this.failure);

  @override
  Future<Either<FailureDetails, UserGetRes>> userGet(UserGetReq req, {CancelToken? cancelToken, void Function(int, int)? onReceiveProgress, Options? options}) async {
    try {
      final result = await _dataSource.userGet(req, cancelToken: cancelToken, onReceiveProgress: onReceiveProgress, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(failure.handle(e, stackTrace));
    }
  }

}
