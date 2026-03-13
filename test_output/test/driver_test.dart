import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/driver_repository.dart';
import 'package:test_output/models/driver/requests/driver_check_driver_exist__post_req.dart';
import 'package:test_output/models/driver/requests/driver_get_all_drivers__get_req.dart';
import 'package:test_output/models/driver/requests/driver_driver_info__get_req.dart';
import 'package:test_output/models/driver/requests/driver_driver_info__post_req.dart';
import 'package:test_output/models/driver/requests/driver_update_driver_location__post_req.dart';
import 'package:test_output/models/driver/requests/driver_get_checked_in_vehicle__post_req.dart';
import 'package:test_output/models/driver/requests/driver_check_out_driver__post_req.dart';
import 'package:test_output/models/driver/requests/driver_update_device_token__post_req.dart';
import 'package:test_output/models/driver/requests/driver_shipment_id__post_req.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('Driver Tests', () {
    test('checkDriverExistPost should return Right', () async {
      final req = CheckDriverExistPostRequest();
      final result = await api.driver.checkDriverExistPost(req);
      expect(result.isRight(), isTrue);
    });

    test('getAllDriversGet should return Right', () async {
      final req = GetAllDriversGetRequest();
      final result = await api.driver.getAllDriversGet(req);
      expect(result.isRight(), isTrue);
    });

    test('driverInfoGet should return Right', () async {
      final req = DriverInfoGetRequest();
      final result = await api.driver.driverInfoGet(req);
      expect(result.isRight(), isTrue);
    });

    test('driverInfoPost should return Right', () async {
      final req = DriverInfoPostRequest();
      final result = await api.driver.driverInfoPost(req);
      expect(result.isRight(), isTrue);
    });

    test('updateDriverLocationPost should return Right', () async {
      final req = UpdateDriverLocationPostRequest();
      final result = await api.driver.updateDriverLocationPost(req);
      expect(result.isRight(), isTrue);
    });

    test('getCheckedInVehiclePost should return Right', () async {
      final req = GetCheckedInVehiclePostRequest();
      final result = await api.driver.getCheckedInVehiclePost(req);
      expect(result.isRight(), isTrue);
    });

    test('checkOutDriverPost should return Right', () async {
      final req = CheckOutDriverPostRequest();
      final result = await api.driver.checkOutDriverPost(req);
      expect(result.isRight(), isTrue);
    });

    test('updateDeviceTokenPost should return Right', () async {
      final req = UpdateDeviceTokenPostRequest();
      final result = await api.driver.updateDeviceTokenPost(req);
      expect(result.isRight(), isTrue);
    });

    test('shipmentIdPost should return Right', () async {
      final req = ShipmentIdPostRequest();
      final result = await api.driver.shipmentIdPost(req);
      expect(result.isRight(), isTrue);
    });
  });
}
