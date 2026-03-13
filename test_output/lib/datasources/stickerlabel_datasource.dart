import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';
import 'package:test_output/models/stickerlabel/requests/stickerlabel_list__get_req.dart';

abstract class IStickerlabelDataSource {
  Future<void> listGet(
    ListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class StickerlabelDataSourceImpl implements IStickerlabelDataSource {
  StickerlabelDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<void> listGet(
    ListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.stickerlabel.listGet;
    await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }
}
