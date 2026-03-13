import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/warehouse_datasource.dart';
import 'package:test_output/models/warehouse/responses/warehouse_get_by_id__get_res.dart';
import 'package:test_output/models/warehouse/responses/warehouse_create__post_res.dart';
import 'package:test_output/models/warehouse/responses/warehouse_create_warehouse_for_market_place__post_res.dart';
import 'package:test_output/models/warehouse/requests/warehouse_get_all__get_req.dart';
import 'package:test_output/models/warehouse/requests/warehouse_get_by_id__get_req.dart';
import 'package:test_output/models/warehouse/requests/warehouse_create__post_req.dart';
import 'package:test_output/models/warehouse/requests/warehouse_update__put_req.dart';
import 'package:test_output/models/warehouse/requests/warehouse_delete__delete_req.dart';
import 'package:test_output/models/warehouse/requests/warehouse_create_warehouse_for_market_place__post_req.dart';

abstract class IWarehouseRepository {
  Future<Either<FailureDetails, void>> getAllGet(
    GetAllGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, GetByIdGetResponse>> getByIdGet(
    GetByIdGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, CreatePostResponse>> createPost(
    CreatePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> updatePut(
    UpdatePutRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> deleteDelete(
    DeleteDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, CreateWarehouseForMarketPlacePostResponse>>
      createWarehouseForMarketPlacePost(
    CreateWarehouseForMarketPlacePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class WarehouseRepositoryImpl implements IWarehouseRepository {
  WarehouseRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final IWarehouseDataSource _dataSource;

  final Failure _failure;

  @override
  Future<Either<FailureDetails, void>> getAllGet(
    GetAllGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.getAllGet(req,
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
  Future<Either<FailureDetails, CreatePostResponse>> createPost(
    CreatePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.createPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> updatePut(
    UpdatePutRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.updatePut(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> deleteDelete(
    DeleteDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.deleteDelete(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, CreateWarehouseForMarketPlacePostResponse>>
      createWarehouseForMarketPlacePost(
    CreateWarehouseForMarketPlacePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.createWarehouseForMarketPlacePost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
