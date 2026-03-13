import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';
import 'package:test_output/models/warehouse/requests/warehouse_get_all__get_req.dart';
import 'package:test_output/models/warehouse/requests/warehouse_get_by_id__get_req.dart';
import 'package:test_output/models/warehouse/responses/warehouse_get_by_id__get_res.dart';
import 'package:test_output/models/warehouse/requests/warehouse_create__post_req.dart';
import 'package:test_output/models/warehouse/responses/warehouse_create__post_res.dart';
import 'package:test_output/models/warehouse/requests/warehouse_update__put_req.dart';
import 'package:test_output/models/warehouse/requests/warehouse_delete__delete_req.dart';
import 'package:test_output/models/warehouse/requests/warehouse_create_warehouse_for_market_place__post_req.dart';
import 'package:test_output/models/warehouse/responses/warehouse_create_warehouse_for_market_place__post_res.dart';

abstract class IWarehouseDataSource {
  Future<void> getAllGet(
    GetAllGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<GetByIdGetResponse> getByIdGet(
    GetByIdGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<CreatePostResponse> createPost(
    CreatePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> updatePut(
    UpdatePutRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> deleteDelete(
    DeleteDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<CreateWarehouseForMarketPlacePostResponse>
      createWarehouseForMarketPlacePost(
    CreateWarehouseForMarketPlacePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class WarehouseDataSourceImpl implements IWarehouseDataSource {
  WarehouseDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<void> getAllGet(
    GetAllGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.warehouse.getAllGet;
    await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<GetByIdGetResponse> getByIdGet(
    GetByIdGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.warehouse.getByIdGet;
    url = url.replaceAll(
      '{id}',
      req.id?.toString() ?? '',
    );
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return GetByIdGetResponse.fromJson(result.data);
  }

  @override
  Future<CreatePostResponse> createPost(
    CreatePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.warehouse.createPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return CreatePostResponse.fromJson(result.data);
  }

  @override
  Future<void> updatePut(
    UpdatePutRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.warehouse.updatePut;
    await _dio.put(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> deleteDelete(
    DeleteDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.warehouse.deleteDelete;
    url = url.replaceAll(
      '{id}',
      req.id?.toString() ?? '',
    );
    await _dio.delete(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<CreateWarehouseForMarketPlacePostResponse>
      createWarehouseForMarketPlacePost(
    CreateWarehouseForMarketPlacePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.warehouse.createWarehouseForMarketPlacePost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return CreateWarehouseForMarketPlacePostResponse.fromJson(result.data);
  }
}
