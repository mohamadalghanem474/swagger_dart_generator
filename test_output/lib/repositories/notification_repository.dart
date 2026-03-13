import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/notification_datasource.dart';
import 'package:test_output/models/notification/responses/notification_notification_list__get_res.dart';
import 'package:test_output/models/notification/responses/notification_recipient_notifications__get_res.dart';
import 'package:test_output/models/notification/responses/notification_notification_vendor_list__get_res.dart';
import 'package:test_output/models/notification/responses/notification_notification_category_list__get_res.dart';
import 'package:test_output/models/notification/responses/notification_notification_status_list__get_res.dart';
import 'package:test_output/models/notification/responses/notification_create_notification__post_res.dart';
import 'package:test_output/models/notification/responses/notification_driver_notifications__get_res.dart';
import 'package:test_output/models/notification/requests/notification_notification_list__get_req.dart';
import 'package:test_output/models/notification/requests/notification_recipient_notifications__get_req.dart';
import 'package:test_output/models/notification/requests/notification_notification_vendor_list__get_req.dart';
import 'package:test_output/models/notification/requests/notification_notification_category_list__get_req.dart';
import 'package:test_output/models/notification/requests/notification_notification_status_list__get_req.dart';
import 'package:test_output/models/notification/requests/notification_create_notification__post_req.dart';

abstract class INotificationRepository {
  Future<Either<FailureDetails, NotificationListGetResponse>>
      notificationListGet(
    NotificationListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, RecipientNotificationsGetResponse>>
      recipientNotificationsGet(
    RecipientNotificationsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, NotificationVendorListGetResponse>>
      notificationVendorListGet(
    NotificationVendorListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, NotificationCategoryListGetResponse>>
      notificationCategoryListGet(
    NotificationCategoryListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, NotificationStatusListGetResponse>>
      notificationStatusListGet(
    NotificationStatusListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, CreateNotificationPostResponse>>
      createNotificationPost(
    CreateNotificationPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, DriverNotificationsGetResponse>>
      driverNotificationsGet({
    CancelToken? cancelToken,
    Options? options,
  });
}

class NotificationRepositoryImpl implements INotificationRepository {
  NotificationRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final INotificationDataSource _dataSource;

  final Failure _failure;

  @override
  Future<Either<FailureDetails, NotificationListGetResponse>>
      notificationListGet(
    NotificationListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.notificationListGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, RecipientNotificationsGetResponse>>
      recipientNotificationsGet(
    RecipientNotificationsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.recipientNotificationsGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, NotificationVendorListGetResponse>>
      notificationVendorListGet(
    NotificationVendorListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.notificationVendorListGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, NotificationCategoryListGetResponse>>
      notificationCategoryListGet(
    NotificationCategoryListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.notificationCategoryListGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, NotificationStatusListGetResponse>>
      notificationStatusListGet(
    NotificationStatusListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.notificationStatusListGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, CreateNotificationPostResponse>>
      createNotificationPost(
    CreateNotificationPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.createNotificationPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, DriverNotificationsGetResponse>>
      driverNotificationsGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.driverNotificationsGet(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
