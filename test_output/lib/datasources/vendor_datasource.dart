import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';
import 'package:test_output/models/vendor/responses/vendor_apply_vendor__get_res.dart';
import 'package:test_output/models/vendor/requests/vendor_apply_vendor_submit__post_req.dart';
import 'package:test_output/models/vendor/responses/vendor_apply_vendor_submit__post_res.dart';
import 'package:test_output/models/vendor/responses/vendor_info__get_res.dart';
import 'package:test_output/models/vendor/responses/vendor_info__post_res.dart';
import 'package:test_output/models/vendor/requests/vendor_remove_legal_document__delete_req.dart';

abstract class IVendorDataSource {
  Future<ApplyVendorGetResponse> applyVendorGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<ApplyVendorSubmitPostResponse> applyVendorSubmitPost(
    ApplyVendorSubmitPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<InfoGetResponse> infoGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<InfoPostResponse> infoPost({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> removePictureDelete({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> removeLegalDocumentDelete(
    RemoveLegalDocumentDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class VendorDataSourceImpl implements IVendorDataSource {
  VendorDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<ApplyVendorGetResponse> applyVendorGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.vendor.applyVendorGet;
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return ApplyVendorGetResponse.fromJson(result.data);
  }

  @override
  Future<ApplyVendorSubmitPostResponse> applyVendorSubmitPost(
    ApplyVendorSubmitPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.vendor.applyVendorSubmitPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return ApplyVendorSubmitPostResponse.fromJson(result.data);
  }

  @override
  Future<InfoGetResponse> infoGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.vendor.infoGet;
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return InfoGetResponse.fromJson(result.data);
  }

  @override
  Future<InfoPostResponse> infoPost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.vendor.infoPost;
    final result = await _dio.post(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return InfoPostResponse.fromJson(result.data);
  }

  @override
  Future<void> removePictureDelete({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.vendor.removePictureDelete;
    await _dio.delete(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> removeLegalDocumentDelete(
    RemoveLegalDocumentDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.vendor.removeLegalDocumentDelete;
    await _dio.delete(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }
}
