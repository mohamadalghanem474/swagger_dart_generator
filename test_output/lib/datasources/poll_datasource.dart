import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';
import 'package:test_output/models/poll/requests/poll_vote__get_req.dart';
import 'package:test_output/models/poll/responses/poll_vote__get_res.dart';

abstract class IPollDataSource {
  Future<VoteGetResponse> voteGet(
    VoteGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class PollDataSourceImpl implements IPollDataSource {
  PollDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<VoteGetResponse> voteGet(
    VoteGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.poll.voteGet;
    url = url.replaceAll(
      '{pollAnswerId}',
      req.pollanswerid?.toString() ?? '',
    );
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return VoteGetResponse.fromJson(result.data);
  }
}
