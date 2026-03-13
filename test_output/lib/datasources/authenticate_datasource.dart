import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';
import 'package:test_output/models/authenticate/requests/authenticate_get_token__post_req.dart';
import 'package:test_output/models/authenticate/responses/authenticate_get_token__post_res.dart';
import 'package:test_output/models/authenticate/requests/authenticate_get_token_for_customer_api__post_req.dart';
import 'package:test_output/models/authenticate/responses/authenticate_get_token_for_customer_api__post_res.dart';
import 'package:test_output/models/authenticate/requests/authenticate_get_token_external__post_req.dart';
import 'package:test_output/models/authenticate/responses/authenticate_get_token_external__post_res.dart';
import 'package:test_output/models/authenticate/requests/authenticate_get_token_by_driver_phone__post_req.dart';
import 'package:test_output/models/authenticate/responses/authenticate_get_token_by_driver_phone__post_res.dart';

abstract class IAuthenticateDataSource {
  Future<GetTokenPostResponse> getTokenPost(
    GetTokenPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<GetTokenForCustomerApiPostResponse> getTokenForCustomerApiPost(
    GetTokenForCustomerApiPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<GetTokenExternalPostResponse> getTokenExternalPost(
    GetTokenExternalPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<GetTokenByDriverPhonePostResponse> getTokenByDriverPhonePost(
    GetTokenByDriverPhonePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class AuthenticateDataSourceImpl implements IAuthenticateDataSource {
  AuthenticateDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<GetTokenPostResponse> getTokenPost(
    GetTokenPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.authenticate.getTokenPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return GetTokenPostResponse.fromJson(result.data);
  }

  @override
  Future<GetTokenForCustomerApiPostResponse> getTokenForCustomerApiPost(
    GetTokenForCustomerApiPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.authenticate.getTokenForCustomerApiPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return GetTokenForCustomerApiPostResponse.fromJson(result.data);
  }

  @override
  Future<GetTokenExternalPostResponse> getTokenExternalPost(
    GetTokenExternalPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.authenticate.getTokenExternalPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return GetTokenExternalPostResponse.fromJson(result.data);
  }

  @override
  Future<GetTokenByDriverPhonePostResponse> getTokenByDriverPhonePost(
    GetTokenByDriverPhonePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.authenticate.getTokenByDriverPhonePost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return GetTokenByDriverPhonePostResponse.fromJson(result.data);
  }
}
