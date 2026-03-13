import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/vehicleservice_repository.dart';
import 'package:test_output/models/vehicleservice/requests/vehicleservice_service_logs_list__get_req.dart';
import 'package:test_output/models/vehicleservice/requests/vehicleservice_details__get_req.dart';
import 'package:test_output/models/vehicleservice/requests/vehicleservice_create_service_logs__post_req.dart';
import 'package:test_output/models/vehicleservice/requests/vehicleservice_update_service_log__put_req.dart';
import 'package:test_output/models/vehicleservice/requests/vehicleservice_delete_service_log__delete_req.dart';
import 'package:test_output/models/vehicleservice/requests/vehicleservice_id__post_req.dart';
import 'package:test_output/models/vehicleservice/requests/vehicleservice_remove_service_logs_attachment__delete_req.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('Vehicleservice Tests', () {
    test('serviceLogsListGet should return Right', () async {
      final req = ServiceLogsListGetRequest();
      final result = await api.vehicleservice.serviceLogsListGet(req);
      expect(result.isRight(), isTrue);
    });

    test('detailsGet should return Right', () async {
      final req = DetailsGetRequest();
      final result = await api.vehicleservice.detailsGet(req);
      expect(result.isRight(), isTrue);
    });

    test('createServiceLogsPost should return Right', () async {
      final req = CreateServiceLogsPostRequest();
      final result = await api.vehicleservice.createServiceLogsPost(req);
      expect(result.isRight(), isTrue);
    });

    test('updateServiceLogPut should return Right', () async {
      final req = UpdateServiceLogPutRequest();
      final result = await api.vehicleservice.updateServiceLogPut(req);
      expect(result.isRight(), isTrue);
    });

    test('deleteServiceLogDelete should return Right', () async {
      final req = DeleteServiceLogDeleteRequest();
      final result = await api.vehicleservice.deleteServiceLogDelete(req);
      expect(result.isRight(), isTrue);
    });

    test('idPost should return Right', () async {
      final req = IdPostRequest();
      final result = await api.vehicleservice.idPost(req);
      expect(result.isRight(), isTrue);
    });

    test('removeServiceLogsAttachmentDelete should return Right', () async {
      final req = RemoveServiceLogsAttachmentDeleteRequest();
      final result =
          await api.vehicleservice.removeServiceLogsAttachmentDelete(req);
      expect(result.isRight(), isTrue);
    });
  });
}
