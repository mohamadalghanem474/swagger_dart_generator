import 'package:dio/dio.dart';
import 'package:example/data/models/user/requests/useruser_id_req.dart';
import 'package:example/data/models/user/responses/useruser_id_res.dart';

abstract class UserDataSource {
  Future<UseruserIdRes> useruserId(UseruserIdReq req, {CancelToken? cancelToken});
}
