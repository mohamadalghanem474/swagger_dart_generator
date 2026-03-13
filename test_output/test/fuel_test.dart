import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/fuel_repository.dart';
import 'package:test_output/models/fuel/requests/fuel_fuel_list__get_req.dart';
import 'package:test_output/models/fuel/requests/fuel_details__get_req.dart';
import 'package:test_output/models/fuel/requests/fuel_create_fuel__post_req.dart';
import 'package:test_output/models/fuel/requests/fuel_update_fuel__put_req.dart';
import 'package:test_output/models/fuel/requests/fuel_delete_fuel__delete_req.dart';
import 'package:test_output/models/fuel/requests/fuel_id__post_req.dart';
import 'package:test_output/models/fuel/requests/fuel_remove_fuel_attachment__delete_req.dart';
import 'package:test_output/models/fuel/requests/fuel_cost_reports_list__get_req.dart';
import 'package:test_output/models/fuel/requests/fuel_cost_report_details__get_req.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('Fuel Tests', () {
    test('getAllVehiclesGet should return Right', () async {
      final result = await api.fuel.getAllVehiclesGet();
      expect(result.isRight(), isTrue);
    });

    test('getAllVendorsGet should return Right', () async {
      final result = await api.fuel.getAllVendorsGet();
      expect(result.isRight(), isTrue);
    });

    test('fuelListGet should return Right', () async {
      final req = FuelListGetRequest();
      final result = await api.fuel.fuelListGet(req);
      expect(result.isRight(), isTrue);
    });

    test('detailsGet should return Right', () async {
      final req = DetailsGetRequest();
      final result = await api.fuel.detailsGet(req);
      expect(result.isRight(), isTrue);
    });

    test('createFuelPost should return Right', () async {
      final req = CreateFuelPostRequest();
      final result = await api.fuel.createFuelPost(req);
      expect(result.isRight(), isTrue);
    });

    test('updateFuelPut should return Right', () async {
      final req = UpdateFuelPutRequest();
      final result = await api.fuel.updateFuelPut(req);
      expect(result.isRight(), isTrue);
    });

    test('deleteFuelDelete should return Right', () async {
      final req = DeleteFuelDeleteRequest();
      final result = await api.fuel.deleteFuelDelete(req);
      expect(result.isRight(), isTrue);
    });

    test('idPost should return Right', () async {
      final req = IdPostRequest();
      final result = await api.fuel.idPost(req);
      expect(result.isRight(), isTrue);
    });

    test('removeFuelAttachmentDelete should return Right', () async {
      final req = RemoveFuelAttachmentDeleteRequest();
      final result = await api.fuel.removeFuelAttachmentDelete(req);
      expect(result.isRight(), isTrue);
    });

    test('costReportsListGet should return Right', () async {
      final req = CostReportsListGetRequest();
      final result = await api.fuel.costReportsListGet(req);
      expect(result.isRight(), isTrue);
    });

    test('costReportDetailsGet should return Right', () async {
      final req = CostReportDetailsGetRequest();
      final result = await api.fuel.costReportDetailsGet(req);
      expect(result.isRight(), isTrue);
    });
  });
}
