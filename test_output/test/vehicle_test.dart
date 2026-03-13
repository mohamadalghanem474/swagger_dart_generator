import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/vehicle_repository.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('Vehicle Tests', () {
    test('getAllDriverVehiclesGet should return Right', () async {
      final result = await api.vehicle.getAllDriverVehiclesGet();
      expect(result.isRight(), isTrue);
    });
  });
}
