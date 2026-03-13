import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/vendor_datasource.dart';
import 'package:test_output/models/vendor/responses/vendor_apply_vendor__get_res.dart';
import 'package:test_output/models/vendor/responses/vendor_apply_vendor_submit__post_res.dart';
import 'package:test_output/models/vendor/responses/vendor_info__get_res.dart';
import 'package:test_output/models/vendor/responses/vendor_info__post_res.dart';
import 'package:test_output/models/vendor/requests/vendor_apply_vendor_submit__post_req.dart';
import 'package:test_output/models/vendor/requests/vendor_remove_legal_document__delete_req.dart';

abstract class IVendorRepository {
  Future<Either<FailureDetails, ApplyVendorGetResponse>> applyVendorGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, ApplyVendorSubmitPostResponse>>
      applyVendorSubmitPost(
    ApplyVendorSubmitPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, InfoGetResponse>> infoGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, InfoPostResponse>> infoPost({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> removePictureDelete({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> removeLegalDocumentDelete(
    RemoveLegalDocumentDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class VendorRepositoryImpl implements IVendorRepository {
  VendorRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final IVendorDataSource _dataSource;

  final Failure _failure;

  @override
  Future<Either<FailureDetails, ApplyVendorGetResponse>> applyVendorGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.applyVendorGet(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, ApplyVendorSubmitPostResponse>>
      applyVendorSubmitPost(
    ApplyVendorSubmitPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.applyVendorSubmitPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, InfoGetResponse>> infoGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result =
          await _dataSource.infoGet(cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, InfoPostResponse>> infoPost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.infoPost(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> removePictureDelete({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.removePictureDelete(
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> removeLegalDocumentDelete(
    RemoveLegalDocumentDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.removeLegalDocumentDelete(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
