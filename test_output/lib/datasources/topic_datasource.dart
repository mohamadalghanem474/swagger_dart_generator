import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';
import 'package:test_output/models/topic/requests/topic_get_topic_details__get_req.dart';
import 'package:test_output/models/topic/responses/topic_get_topic_details__get_res.dart';

abstract class ITopicDataSource {
  Future<GetTopicDetailsGetResponse> getTopicDetailsGet(
    GetTopicDetailsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class TopicDataSourceImpl implements ITopicDataSource {
  TopicDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<GetTopicDetailsGetResponse> getTopicDetailsGet(
    GetTopicDetailsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.topic.getTopicDetailsGet;
    url = url.replaceAll(
      '{id}',
      req.id?.toString() ?? '',
    );
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return GetTopicDetailsGetResponse.fromJson(result.data);
  }
}
