import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';
import 'package:test_output/models/download/requests/download_sample__get_req.dart';
import 'package:test_output/models/download/requests/download_get_download__get_req.dart';
import 'package:test_output/models/download/requests/download_get_license__get_req.dart';
import 'package:test_output/models/download/requests/download_get_file_upload__get_req.dart';
import 'package:test_output/models/download/requests/download_get_order_note_file__get_req.dart';

abstract class IDownloadDataSource {
  Future<void> sampleGet(
    SampleGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> getDownloadGet(
    GetDownloadGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> getLicenseGet(
    GetLicenseGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> getFileUploadGet(
    GetFileUploadGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> getOrderNoteFileGet(
    GetOrderNoteFileGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class DownloadDataSourceImpl implements IDownloadDataSource {
  DownloadDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<void> sampleGet(
    SampleGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.download.sampleGet;
    url = url.replaceAll(
      '{productId}',
      req.productid?.toString() ?? '',
    );
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> getDownloadGet(
    GetDownloadGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.download.getDownloadGet;
    await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> getLicenseGet(
    GetLicenseGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.download.getLicenseGet;
    await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> getFileUploadGet(
    GetFileUploadGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.download.getFileUploadGet;
    await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> getOrderNoteFileGet(
    GetOrderNoteFileGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.download.getOrderNoteFileGet;
    url = url.replaceAll(
      '{orderNoteId}',
      req.ordernoteid?.toString() ?? '',
    );
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }
}
