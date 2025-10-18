import 'package:dio/dio.dart';
import 'package:example/data/models/auth/requests/authlogin_req.dart';
import 'package:example/data/models/auth/responses/authlogin_res.dart';

abstract class AuthDataSource {
  Future<AuthloginRes> authlogin(AuthloginReq req, {CancelToken? cancelToken});
}
