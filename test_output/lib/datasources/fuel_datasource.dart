import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';
import 'package:test_output/models/fuel/requests/fuel_fuel_list__get_req.dart';
import 'package:test_output/models/fuel/requests/fuel_details__get_req.dart';
import 'package:test_output/models/fuel/responses/fuel_details__get_res.dart';
import 'package:test_output/models/fuel/requests/fuel_create_fuel__post_req.dart';
import 'package:test_output/models/fuel/responses/fuel_create_fuel__post_res.dart';
import 'package:test_output/models/fuel/requests/fuel_update_fuel__put_req.dart';
import 'package:test_output/models/fuel/responses/fuel_update_fuel__put_res.dart';
import 'package:test_output/models/fuel/requests/fuel_delete_fuel__delete_req.dart';
import 'package:test_output/models/fuel/requests/fuel_id__post_req.dart';
import 'package:test_output/models/fuel/requests/fuel_remove_fuel_attachment__delete_req.dart';
import 'package:test_output/models/fuel/requests/fuel_cost_reports_list__get_req.dart';
import 'package:test_output/models/fuel/requests/fuel_cost_report_details__get_req.dart';
import 'package:test_output/models/fuel/responses/fuel_cost_report_details__get_res.dart';

abstract class IFuelDataSource {
  Future<void> getAllVehiclesGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> getAllVendorsGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> fuelListGet(
    FuelListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<DetailsGetResponse> detailsGet(
    DetailsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<CreateFuelPostResponse> createFuelPost(
    CreateFuelPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<UpdateFuelPutResponse> updateFuelPut(
    UpdateFuelPutRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> deleteFuelDelete(
    DeleteFuelDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> idPost(
    IdPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> removeFuelAttachmentDelete(
    RemoveFuelAttachmentDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> costReportsListGet(
    CostReportsListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<CostReportDetailsGetResponse> costReportDetailsGet(
    CostReportDetailsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class FuelDataSourceImpl implements IFuelDataSource {
  FuelDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<void> getAllVehiclesGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.fuel.getAllVehiclesGet;
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> getAllVendorsGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.fuel.getAllVendorsGet;
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> fuelListGet(
    FuelListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.fuel.fuelListGet;
    await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<DetailsGetResponse> detailsGet(
    DetailsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.fuel.detailsGet;
    url = url.replaceAll(
      '{FuelId}',
      req.fuelid?.toString() ?? '',
    );
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return DetailsGetResponse.fromJson(result.data);
  }

  @override
  Future<CreateFuelPostResponse> createFuelPost(
    CreateFuelPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.fuel.createFuelPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return CreateFuelPostResponse.fromJson(result.data);
  }

  @override
  Future<UpdateFuelPutResponse> updateFuelPut(
    UpdateFuelPutRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.fuel.updateFuelPut;
    url = url.replaceAll(
      '{id}',
      req.id?.toString() ?? '',
    );
    final result = await _dio.put(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return UpdateFuelPutResponse.fromJson(result.data);
  }

  @override
  Future<void> deleteFuelDelete(
    DeleteFuelDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.fuel.deleteFuelDelete;
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
  Future<void> idPost(
    IdPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.fuel.idPost;
    await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> removeFuelAttachmentDelete(
    RemoveFuelAttachmentDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.fuel.removeFuelAttachmentDelete;
    await _dio.delete(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> costReportsListGet(
    CostReportsListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.fuel.costReportsListGet;
    await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<CostReportDetailsGetResponse> costReportDetailsGet(
    CostReportDetailsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.fuel.costReportDetailsGet;
    url = url.replaceAll(
      '{id}',
      req.id?.toString() ?? '',
    );
    url = url.replaceAll(
      '{CostType}',
      req.costtype?.toString() ?? '',
    );
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return CostReportDetailsGetResponse.fromJson(result.data);
  }
}
