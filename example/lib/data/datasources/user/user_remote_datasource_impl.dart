import 'package:dio/dio.dart';
import 'package:example/data/datasources/user/user.dart';
import 'package:example/data/models/user/requests/user_get_req.dart';
import 'package:example/data/models/user/responses/user_get_res.dart';
import 'package:example/end_points.dart';

class UserRemoteDataSourceImpl implements UserDataSource {
  final Dio _dio;
  UserRemoteDataSourceImpl(this._dio);

  @override
  Future<UserGetRes> userGet(UserGetReq req, {CancelToken? cancelToken, void Function(int, int)? onReceiveProgress, Options? options}) async {
    String url = EndPoints.user.userGet;
    url = url.replaceAll('{userId}', req.params?.userId?.toString() ?? '');
    final result = await _dio.get(url, queryParameters: req.query?.toJson(), cancelToken: cancelToken, onReceiveProgress: onReceiveProgress, options: options);
    return UserGetRes.fromJson(result.data);
  }

}
