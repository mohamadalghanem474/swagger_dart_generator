import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/home_datasource.dart';
import 'package:test_output/models/home/responses/home_business_dashboard__get_res.dart';
import 'package:test_output/models/home/requests/home_lat_lng_by_address__get_req.dart';

abstract class IHomeRepository {
  Future<Either<FailureDetails, BusinessDashboardGetResponse>>
      businessDashboardGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> latLngByAddressGet(
    LatLngByAddressGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class HomeRepositoryImpl implements IHomeRepository {
  HomeRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final IHomeDataSource _dataSource;

  final Failure _failure;

  @override
  Future<Either<FailureDetails, BusinessDashboardGetResponse>>
      businessDashboardGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.businessDashboardGet(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> latLngByAddressGet(
    LatLngByAddressGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.latLngByAddressGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
