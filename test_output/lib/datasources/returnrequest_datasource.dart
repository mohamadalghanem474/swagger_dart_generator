import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';
import 'package:test_output/models/returnrequest/responses/returnrequest_customer_return_requests__get_res.dart';
import 'package:test_output/models/returnrequest/requests/returnrequest_return_request__get_req.dart';
import 'package:test_output/models/returnrequest/responses/returnrequest_return_request__get_res.dart';
import 'package:test_output/models/returnrequest/requests/returnrequest_return_request_submit__post_req.dart';
import 'package:test_output/models/returnrequest/responses/returnrequest_return_request_submit__post_res.dart';
import 'package:test_output/models/returnrequest/requests/returnrequest_upload_file_return_request__post_req.dart';
import 'package:test_output/models/returnrequest/responses/returnrequest_upload_file_return_request__post_res.dart';

abstract class IReturnrequestDataSource {
  Future<CustomerReturnRequestsGetResponse> customerReturnRequestsGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<ReturnRequestGetResponse> returnRequestGet(
    ReturnRequestGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<ReturnRequestSubmitPostResponse> returnRequestSubmitPost(
    ReturnRequestSubmitPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<UploadFileReturnRequestPostResponse> uploadFileReturnRequestPost(
    UploadFileReturnRequestPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class ReturnrequestDataSourceImpl implements IReturnrequestDataSource {
  ReturnrequestDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<CustomerReturnRequestsGetResponse> customerReturnRequestsGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.returnrequest.customerReturnRequestsGet;
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return CustomerReturnRequestsGetResponse.fromJson(result.data);
  }

  @override
  Future<ReturnRequestGetResponse> returnRequestGet(
    ReturnRequestGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.returnrequest.returnRequestGet;
    url = url.replaceAll(
      '{orderId}',
      req.orderid?.toString() ?? '',
    );
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return ReturnRequestGetResponse.fromJson(result.data);
  }

  @override
  Future<ReturnRequestSubmitPostResponse> returnRequestSubmitPost(
    ReturnRequestSubmitPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.returnrequest.returnRequestSubmitPost;
    url = url.replaceAll(
      '{orderId}',
      req.orderid?.toString() ?? '',
    );
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return ReturnRequestSubmitPostResponse.fromJson(result.data);
  }

  @override
  Future<UploadFileReturnRequestPostResponse> uploadFileReturnRequestPost(
    UploadFileReturnRequestPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.returnrequest.uploadFileReturnRequestPost;
    final result = await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return UploadFileReturnRequestPostResponse.fromJson(result.data);
  }
}
