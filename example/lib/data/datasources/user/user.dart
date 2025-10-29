import 'package:dio/dio.dart';
import 'package:example/data/models/user/requests/user_get_req.dart';
import 'package:example/data/models/user/responses/user_get_res.dart';

abstract class UserDataSource {
  Future<UserGetRes> userGet(UserGetReq req, {CancelToken? cancelToken, void Function(int, int)? onReceiveProgress, Options? options});
}
