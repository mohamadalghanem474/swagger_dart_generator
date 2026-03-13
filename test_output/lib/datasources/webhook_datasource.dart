import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';
import 'package:test_output/models/webhook/requests/webhook_create_webhook__post_req.dart';
import 'package:test_output/models/webhook/responses/webhook_create_webhook__post_res.dart';

abstract class IWebhookDataSource {
  Future<CreateWebhookPostResponse> createWebhookPost(
    CreateWebhookPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class WebhookDataSourceImpl implements IWebhookDataSource {
  WebhookDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<CreateWebhookPostResponse> createWebhookPost(
    CreateWebhookPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.webhook.createWebhookPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return CreateWebhookPostResponse.fromJson(result.data);
  }
}
