import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/country_datasource.dart';
import 'package:test_output/models/country/responses/country_get_by_id__get_res.dart';
import 'package:test_output/models/country/responses/country_get_state_provinces_by_id__get_res.dart';
import 'package:test_output/models/country/requests/country_get_states_by_country_id__get_req.dart';
import 'package:test_output/models/country/requests/country_get_by_id__get_req.dart';
import 'package:test_output/models/country/requests/country_get_state_provinces_by_id__get_req.dart';

abstract class ICountryRepository {
  Future<Either<FailureDetails, void>> getAllCountryGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> getStatesByCountryIdGet(
    GetStatesByCountryIdGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, GetByIdGetResponse>> getByIdGet(
    GetByIdGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, GetStateProvincesByIdGetResponse>>
      getStateProvincesByIdGet(
    GetStateProvincesByIdGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class CountryRepositoryImpl implements ICountryRepository {
  CountryRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final ICountryDataSource _dataSource;

  final Failure _failure;

  @override
  Future<Either<FailureDetails, void>> getAllCountryGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.getAllCountryGet(
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> getStatesByCountryIdGet(
    GetStatesByCountryIdGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.getStatesByCountryIdGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, GetByIdGetResponse>> getByIdGet(
    GetByIdGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.getByIdGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, GetStateProvincesByIdGetResponse>>
      getStateProvincesByIdGet(
    GetStateProvincesByIdGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.getStateProvincesByIdGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
