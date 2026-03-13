import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/smartwarecarrier_repository.dart';
import 'package:test_output/models/smartwarecarrier/requests/smartwarecarrier_carrier_vendor_list__get_req.dart';
import 'package:test_output/models/smartwarecarrier/requests/smartwarecarrier_add_customer_disabled__post_req.dart';
import 'package:test_output/models/smartwarecarrier/requests/smartwarecarrier_add_vendor_disabled__post_req.dart';
import 'package:test_output/models/smartwarecarrier/requests/smartwarecarrier_get_carrier_sub_status_list__post_req.dart';
import 'package:test_output/models/smartwarecarrier/requests/smartwarecarrier_add_carrier_sub_status_to_shipments__post_req.dart';
import 'package:test_output/models/smartwarecarrier/requests/smartwarecarrier_reschedule_shipment_by_sub_status_id__post_req.dart';
import 'package:test_output/models/smartwarecarrier/requests/smartwarecarrier_get_shipments_by_station_id__get_req.dart';
import 'package:test_output/models/smartwarecarrier/requests/smartwarecarrier_get_shipments_for_current_station_manager__post_req.dart';
import 'package:test_output/models/smartwarecarrier/requests/smartwarecarrier_get_station_for_current_manager__post_req.dart';
import 'package:test_output/models/smartwarecarrier/requests/smartwarecarrier_install__get_req.dart';
import 'package:test_output/models/smartwarecarrier/requests/smartwarecarrier_armada_callback__post_req.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('Smartwarecarrier Tests', () {
    test('carrierCustomerListGet should return Right', () async {
      final result = await api.smartwarecarrier.carrierCustomerListGet();
      expect(result.isRight(), isTrue);
    });

    test('carrierVendorListGet should return Right', () async {
      final req = CarrierVendorListGetRequest();
      final result = await api.smartwarecarrier.carrierVendorListGet(req);
      expect(result.isRight(), isTrue);
    });

    test('addCustomerDisabledPost should return Right', () async {
      final req = AddCustomerDisabledPostRequest();
      final result = await api.smartwarecarrier.addCustomerDisabledPost(req);
      expect(result.isRight(), isTrue);
    });

    test('addVendorDisabledPost should return Right', () async {
      final req = AddVendorDisabledPostRequest();
      final result = await api.smartwarecarrier.addVendorDisabledPost(req);
      expect(result.isRight(), isTrue);
    });

    test('getCarrierSubStatusListPost should return Right', () async {
      final req = GetCarrierSubStatusListPostRequest();
      final result =
          await api.smartwarecarrier.getCarrierSubStatusListPost(req);
      expect(result.isRight(), isTrue);
    });

    test('addCarrierSubStatusToShipmentsPost should return Right', () async {
      final req = AddCarrierSubStatusToShipmentsPostRequest();
      final result =
          await api.smartwarecarrier.addCarrierSubStatusToShipmentsPost(req);
      expect(result.isRight(), isTrue);
    });

    test('rescheduleShipmentBySubStatusIdPost should return Right', () async {
      final req = RescheduleShipmentBySubStatusIdPostRequest();
      final result =
          await api.smartwarecarrier.rescheduleShipmentBySubStatusIdPost(req);
      expect(result.isRight(), isTrue);
    });

    test('subStatusesCollectionGet should return Right', () async {
      final result = await api.smartwarecarrier.subStatusesCollectionGet();
      expect(result.isRight(), isTrue);
    });

    test('assignShipmentsToDriverPost should return Right', () async {
      final result = await api.smartwarecarrier.assignShipmentsToDriverPost();
      expect(result.isRight(), isTrue);
    });

    test('assignShipmentsToStationPost should return Right', () async {
      final result = await api.smartwarecarrier.assignShipmentsToStationPost();
      expect(result.isRight(), isTrue);
    });

    test('getShipmentsByStationIdGet should return Right', () async {
      final req = GetShipmentsByStationIdGetRequest();
      final result = await api.smartwarecarrier.getShipmentsByStationIdGet(req);
      expect(result.isRight(), isTrue);
    });

    test('getShipmentsForCurrentStationManagerPost should return Right',
        () async {
      final req = GetShipmentsForCurrentStationManagerPostRequest();
      final result = await api.smartwarecarrier
          .getShipmentsForCurrentStationManagerPost(req);
      expect(result.isRight(), isTrue);
    });

    test('getStationForCurrentManagerPost should return Right', () async {
      final req = GetStationForCurrentManagerPostRequest();
      final result =
          await api.smartwarecarrier.getStationForCurrentManagerPost(req);
      expect(result.isRight(), isTrue);
    });

    test('installGet should return Right', () async {
      final req = InstallGetRequest();
      final result = await api.smartwarecarrier.installGet(req);
      expect(result.isRight(), isTrue);
    });

    test('armadaCallbackPost should return Right', () async {
      final req = ArmadaCallbackPostRequest();
      final result = await api.smartwarecarrier.armadaCallbackPost(req);
      expect(result.isRight(), isTrue);
    });
  });
}
