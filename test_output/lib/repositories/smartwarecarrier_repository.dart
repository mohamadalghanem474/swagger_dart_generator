import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/smartwarecarrier_datasource.dart';
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

abstract class ISmartwarecarrierRepository {
  Future<Either<FailureDetails, void>> carrierCustomerListGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> carrierVendorListGet(
    CarrierVendorListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> addCustomerDisabledPost(
    AddCustomerDisabledPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> addVendorDisabledPost(
    AddVendorDisabledPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> getCarrierSubStatusListPost(
    GetCarrierSubStatusListPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> addCarrierSubStatusToShipmentsPost(
    AddCarrierSubStatusToShipmentsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> rescheduleShipmentBySubStatusIdPost(
    RescheduleShipmentBySubStatusIdPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> subStatusesCollectionGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> assignShipmentsToDriverPost({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> assignShipmentsToStationPost({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> getShipmentsByStationIdGet(
    GetShipmentsByStationIdGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> getShipmentsForCurrentStationManagerPost(
    GetShipmentsForCurrentStationManagerPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> getStationForCurrentManagerPost(
    GetStationForCurrentManagerPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> installGet(
    InstallGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> armadaCallbackPost(
    ArmadaCallbackPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class SmartwarecarrierRepositoryImpl implements ISmartwarecarrierRepository {
  SmartwarecarrierRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final ISmartwarecarrierDataSource _dataSource;

  final Failure _failure;

  @override
  Future<Either<FailureDetails, void>> carrierCustomerListGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.carrierCustomerListGet(
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> carrierVendorListGet(
    CarrierVendorListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.carrierVendorListGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> addCustomerDisabledPost(
    AddCustomerDisabledPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.addCustomerDisabledPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> addVendorDisabledPost(
    AddVendorDisabledPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.addVendorDisabledPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> getCarrierSubStatusListPost(
    GetCarrierSubStatusListPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.getCarrierSubStatusListPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> addCarrierSubStatusToShipmentsPost(
    AddCarrierSubStatusToShipmentsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.addCarrierSubStatusToShipmentsPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> rescheduleShipmentBySubStatusIdPost(
    RescheduleShipmentBySubStatusIdPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.rescheduleShipmentBySubStatusIdPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> subStatusesCollectionGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.subStatusesCollectionGet(
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> assignShipmentsToDriverPost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.assignShipmentsToDriverPost(
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> assignShipmentsToStationPost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.assignShipmentsToStationPost(
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> getShipmentsByStationIdGet(
    GetShipmentsByStationIdGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.getShipmentsByStationIdGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> getShipmentsForCurrentStationManagerPost(
    GetShipmentsForCurrentStationManagerPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.getShipmentsForCurrentStationManagerPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> getStationForCurrentManagerPost(
    GetStationForCurrentManagerPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.getStationForCurrentManagerPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> installGet(
    InstallGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.installGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> armadaCallbackPost(
    ArmadaCallbackPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.armadaCallbackPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
