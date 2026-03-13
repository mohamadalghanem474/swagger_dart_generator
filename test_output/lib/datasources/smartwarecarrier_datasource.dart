import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';
import 'package:test_output/models/smartwarecarrier/requests/smartwarecarrier_carrier_vendor_list__get_req.dart';
import 'package:test_output/models/smartwarecarrier/requests/smartwarecarrier_add_customer_disabled__post_req.dart';
import 'package:test_output/models/smartwarecarrier/requests/smartwarecarrier_add_vendor_disabled__post_req.dart';
import 'package:test_output/models/smartwarecarrier/requests/smartwarecarrier_get_carrier_sub_status_list__post_req.dart';
import 'package:test_output/models/smartwarecarrier/requests/smartwarecarrier_add_carrier_sub_status_to_shipments__post_req.dart';
import 'package:test_output/models/smartwarecarrier/requests/smartwarecarrier_reschedule_shipment_by_sub_status_id__post_req.dart';
import 'package:test_output/models/smartwarecarrier/requests/smartwarecarrier_get_shipments_by_station_id__get_req.dart';
import 'package:test_output/models/smartwarecarrier/requests/smartwarecarrier_get_shipments_for_current_station_manager__post_req.dart';
import 'package:test_output/models/smartwarecarrier/requests/smartwarecarrier_get_station_for_current_manager__post_req.dart';
import 'package:test_output/models/smartwarecarrier/requests/smartwarecarrier_install__get_req.dart';
import 'package:test_output/models/smartwarecarrier/requests/smartwarecarrier_armada_callback__post_req.dart';

abstract class ISmartwarecarrierDataSource {
  Future<void> carrierCustomerListGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> carrierVendorListGet(
    CarrierVendorListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> addCustomerDisabledPost(
    AddCustomerDisabledPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> addVendorDisabledPost(
    AddVendorDisabledPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> getCarrierSubStatusListPost(
    GetCarrierSubStatusListPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> addCarrierSubStatusToShipmentsPost(
    AddCarrierSubStatusToShipmentsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> rescheduleShipmentBySubStatusIdPost(
    RescheduleShipmentBySubStatusIdPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> subStatusesCollectionGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> assignShipmentsToDriverPost({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> assignShipmentsToStationPost({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> getShipmentsByStationIdGet(
    GetShipmentsByStationIdGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> getShipmentsForCurrentStationManagerPost(
    GetShipmentsForCurrentStationManagerPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> getStationForCurrentManagerPost(
    GetStationForCurrentManagerPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> installGet(
    InstallGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> armadaCallbackPost(
    ArmadaCallbackPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class SmartwarecarrierDataSourceImpl implements ISmartwarecarrierDataSource {
  SmartwarecarrierDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<void> carrierCustomerListGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwarecarrier.carrierCustomerListGet;
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> carrierVendorListGet(
    CarrierVendorListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwarecarrier.carrierVendorListGet;
    await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> addCustomerDisabledPost(
    AddCustomerDisabledPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwarecarrier.addCustomerDisabledPost;
    await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> addVendorDisabledPost(
    AddVendorDisabledPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwarecarrier.addVendorDisabledPost;
    await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> getCarrierSubStatusListPost(
    GetCarrierSubStatusListPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwarecarrier.getCarrierSubStatusListPost;
    await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> addCarrierSubStatusToShipmentsPost(
    AddCarrierSubStatusToShipmentsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwarecarrier.addCarrierSubStatusToShipmentsPost;
    await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> rescheduleShipmentBySubStatusIdPost(
    RescheduleShipmentBySubStatusIdPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwarecarrier.rescheduleShipmentBySubStatusIdPost;
    await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> subStatusesCollectionGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwarecarrier.subStatusesCollectionGet;
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> assignShipmentsToDriverPost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwarecarrier.assignShipmentsToDriverPost;
    await _dio.post(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> assignShipmentsToStationPost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwarecarrier.assignShipmentsToStationPost;
    await _dio.post(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> getShipmentsByStationIdGet(
    GetShipmentsByStationIdGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwarecarrier.getShipmentsByStationIdGet;
    await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> getShipmentsForCurrentStationManagerPost(
    GetShipmentsForCurrentStationManagerPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url =
        EndPoints.smartwarecarrier.getShipmentsForCurrentStationManagerPost;
    await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> getStationForCurrentManagerPost(
    GetStationForCurrentManagerPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwarecarrier.getStationForCurrentManagerPost;
    await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> installGet(
    InstallGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwarecarrier.installGet;
    await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> armadaCallbackPost(
    ArmadaCallbackPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwarecarrier.armadaCallbackPost;
    await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }
}
