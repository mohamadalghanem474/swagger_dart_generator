import 'package:dio/dio.dart';
import 'package:example/data/datasources/auth/auth.dart';
import 'package:example/data/models/auth/requests/authlogin_req.dart';
import 'package:example/data/models/auth/responses/authlogin_res.dart';
import 'package:example/end_points.dart';

class AuthRemoteDataSourceImpl implements AuthDataSource {
  final Dio _dio;
  AuthRemoteDataSourceImpl(this._dio);

  @override
  Future<AuthloginRes> authlogin(
    AuthloginReq req, {
    CancelToken? cancelToken,
  }) async {
    String url = EndPoints.auth.authlogin;
    final result = await _dio.post(url, cancelToken: cancelToken);
    return AuthloginRes.fromJson(result.data);
  }
}
