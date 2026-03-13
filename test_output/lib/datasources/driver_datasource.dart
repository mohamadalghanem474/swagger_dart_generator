import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';
import 'package:test_output/models/driver/requests/driver_check_driver_exist__post_req.dart';
import 'package:test_output/models/driver/requests/driver_get_all_drivers__get_req.dart';
import 'package:test_output/models/driver/requests/driver_driver_info__get_req.dart';
import 'package:test_output/models/driver/responses/driver_driver_info__get_res.dart';
import 'package:test_output/models/driver/requests/driver_driver_info__post_req.dart';
import 'package:test_output/models/driver/responses/driver_driver_info__post_res.dart';
import 'package:test_output/models/driver/requests/driver_update_driver_location__post_req.dart';
import 'package:test_output/models/driver/requests/driver_get_checked_in_vehicle__post_req.dart';
import 'package:test_output/models/driver/responses/driver_get_checked_in_vehicle__post_res.dart';
import 'package:test_output/models/driver/requests/driver_check_out_driver__post_req.dart';
import 'package:test_output/models/driver/requests/driver_update_device_token__post_req.dart';
import 'package:test_output/models/driver/requests/driver_shipment_id__post_req.dart';

abstract class IDriverDataSource {
  Future<void> checkDriverExistPost(
    CheckDriverExistPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> getAllDriversGet(
    GetAllDriversGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<DriverInfoGetResponse> driverInfoGet(
    DriverInfoGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<DriverInfoPostResponse> driverInfoPost(
    DriverInfoPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> updateDriverLocationPost(
    UpdateDriverLocationPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<GetCheckedInVehiclePostResponse> getCheckedInVehiclePost(
    GetCheckedInVehiclePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> checkOutDriverPost(
    CheckOutDriverPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> updateDeviceTokenPost(
    UpdateDeviceTokenPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> shipmentIdPost(
    ShipmentIdPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class DriverDataSourceImpl implements IDriverDataSource {
  DriverDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<void> checkDriverExistPost(
    CheckDriverExistPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.driver.checkDriverExistPost;
    await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> getAllDriversGet(
    GetAllDriversGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.driver.getAllDriversGet;
    await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<DriverInfoGetResponse> driverInfoGet(
    DriverInfoGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.driver.driverInfoGet;
    url = url.replaceAll(
      '{driverId}',
      req.driverid?.toString() ?? '',
    );
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return DriverInfoGetResponse.fromJson(result.data);
  }

  @override
  Future<DriverInfoPostResponse> driverInfoPost(
    DriverInfoPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.driver.driverInfoPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return DriverInfoPostResponse.fromJson(result.data);
  }

  @override
  Future<void> updateDriverLocationPost(
    UpdateDriverLocationPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.driver.updateDriverLocationPost;
    await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<GetCheckedInVehiclePostResponse> getCheckedInVehiclePost(
    GetCheckedInVehiclePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.driver.getCheckedInVehiclePost;
    final result = await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return GetCheckedInVehiclePostResponse.fromJson(result.data);
  }

  @override
  Future<void> checkOutDriverPost(
    CheckOutDriverPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.driver.checkOutDriverPost;
    await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> updateDeviceTokenPost(
    UpdateDeviceTokenPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.driver.updateDeviceTokenPost;
    await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> shipmentIdPost(
    ShipmentIdPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.driver.shipmentIdPost;
    await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }
}
