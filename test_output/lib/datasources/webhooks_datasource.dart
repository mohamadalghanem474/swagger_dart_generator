import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';

abstract class IWebhooksDataSource {
  Future<void> webhooksPost({
    CancelToken? cancelToken,
    Options? options,
  });
}

class WebhooksDataSourceImpl implements IWebhooksDataSource {
  WebhooksDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<void> webhooksPost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.webhooks.webhooksPost;
    await _dio.post(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }
}
