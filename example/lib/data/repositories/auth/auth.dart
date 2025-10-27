import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:example/failure.dart';
import 'package:example/data/models/auth/requests/authlogin_req.dart';
import 'package:example/data/models/auth/responses/authlogin_res.dart';

abstract class AuthRepository {
  Future<Either<FailureDetails, AuthloginRes>> authlogin(AuthloginReq req, {CancelToken? cancelToken});
}
