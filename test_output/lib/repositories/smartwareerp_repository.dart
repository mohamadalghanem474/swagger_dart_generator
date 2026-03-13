import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/smartwareerp_datasource.dart';
import 'package:test_output/models/smartwareerp/requests/smartwareerp_get_erp_data_by_order_and_operation_id__get_req.dart';
import 'package:test_output/models/smartwareerp/requests/smartwareerp_reset_erp_entity_status__post_req.dart';

abstract class ISmartwareerpRepository {
  Future<Either<FailureDetails, void>> getErpDataByOrderAndOperationIdGet(
    GetErpDataByOrderAndOperationIdGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> resetErpEntityStatusPost(
    ResetErpEntityStatusPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class SmartwareerpRepositoryImpl implements ISmartwareerpRepository {
  SmartwareerpRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final ISmartwareerpDataSource _dataSource;

  final Failure _failure;

  @override
  Future<Either<FailureDetails, void>> getErpDataByOrderAndOperationIdGet(
    GetErpDataByOrderAndOperationIdGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.getErpDataByOrderAndOperationIdGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> resetErpEntityStatusPost(
    ResetErpEntityStatusPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.resetErpEntityStatusPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
