import 'package:dio/dio.dart';
import 'package:example/data/datasources/auth/auth.dart';
import 'package:example/data/models/auth/requests/login_post_req.dart';
import 'package:example/data/models/auth/responses/login_post_res.dart';
import 'package:example/end_points.dart';

class AuthRemoteDataSourceImpl implements AuthDataSource {
  final Dio _dio;
  AuthRemoteDataSourceImpl(this._dio);

  @override
  Future<LoginPostRes> loginPost(LoginPostReq req, {CancelToken? cancelToken, void Function(int, int)? onReceiveProgress, Options? options}) async {
    String url = EndPoints.auth.loginPost;
    final result = await _dio.post(url, data: req.body?.toJson(), cancelToken: cancelToken, onReceiveProgress: onReceiveProgress, options: options);
    return LoginPostRes.fromJson(result.data);
  }

}
