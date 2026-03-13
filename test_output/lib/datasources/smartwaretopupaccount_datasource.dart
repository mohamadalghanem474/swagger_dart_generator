import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';
import 'package:test_output/models/smartwaretopupaccount/requests/smartwaretopupaccount_vendor_account_list__get_req.dart';
import 'package:test_output/models/smartwaretopupaccount/responses/smartwaretopupaccount_vendor_account_list__get_res.dart';
import 'package:test_output/models/smartwaretopupaccount/requests/smartwaretopupaccount_get_vendor_available_wallets__get_req.dart';
import 'package:test_output/models/smartwaretopupaccount/requests/smartwaretopupaccount_create__post_req.dart';
import 'package:test_output/models/smartwaretopupaccount/requests/smartwaretopupaccount_business_create__post_req.dart';

abstract class ISmartwaretopupaccountDataSource {
  Future<void> customerAccountListGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<VendorAccountListGetResponse> vendorAccountListGet(
    VendorAccountListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> getVendorAvailableWalletsGet(
    GetVendorAvailableWalletsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> createPost(
    CreatePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> businessCreatePost(
    BusinessCreatePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class SmartwaretopupaccountDataSourceImpl
    implements ISmartwaretopupaccountDataSource {
  SmartwaretopupaccountDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<void> customerAccountListGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwaretopupaccount.customerAccountListGet;
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<VendorAccountListGetResponse> vendorAccountListGet(
    VendorAccountListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwaretopupaccount.vendorAccountListGet;
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return VendorAccountListGetResponse.fromJson(result.data);
  }

  @override
  Future<void> getVendorAvailableWalletsGet(
    GetVendorAvailableWalletsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwaretopupaccount.getVendorAvailableWalletsGet;
    await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> createPost(
    CreatePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwaretopupaccount.createPost;
    await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> businessCreatePost(
    BusinessCreatePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwaretopupaccount.businessCreatePost;
    await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }
}
