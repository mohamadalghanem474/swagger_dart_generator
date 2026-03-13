import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/home_repository.dart';
import 'package:test_output/models/home/requests/home_lat_lng_by_address__get_req.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('Home Tests', () {
    test('businessDashboardGet should return Right', () async {
      final result = await api.home.businessDashboardGet();
      expect(result.isRight(), isTrue);
    });

    test('latLngByAddressGet should return Right', () async {
      final req = LatLngByAddressGetRequest();
      final result = await api.home.latLngByAddressGet(req);
      expect(result.isRight(), isTrue);
    });
  });
}
