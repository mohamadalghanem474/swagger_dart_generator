import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';
import 'package:test_output/models/smartwarevendorsubscription/requests/smartwarevendorsubscription_vendor_subscription_custom_attr_by_system_name__get_req.dart';
import 'package:test_output/models/smartwarevendorsubscription/responses/smartwarevendorsubscription_vendor_subscription_custom_attr_by_system_name__get_res.dart';

abstract class ISmartwarevendorsubscriptionDataSource {
  Future<void> companyProfileGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> listGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> vendorSubscriptionCustomAttrGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<VendorSubscriptionCustomAttrBySystemNameGetResponse>
      vendorSubscriptionCustomAttrBySystemNameGet(
    VendorSubscriptionCustomAttrBySystemNameGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class SmartwarevendorsubscriptionDataSourceImpl
    implements ISmartwarevendorsubscriptionDataSource {
  SmartwarevendorsubscriptionDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<void> companyProfileGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwarevendorsubscription.companyProfileGet;
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> listGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwarevendorsubscription.listGet;
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> vendorSubscriptionCustomAttrGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url =
        EndPoints.smartwarevendorsubscription.vendorSubscriptionCustomAttrGet;
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<VendorSubscriptionCustomAttrBySystemNameGetResponse>
      vendorSubscriptionCustomAttrBySystemNameGet(
    VendorSubscriptionCustomAttrBySystemNameGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwarevendorsubscription
        .vendorSubscriptionCustomAttrBySystemNameGet;
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return VendorSubscriptionCustomAttrBySystemNameGetResponse.fromJson(
        result.data);
  }
}
