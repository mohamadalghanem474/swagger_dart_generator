import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/returnrequest_datasource.dart';
import 'package:test_output/models/returnrequest/responses/returnrequest_customer_return_requests__get_res.dart';
import 'package:test_output/models/returnrequest/responses/returnrequest_return_request__get_res.dart';
import 'package:test_output/models/returnrequest/responses/returnrequest_return_request_submit__post_res.dart';
import 'package:test_output/models/returnrequest/responses/returnrequest_upload_file_return_request__post_res.dart';
import 'package:test_output/models/returnrequest/requests/returnrequest_return_request__get_req.dart';
import 'package:test_output/models/returnrequest/requests/returnrequest_return_request_submit__post_req.dart';
import 'package:test_output/models/returnrequest/requests/returnrequest_upload_file_return_request__post_req.dart';

abstract class IReturnrequestRepository {
  Future<Either<FailureDetails, CustomerReturnRequestsGetResponse>>
      customerReturnRequestsGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, ReturnRequestGetResponse>> returnRequestGet(
    ReturnRequestGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, ReturnRequestSubmitPostResponse>>
      returnRequestSubmitPost(
    ReturnRequestSubmitPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, UploadFileReturnRequestPostResponse>>
      uploadFileReturnRequestPost(
    UploadFileReturnRequestPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class ReturnrequestRepositoryImpl implements IReturnrequestRepository {
  ReturnrequestRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final IReturnrequestDataSource _dataSource;

  final Failure _failure;

  @override
  Future<Either<FailureDetails, CustomerReturnRequestsGetResponse>>
      customerReturnRequestsGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.customerReturnRequestsGet(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, ReturnRequestGetResponse>> returnRequestGet(
    ReturnRequestGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.returnRequestGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, ReturnRequestSubmitPostResponse>>
      returnRequestSubmitPost(
    ReturnRequestSubmitPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.returnRequestSubmitPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, UploadFileReturnRequestPostResponse>>
      uploadFileReturnRequestPost(
    UploadFileReturnRequestPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.uploadFileReturnRequestPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
