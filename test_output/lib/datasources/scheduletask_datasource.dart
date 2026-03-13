import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';
import 'package:test_output/models/scheduletask/requests/scheduletask_run_task__get_req.dart';

abstract class IScheduletaskDataSource {
  Future<void> runTaskGet(
    RunTaskGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class ScheduletaskDataSourceImpl implements IScheduletaskDataSource {
  ScheduletaskDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<void> runTaskGet(
    RunTaskGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.scheduletask.runTaskGet;
    await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }
}
