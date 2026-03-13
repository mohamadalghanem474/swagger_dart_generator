import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/driver_datasource.dart';
import 'package:test_output/models/driver/responses/driver_driver_info__get_res.dart';
import 'package:test_output/models/driver/responses/driver_driver_info__post_res.dart';
import 'package:test_output/models/driver/responses/driver_get_checked_in_vehicle__post_res.dart';
import 'package:test_output/models/driver/requests/driver_check_driver_exist__post_req.dart';
import 'package:test_output/models/driver/requests/driver_get_all_drivers__get_req.dart';
import 'package:test_output/models/driver/requests/driver_driver_info__get_req.dart';
import 'package:test_output/models/driver/requests/driver_driver_info__post_req.dart';
import 'package:test_output/models/driver/requests/driver_update_driver_location__post_req.dart';
import 'package:test_output/models/driver/requests/driver_get_checked_in_vehicle__post_req.dart';
import 'package:test_output/models/driver/requests/driver_check_out_driver__post_req.dart';
import 'package:test_output/models/driver/requests/driver_update_device_token__post_req.dart';
import 'package:test_output/models/driver/requests/driver_shipment_id__post_req.dart';

abstract class IDriverRepository {
  Future<Either<FailureDetails, void>> checkDriverExistPost(
    CheckDriverExistPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> getAllDriversGet(
    GetAllDriversGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, DriverInfoGetResponse>> driverInfoGet(
    DriverInfoGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, DriverInfoPostResponse>> driverInfoPost(
    DriverInfoPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> updateDriverLocationPost(
    UpdateDriverLocationPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, GetCheckedInVehiclePostResponse>>
      getCheckedInVehiclePost(
    GetCheckedInVehiclePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> checkOutDriverPost(
    CheckOutDriverPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> updateDeviceTokenPost(
    UpdateDeviceTokenPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> shipmentIdPost(
    ShipmentIdPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class DriverRepositoryImpl implements IDriverRepository {
  DriverRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final IDriverDataSource _dataSource;

  final Failure _failure;

  @override
  Future<Either<FailureDetails, void>> checkDriverExistPost(
    CheckDriverExistPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.checkDriverExistPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> getAllDriversGet(
    GetAllDriversGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.getAllDriversGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, DriverInfoGetResponse>> driverInfoGet(
    DriverInfoGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.driverInfoGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, DriverInfoPostResponse>> driverInfoPost(
    DriverInfoPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.driverInfoPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> updateDriverLocationPost(
    UpdateDriverLocationPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.updateDriverLocationPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, GetCheckedInVehiclePostResponse>>
      getCheckedInVehiclePost(
    GetCheckedInVehiclePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.getCheckedInVehiclePost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> checkOutDriverPost(
    CheckOutDriverPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.checkOutDriverPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> updateDeviceTokenPost(
    UpdateDeviceTokenPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.updateDeviceTokenPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> shipmentIdPost(
    ShipmentIdPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.shipmentIdPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
