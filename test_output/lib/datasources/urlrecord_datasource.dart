import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';
import 'package:test_output/models/urlrecord/requests/urlrecord_get_by_slug__get_req.dart';
import 'package:test_output/models/urlrecord/responses/urlrecord_get_by_slug__get_res.dart';

abstract class IUrlrecordDataSource {
  Future<GetBySlugGetResponse> getBySlugGet(
    GetBySlugGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class UrlrecordDataSourceImpl implements IUrlrecordDataSource {
  UrlrecordDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<GetBySlugGetResponse> getBySlugGet(
    GetBySlugGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.urlrecord.getBySlugGet;
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return GetBySlugGetResponse.fromJson(result.data);
  }
}
