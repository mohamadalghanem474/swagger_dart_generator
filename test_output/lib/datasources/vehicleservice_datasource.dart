import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';
import 'package:test_output/models/vehicleservice/requests/vehicleservice_service_logs_list__get_req.dart';
import 'package:test_output/models/vehicleservice/requests/vehicleservice_details__get_req.dart';
import 'package:test_output/models/vehicleservice/responses/vehicleservice_details__get_res.dart';
import 'package:test_output/models/vehicleservice/requests/vehicleservice_create_service_logs__post_req.dart';
import 'package:test_output/models/vehicleservice/responses/vehicleservice_create_service_logs__post_res.dart';
import 'package:test_output/models/vehicleservice/requests/vehicleservice_update_service_log__put_req.dart';
import 'package:test_output/models/vehicleservice/responses/vehicleservice_update_service_log__put_res.dart';
import 'package:test_output/models/vehicleservice/requests/vehicleservice_delete_service_log__delete_req.dart';
import 'package:test_output/models/vehicleservice/requests/vehicleservice_id__post_req.dart';
import 'package:test_output/models/vehicleservice/requests/vehicleservice_remove_service_logs_attachment__delete_req.dart';

abstract class IVehicleserviceDataSource {
  Future<void> serviceLogsListGet(
    ServiceLogsListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<DetailsGetResponse> detailsGet(
    DetailsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<CreateServiceLogsPostResponse> createServiceLogsPost(
    CreateServiceLogsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<UpdateServiceLogPutResponse> updateServiceLogPut(
    UpdateServiceLogPutRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> deleteServiceLogDelete(
    DeleteServiceLogDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> idPost(
    IdPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> removeServiceLogsAttachmentDelete(
    RemoveServiceLogsAttachmentDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class VehicleserviceDataSourceImpl implements IVehicleserviceDataSource {
  VehicleserviceDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<void> serviceLogsListGet(
    ServiceLogsListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.vehicleservice.serviceLogsListGet;
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
    var url = EndPoints.vehicleservice.detailsGet;
    url = url.replaceAll(
      '{servicesLogsId}',
      req.serviceslogsid?.toString() ?? '',
    );
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return DetailsGetResponse.fromJson(result.data);
  }

  @override
  Future<CreateServiceLogsPostResponse> createServiceLogsPost(
    CreateServiceLogsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.vehicleservice.createServiceLogsPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return CreateServiceLogsPostResponse.fromJson(result.data);
  }

  @override
  Future<UpdateServiceLogPutResponse> updateServiceLogPut(
    UpdateServiceLogPutRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.vehicleservice.updateServiceLogPut;
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
    return UpdateServiceLogPutResponse.fromJson(result.data);
  }

  @override
  Future<void> deleteServiceLogDelete(
    DeleteServiceLogDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.vehicleservice.deleteServiceLogDelete;
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
    var url = EndPoints.vehicleservice.idPost;
    await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> removeServiceLogsAttachmentDelete(
    RemoveServiceLogsAttachmentDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.vehicleservice.removeServiceLogsAttachmentDelete;
    await _dio.delete(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }
}
