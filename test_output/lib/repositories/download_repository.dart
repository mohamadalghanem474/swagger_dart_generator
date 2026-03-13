import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/download_datasource.dart';
import 'package:test_output/models/download/requests/download_sample__get_req.dart';
import 'package:test_output/models/download/requests/download_get_download__get_req.dart';
import 'package:test_output/models/download/requests/download_get_license__get_req.dart';
import 'package:test_output/models/download/requests/download_get_file_upload__get_req.dart';
import 'package:test_output/models/download/requests/download_get_order_note_file__get_req.dart';

abstract class IDownloadRepository {
  Future<Either<FailureDetails, void>> sampleGet(
    SampleGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> getDownloadGet(
    GetDownloadGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> getLicenseGet(
    GetLicenseGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> getFileUploadGet(
    GetFileUploadGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> getOrderNoteFileGet(
    GetOrderNoteFileGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class DownloadRepositoryImpl implements IDownloadRepository {
  DownloadRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final IDownloadDataSource _dataSource;

  final Failure _failure;

  @override
  Future<Either<FailureDetails, void>> sampleGet(
    SampleGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.sampleGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> getDownloadGet(
    GetDownloadGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.getDownloadGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> getLicenseGet(
    GetLicenseGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.getLicenseGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> getFileUploadGet(
    GetFileUploadGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.getFileUploadGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> getOrderNoteFileGet(
    GetOrderNoteFileGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.getOrderNoteFileGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
