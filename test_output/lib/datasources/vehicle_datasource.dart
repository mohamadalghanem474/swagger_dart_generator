import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';

abstract class IVehicleDataSource {
  Future<void> getAllDriverVehiclesGet({
    CancelToken? cancelToken,
    Options? options,
  });
}

class VehicleDataSourceImpl implements IVehicleDataSource {
  VehicleDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<void> getAllDriverVehiclesGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.vehicle.getAllDriverVehiclesGet;
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }
}
