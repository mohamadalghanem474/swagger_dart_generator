import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/fuel_datasource.dart';
import 'package:test_output/models/fuel/responses/fuel_details__get_res.dart';
import 'package:test_output/models/fuel/responses/fuel_create_fuel__post_res.dart';
import 'package:test_output/models/fuel/responses/fuel_update_fuel__put_res.dart';
import 'package:test_output/models/fuel/responses/fuel_cost_report_details__get_res.dart';
import 'package:test_output/models/fuel/requests/fuel_fuel_list__get_req.dart';
import 'package:test_output/models/fuel/requests/fuel_details__get_req.dart';
import 'package:test_output/models/fuel/requests/fuel_create_fuel__post_req.dart';
import 'package:test_output/models/fuel/requests/fuel_update_fuel__put_req.dart';
import 'package:test_output/models/fuel/requests/fuel_delete_fuel__delete_req.dart';
import 'package:test_output/models/fuel/requests/fuel_id__post_req.dart';
import 'package:test_output/models/fuel/requests/fuel_remove_fuel_attachment__delete_req.dart';
import 'package:test_output/models/fuel/requests/fuel_cost_reports_list__get_req.dart';
import 'package:test_output/models/fuel/requests/fuel_cost_report_details__get_req.dart';

abstract class IFuelRepository {
  Future<Either<FailureDetails, void>> getAllVehiclesGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> getAllVendorsGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> fuelListGet(
    FuelListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, DetailsGetResponse>> detailsGet(
    DetailsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, CreateFuelPostResponse>> createFuelPost(
    CreateFuelPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, UpdateFuelPutResponse>> updateFuelPut(
    UpdateFuelPutRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> deleteFuelDelete(
    DeleteFuelDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> idPost(
    IdPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> removeFuelAttachmentDelete(
    RemoveFuelAttachmentDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> costReportsListGet(
    CostReportsListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, CostReportDetailsGetResponse>>
      costReportDetailsGet(
    CostReportDetailsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class FuelRepositoryImpl implements IFuelRepository {
  FuelRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final IFuelDataSource _dataSource;

  final Failure _failure;

  @override
  Future<Either<FailureDetails, void>> getAllVehiclesGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.getAllVehiclesGet(
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> getAllVendorsGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.getAllVendorsGet(
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> fuelListGet(
    FuelListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.fuelListGet(req,
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
  Future<Either<FailureDetails, CreateFuelPostResponse>> createFuelPost(
    CreateFuelPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.createFuelPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, UpdateFuelPutResponse>> updateFuelPut(
    UpdateFuelPutRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.updateFuelPut(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> deleteFuelDelete(
    DeleteFuelDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.deleteFuelDelete(req,
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
  Future<Either<FailureDetails, void>> removeFuelAttachmentDelete(
    RemoveFuelAttachmentDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.removeFuelAttachmentDelete(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> costReportsListGet(
    CostReportsListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.costReportsListGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, CostReportDetailsGetResponse>>
      costReportDetailsGet(
    CostReportDetailsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.costReportDetailsGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
