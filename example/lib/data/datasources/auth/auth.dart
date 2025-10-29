import 'package:dio/dio.dart';
import 'package:example/data/models/auth/requests/login_post_req.dart';
import 'package:example/data/models/auth/responses/login_post_res.dart';

abstract class AuthDataSource {
  Future<LoginPostRes> loginPost(LoginPostReq req, {CancelToken? cancelToken, void Function(int, int)? onReceiveProgress, Options? options});
}
