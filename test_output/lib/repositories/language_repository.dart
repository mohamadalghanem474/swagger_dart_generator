import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/language_datasource.dart';

abstract class ILanguageRepository {
  Future<Either<FailureDetails, void>> getAllLanguagesGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> getAllStoresGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> getMobileAppSettingGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> getIcarryPluginApiSettingGet({
    CancelToken? cancelToken,
    Options? options,
  });
}

class LanguageRepositoryImpl implements ILanguageRepository {
  LanguageRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final ILanguageDataSource _dataSource;

  final Failure _failure;

  @override
  Future<Either<FailureDetails, void>> getAllLanguagesGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.getAllLanguagesGet(
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> getAllStoresGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.getAllStoresGet(
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> getMobileAppSettingGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.getMobileAppSettingGet(
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> getIcarryPluginApiSettingGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.getIcarryPluginApiSettingGet(
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
