import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/vehicleservice_datasource.dart';
import 'package:test_output/models/vehicleservice/responses/vehicleservice_details__get_res.dart';
import 'package:test_output/models/vehicleservice/responses/vehicleservice_create_service_logs__post_res.dart';
import 'package:test_output/models/vehicleservice/responses/vehicleservice_update_service_log__put_res.dart';
import 'package:test_output/models/vehicleservice/requests/vehicleservice_service_logs_list__get_req.dart';
import 'package:test_output/models/vehicleservice/requests/vehicleservice_details__get_req.dart';
import 'package:test_output/models/vehicleservice/requests/vehicleservice_create_service_logs__post_req.dart';
import 'package:test_output/models/vehicleservice/requests/vehicleservice_update_service_log__put_req.dart';
import 'package:test_output/models/vehicleservice/requests/vehicleservice_delete_service_log__delete_req.dart';
import 'package:test_output/models/vehicleservice/requests/vehicleservice_id__post_req.dart';
import 'package:test_output/models/vehicleservice/requests/vehicleservice_remove_service_logs_attachment__delete_req.dart';

abstract class IVehicleserviceRepository {
  Future<Either<FailureDetails, void>> serviceLogsListGet(
    ServiceLogsListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, DetailsGetResponse>> detailsGet(
    DetailsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, CreateServiceLogsPostResponse>>
      createServiceLogsPost(
    CreateServiceLogsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, UpdateServiceLogPutResponse>>
      updateServiceLogPut(
    UpdateServiceLogPutRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> deleteServiceLogDelete(
    DeleteServiceLogDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> idPost(
    IdPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> removeServiceLogsAttachmentDelete(
    RemoveServiceLogsAttachmentDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class VehicleserviceRepositoryImpl implements IVehicleserviceRepository {
  VehicleserviceRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final IVehicleserviceDataSource _dataSource;

  final Failure _failure;

  @override
  Future<Either<FailureDetails, void>> serviceLogsListGet(
    ServiceLogsListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.serviceLogsListGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, DetailsGetResponse>> detailsGet(
    DetailsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.detailsGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, CreateServiceLogsPostResponse>>
      createServiceLogsPost(
    CreateServiceLogsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.createServiceLogsPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, UpdateServiceLogPutResponse>>
      updateServiceLogPut(
    UpdateServiceLogPutRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.updateServiceLogPut(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> deleteServiceLogDelete(
    DeleteServiceLogDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.deleteServiceLogDelete(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> idPost(
    IdPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.idPost(req, cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> removeServiceLogsAttachmentDelete(
    RemoveServiceLogsAttachmentDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.removeServiceLogsAttachmentDelete(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
