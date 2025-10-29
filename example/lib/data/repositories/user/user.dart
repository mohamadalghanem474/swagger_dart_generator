import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:example/failure.dart';
import 'package:example/data/models/user/requests/user_get_req.dart';
import 'package:example/data/models/user/responses/user_get_res.dart';

abstract class UserRepository {
  Future<Either<FailureDetails, UserGetRes>> userGet(UserGetReq req, {CancelToken? cancelToken, void Function(int, int)? onReceiveProgress, Options? options});
}
