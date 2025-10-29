import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:example/failure.dart';
import 'package:example/data/models/auth/requests/login_post_req.dart';
import 'package:example/data/models/auth/responses/login_post_res.dart';

abstract class AuthRepository {
  Future<Either<FailureDetails, LoginPostRes>> loginPost(LoginPostReq req, {CancelToken? cancelToken, void Function(int, int)? onReceiveProgress, Options? options});
}
