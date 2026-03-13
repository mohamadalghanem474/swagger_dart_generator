import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/vehicle_datasource.dart';

abstract class IVehicleRepository {
  Future<Either<FailureDetails, void>> getAllDriverVehiclesGet({
    CancelToken? cancelToken,
    Options? options,
  });
}

class VehicleRepositoryImpl implements IVehicleRepository {
  VehicleRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final IVehicleDataSource _dataSource;

  final Failure _failure;

  @override
  Future<Either<FailureDetails, void>> getAllDriverVehiclesGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.getAllDriverVehiclesGet(
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
