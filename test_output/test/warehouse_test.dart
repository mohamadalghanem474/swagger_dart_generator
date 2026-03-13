import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/warehouse_repository.dart';
import 'package:test_output/models/warehouse/requests/warehouse_get_all__get_req.dart';
import 'package:test_output/models/warehouse/requests/warehouse_get_by_id__get_req.dart';
import 'package:test_output/models/warehouse/requests/warehouse_create__post_req.dart';
import 'package:test_output/models/warehouse/requests/warehouse_update__put_req.dart';
import 'package:test_output/models/warehouse/requests/warehouse_delete__delete_req.dart';
import 'package:test_output/models/warehouse/requests/warehouse_create_warehouse_for_market_place__post_req.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('Warehouse Tests', () {
    test('getAllGet should return Right', () async {
      final req = GetAllGetRequest();
      final result = await api.warehouse.getAllGet(req);
      expect(result.isRight(), isTrue);
    });

    test('getByIdGet should return Right', () async {
      final req = GetByIdGetRequest();
      final result = await api.warehouse.getByIdGet(req);
      expect(result.isRight(), isTrue);
    });

    test('createPost should return Right', () async {
      final req = CreatePostRequest();
      final result = await api.warehouse.createPost(req);
      expect(result.isRight(), isTrue);
    });

    test('updatePut should return Right', () async {
      final req = UpdatePutRequest();
      final result = await api.warehouse.updatePut(req);
      expect(result.isRight(), isTrue);
    });

    test('deleteDelete should return Right', () async {
      final req = DeleteDeleteRequest();
      final result = await api.warehouse.deleteDelete(req);
      expect(result.isRight(), isTrue);
    });

    test('createWarehouseForMarketPlacePost should return Right', () async {
      final req = CreateWarehouseForMarketPlacePostRequest();
      final result = await api.warehouse.createWarehouseForMarketPlacePost(req);
      expect(result.isRight(), isTrue);
    });
  });
}
