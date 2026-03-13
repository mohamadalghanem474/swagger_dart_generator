import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/notification_repository.dart';
import 'package:test_output/models/notification/requests/notification_notification_list__get_req.dart';
import 'package:test_output/models/notification/requests/notification_recipient_notifications__get_req.dart';
import 'package:test_output/models/notification/requests/notification_notification_vendor_list__get_req.dart';
import 'package:test_output/models/notification/requests/notification_notification_category_list__get_req.dart';
import 'package:test_output/models/notification/requests/notification_notification_status_list__get_req.dart';
import 'package:test_output/models/notification/requests/notification_create_notification__post_req.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('Notification Tests', () {
    test('notificationListGet should return Right', () async {
      final req = NotificationListGetRequest();
      final result = await api.notification.notificationListGet(req);
      expect(result.isRight(), isTrue);
    });

    test('recipientNotificationsGet should return Right', () async {
      final req = RecipientNotificationsGetRequest();
      final result = await api.notification.recipientNotificationsGet(req);
      expect(result.isRight(), isTrue);
    });

    test('notificationVendorListGet should return Right', () async {
      final req = NotificationVendorListGetRequest();
      final result = await api.notification.notificationVendorListGet(req);
      expect(result.isRight(), isTrue);
    });

    test('notificationCategoryListGet should return Right', () async {
      final req = NotificationCategoryListGetRequest();
      final result = await api.notification.notificationCategoryListGet(req);
      expect(result.isRight(), isTrue);
    });

    test('notificationStatusListGet should return Right', () async {
      final req = NotificationStatusListGetRequest();
      final result = await api.notification.notificationStatusListGet(req);
      expect(result.isRight(), isTrue);
    });

    test('createNotificationPost should return Right', () async {
      final req = CreateNotificationPostRequest();
      final result = await api.notification.createNotificationPost(req);
      expect(result.isRight(), isTrue);
    });

    test('driverNotificationsGet should return Right', () async {
      final result = await api.notification.driverNotificationsGet();
      expect(result.isRight(), isTrue);
    });
  });
}
