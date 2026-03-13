import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/smartwarevendorsubscription_datasource.dart';
import 'package:test_output/models/smartwarevendorsubscription/responses/smartwarevendorsubscription_vendor_subscription_custom_attr_by_system_name__get_res.dart';
import 'package:test_output/models/smartwarevendorsubscription/requests/smartwarevendorsubscription_vendor_subscription_custom_attr_by_system_name__get_req.dart';

abstract class ISmartwarevendorsubscriptionRepository {
  Future<Either<FailureDetails, void>> companyProfileGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> listGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> vendorSubscriptionCustomAttrGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<
          Either<FailureDetails,
              VendorSubscriptionCustomAttrBySystemNameGetResponse>>
      vendorSubscriptionCustomAttrBySystemNameGet(
    VendorSubscriptionCustomAttrBySystemNameGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class SmartwarevendorsubscriptionRepositoryImpl
    implements ISmartwarevendorsubscriptionRepository {
  SmartwarevendorsubscriptionRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final ISmartwarevendorsubscriptionDataSource _dataSource;

  final Failure _failure;

  @override
  Future<Either<FailureDetails, void>> companyProfileGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.companyProfileGet(
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> listGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.listGet(cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> vendorSubscriptionCustomAttrGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.vendorSubscriptionCustomAttrGet(
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<
          Either<FailureDetails,
              VendorSubscriptionCustomAttrBySystemNameGetResponse>>
      vendorSubscriptionCustomAttrBySystemNameGet(
    VendorSubscriptionCustomAttrBySystemNameGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result =
          await _dataSource.vendorSubscriptionCustomAttrBySystemNameGet(req,
              cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
