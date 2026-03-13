import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';
import 'package:test_output/models/notification/requests/notification_notification_list__get_req.dart';
import 'package:test_output/models/notification/responses/notification_notification_list__get_res.dart';
import 'package:test_output/models/notification/requests/notification_recipient_notifications__get_req.dart';
import 'package:test_output/models/notification/responses/notification_recipient_notifications__get_res.dart';
import 'package:test_output/models/notification/requests/notification_notification_vendor_list__get_req.dart';
import 'package:test_output/models/notification/responses/notification_notification_vendor_list__get_res.dart';
import 'package:test_output/models/notification/requests/notification_notification_category_list__get_req.dart';
import 'package:test_output/models/notification/responses/notification_notification_category_list__get_res.dart';
import 'package:test_output/models/notification/requests/notification_notification_status_list__get_req.dart';
import 'package:test_output/models/notification/responses/notification_notification_status_list__get_res.dart';
import 'package:test_output/models/notification/requests/notification_create_notification__post_req.dart';
import 'package:test_output/models/notification/responses/notification_create_notification__post_res.dart';
import 'package:test_output/models/notification/responses/notification_driver_notifications__get_res.dart';

abstract class INotificationDataSource {
  Future<NotificationListGetResponse> notificationListGet(
    NotificationListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<RecipientNotificationsGetResponse> recipientNotificationsGet(
    RecipientNotificationsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<NotificationVendorListGetResponse> notificationVendorListGet(
    NotificationVendorListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<NotificationCategoryListGetResponse> notificationCategoryListGet(
    NotificationCategoryListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<NotificationStatusListGetResponse> notificationStatusListGet(
    NotificationStatusListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<CreateNotificationPostResponse> createNotificationPost(
    CreateNotificationPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<DriverNotificationsGetResponse> driverNotificationsGet({
    CancelToken? cancelToken,
    Options? options,
  });
}

class NotificationDataSourceImpl implements INotificationDataSource {
  NotificationDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<NotificationListGetResponse> notificationListGet(
    NotificationListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.notification.notificationListGet;
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return NotificationListGetResponse.fromJson(result.data);
  }

  @override
  Future<RecipientNotificationsGetResponse> recipientNotificationsGet(
    RecipientNotificationsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.notification.recipientNotificationsGet;
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return RecipientNotificationsGetResponse.fromJson(result.data);
  }

  @override
  Future<NotificationVendorListGetResponse> notificationVendorListGet(
    NotificationVendorListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.notification.notificationVendorListGet;
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return NotificationVendorListGetResponse.fromJson(result.data);
  }

  @override
  Future<NotificationCategoryListGetResponse> notificationCategoryListGet(
    NotificationCategoryListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.notification.notificationCategoryListGet;
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return NotificationCategoryListGetResponse.fromJson(result.data);
  }

  @override
  Future<NotificationStatusListGetResponse> notificationStatusListGet(
    NotificationStatusListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.notification.notificationStatusListGet;
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return NotificationStatusListGetResponse.fromJson(result.data);
  }

  @override
  Future<CreateNotificationPostResponse> createNotificationPost(
    CreateNotificationPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.notification.createNotificationPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return CreateNotificationPostResponse.fromJson(result.data);
  }

  @override
  Future<DriverNotificationsGetResponse> driverNotificationsGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.notification.driverNotificationsGet;
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return DriverNotificationsGetResponse.fromJson(result.data);
  }
}
