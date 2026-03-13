import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/authenticate_datasource.dart';
import 'package:test_output/models/authenticate/responses/authenticate_get_token__post_res.dart';
import 'package:test_output/models/authenticate/responses/authenticate_get_token_for_customer_api__post_res.dart';
import 'package:test_output/models/authenticate/responses/authenticate_get_token_external__post_res.dart';
import 'package:test_output/models/authenticate/responses/authenticate_get_token_by_driver_phone__post_res.dart';
import 'package:test_output/models/authenticate/requests/authenticate_get_token__post_req.dart';
import 'package:test_output/models/authenticate/requests/authenticate_get_token_for_customer_api__post_req.dart';
import 'package:test_output/models/authenticate/requests/authenticate_get_token_external__post_req.dart';
import 'package:test_output/models/authenticate/requests/authenticate_get_token_by_driver_phone__post_req.dart';

abstract class IAuthenticateRepository {
  Future<Either<FailureDetails, GetTokenPostResponse>> getTokenPost(
    GetTokenPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, GetTokenForCustomerApiPostResponse>>
      getTokenForCustomerApiPost(
    GetTokenForCustomerApiPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, GetTokenExternalPostResponse>>
      getTokenExternalPost(
    GetTokenExternalPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, GetTokenByDriverPhonePostResponse>>
      getTokenByDriverPhonePost(
    GetTokenByDriverPhonePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class AuthenticateRepositoryImpl implements IAuthenticateRepository {
  AuthenticateRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final IAuthenticateDataSource _dataSource;

  final Failure _failure;

  @override
  Future<Either<FailureDetails, GetTokenPostResponse>> getTokenPost(
    GetTokenPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.getTokenPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, GetTokenForCustomerApiPostResponse>>
      getTokenForCustomerApiPost(
    GetTokenForCustomerApiPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.getTokenForCustomerApiPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, GetTokenExternalPostResponse>>
      getTokenExternalPost(
    GetTokenExternalPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.getTokenExternalPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, GetTokenByDriverPhonePostResponse>>
      getTokenByDriverPhonePost(
    GetTokenByDriverPhonePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.getTokenByDriverPhonePost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
