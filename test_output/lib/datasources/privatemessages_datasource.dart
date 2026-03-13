import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';
import 'package:test_output/models/privatemessages/requests/privatemessages_index__get_req.dart';
import 'package:test_output/models/privatemessages/responses/privatemessages_index__get_res.dart';
import 'package:test_output/models/privatemessages/requests/privatemessages_send_p_m__get_req.dart';
import 'package:test_output/models/privatemessages/responses/privatemessages_send_p_m__get_res.dart';
import 'package:test_output/models/privatemessages/requests/privatemessages_send_p_m__post_req.dart';
import 'package:test_output/models/privatemessages/responses/privatemessages_send_p_m__post_res.dart';
import 'package:test_output/models/privatemessages/requests/privatemessages_view_p_m__get_req.dart';
import 'package:test_output/models/privatemessages/responses/privatemessages_view_p_m__get_res.dart';
import 'package:test_output/models/privatemessages/requests/privatemessages_delete_p_m__delete_req.dart';

abstract class IPrivatemessagesDataSource {
  Future<IndexGetResponse> indexGet(
    IndexGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> deleteInboxPMPost({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> markUnreadPost({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> deleteSentPMPost({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<SendPMGetResponse> sendPMGet(
    SendPMGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<SendPMPostResponse> sendPMPost(
    SendPMPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<ViewPMGetResponse> viewPMGet(
    ViewPMGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> deletePMDelete(
    DeletePMDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class PrivatemessagesDataSourceImpl implements IPrivatemessagesDataSource {
  PrivatemessagesDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<IndexGetResponse> indexGet(
    IndexGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.privatemessages.indexGet;
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return IndexGetResponse.fromJson(result.data);
  }

  @override
  Future<void> deleteInboxPMPost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.privatemessages.deleteInboxPMPost;
    await _dio.post(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> markUnreadPost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.privatemessages.markUnreadPost;
    await _dio.post(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> deleteSentPMPost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.privatemessages.deleteSentPMPost;
    await _dio.post(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<SendPMGetResponse> sendPMGet(
    SendPMGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.privatemessages.sendPMGet;
    url = url.replaceAll(
      '{toCustomerId}',
      req.tocustomerid?.toString() ?? '',
    );
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return SendPMGetResponse.fromJson(result.data);
  }

  @override
  Future<SendPMPostResponse> sendPMPost(
    SendPMPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.privatemessages.sendPMPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return SendPMPostResponse.fromJson(result.data);
  }

  @override
  Future<ViewPMGetResponse> viewPMGet(
    ViewPMGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.privatemessages.viewPMGet;
    url = url.replaceAll(
      '{privateMessageId}',
      req.privatemessageid?.toString() ?? '',
    );
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return ViewPMGetResponse.fromJson(result.data);
  }

  @override
  Future<void> deletePMDelete(
    DeletePMDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.privatemessages.deletePMDelete;
    url = url.replaceAll(
      '{privateMessageId}',
      req.privatemessageid?.toString() ?? '',
    );
    await _dio.delete(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }
}
