import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/otp_datasource.dart';
import 'package:test_output/models/otp/responses/otp_send_otp__post_res.dart';
import 'package:test_output/models/otp/responses/otp_is_otp_expired__post_res.dart';
import 'package:test_output/models/otp/requests/otp_send_otp__post_req.dart';
import 'package:test_output/models/otp/requests/otp_is_otp_expired__post_req.dart';

abstract class IOtpRepository {
  Future<Either<FailureDetails, SendOtpPostResponse>> sendOtpPost(
    SendOtpPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, IsOtpExpiredPostResponse>> isOtpExpiredPost(
    IsOtpExpiredPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class OtpRepositoryImpl implements IOtpRepository {
  OtpRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final IOtpDataSource _dataSource;

  final Failure _failure;

  @override
  Future<Either<FailureDetails, SendOtpPostResponse>> sendOtpPost(
    SendOtpPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.sendOtpPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, IsOtpExpiredPostResponse>> isOtpExpiredPost(
    IsOtpExpiredPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.isOtpExpiredPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
