import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';
import 'package:test_output/models/otp/requests/otp_send_otp__post_req.dart';
import 'package:test_output/models/otp/responses/otp_send_otp__post_res.dart';
import 'package:test_output/models/otp/requests/otp_is_otp_expired__post_req.dart';
import 'package:test_output/models/otp/responses/otp_is_otp_expired__post_res.dart';

abstract class IOtpDataSource {
  Future<SendOtpPostResponse> sendOtpPost(
    SendOtpPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<IsOtpExpiredPostResponse> isOtpExpiredPost(
    IsOtpExpiredPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class OtpDataSourceImpl implements IOtpDataSource {
  OtpDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<SendOtpPostResponse> sendOtpPost(
    SendOtpPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.otp.sendOtpPost;
    final result = await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return SendOtpPostResponse.fromJson(result.data);
  }

  @override
  Future<IsOtpExpiredPostResponse> isOtpExpiredPost(
    IsOtpExpiredPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.otp.isOtpExpiredPost;
    final result = await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return IsOtpExpiredPostResponse.fromJson(result.data);
  }
}
