import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';
import 'package:test_output/models/smartwareerp/requests/smartwareerp_get_erp_data_by_order_and_operation_id__get_req.dart';
import 'package:test_output/models/smartwareerp/requests/smartwareerp_reset_erp_entity_status__post_req.dart';

abstract class ISmartwareerpDataSource {
  Future<void> getErpDataByOrderAndOperationIdGet(
    GetErpDataByOrderAndOperationIdGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> resetErpEntityStatusPost(
    ResetErpEntityStatusPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class SmartwareerpDataSourceImpl implements ISmartwareerpDataSource {
  SmartwareerpDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<void> getErpDataByOrderAndOperationIdGet(
    GetErpDataByOrderAndOperationIdGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwareerp.getErpDataByOrderAndOperationIdGet;
    await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> resetErpEntityStatusPost(
    ResetErpEntityStatusPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwareerp.resetErpEntityStatusPost;
    await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }
}
