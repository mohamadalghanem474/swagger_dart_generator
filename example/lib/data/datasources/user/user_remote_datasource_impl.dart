import 'package:dio/dio.dart';
import 'package:example/data/datasources/user/user.dart';
import 'package:example/data/models/user/requests/useruser_id_req.dart';
import 'package:example/data/models/user/responses/useruser_id_res.dart';
import 'package:example/end_points.dart';

class UserRemoteDataSourceImpl implements UserDataSource {
  final Dio _dio;
  UserRemoteDataSourceImpl(this._dio);

  @override
  Future<UseruserIdRes> useruserId(
    UseruserIdReq req, {
    CancelToken? cancelToken,
  }) async {
    String url = EndPoints.user.useruserId;
    url = url.replaceAll('{userId}', req.params?.userId?.toString() ?? '');
    final result = await _dio.get(
      url,
      queryParameters: req.query?.toJson(),
      cancelToken: cancelToken,
    );
    return UseruserIdRes.fromJson(result.data);
  }
}
