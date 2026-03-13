import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/smartwaretopupaccount_datasource.dart';
import 'package:test_output/models/smartwaretopupaccount/responses/smartwaretopupaccount_vendor_account_list__get_res.dart';
import 'package:test_output/models/smartwaretopupaccount/requests/smartwaretopupaccount_vendor_account_list__get_req.dart';
import 'package:test_output/models/smartwaretopupaccount/requests/smartwaretopupaccount_get_vendor_available_wallets__get_req.dart';
import 'package:test_output/models/smartwaretopupaccount/requests/smartwaretopupaccount_create__post_req.dart';
import 'package:test_output/models/smartwaretopupaccount/requests/smartwaretopupaccount_business_create__post_req.dart';

abstract class ISmartwaretopupaccountRepository {
  Future<Either<FailureDetails, void>> customerAccountListGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, VendorAccountListGetResponse>>
      vendorAccountListGet(
    VendorAccountListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> getVendorAvailableWalletsGet(
    GetVendorAvailableWalletsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> createPost(
    CreatePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> businessCreatePost(
    BusinessCreatePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class SmartwaretopupaccountRepositoryImpl
    implements ISmartwaretopupaccountRepository {
  SmartwaretopupaccountRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final ISmartwaretopupaccountDataSource _dataSource;

  final Failure _failure;

  @override
  Future<Either<FailureDetails, void>> customerAccountListGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.customerAccountListGet(
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, VendorAccountListGetResponse>>
      vendorAccountListGet(
    VendorAccountListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.vendorAccountListGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> getVendorAvailableWalletsGet(
    GetVendorAvailableWalletsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.getVendorAvailableWalletsGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> createPost(
    CreatePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.createPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> businessCreatePost(
    BusinessCreatePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.businessCreatePost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
