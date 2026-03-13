import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';
import 'package:test_output/models/profile/requests/profile_index__get_req.dart';
import 'package:test_output/models/profile/responses/profile_index__get_res.dart';

abstract class IProfileDataSource {
  Future<IndexGetResponse> indexGet(
    IndexGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class ProfileDataSourceImpl implements IProfileDataSource {
  ProfileDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<IndexGetResponse> indexGet(
    IndexGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.profile.indexGet;
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return IndexGetResponse.fromJson(result.data);
  }
}
