import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/country_repository.dart';
import 'package:test_output/models/country/requests/country_get_states_by_country_id__get_req.dart';
import 'package:test_output/models/country/requests/country_get_by_id__get_req.dart';
import 'package:test_output/models/country/requests/country_get_state_provinces_by_id__get_req.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('Country Tests', () {
    test('getAllCountryGet should return Right', () async {
      final result = await api.country.getAllCountryGet();
      expect(result.isRight(), isTrue);
    });

    test('getStatesByCountryIdGet should return Right', () async {
      final req = GetStatesByCountryIdGetRequest();
      final result = await api.country.getStatesByCountryIdGet(req);
      expect(result.isRight(), isTrue);
    });

    test('getByIdGet should return Right', () async {
      final req = GetByIdGetRequest();
      final result = await api.country.getByIdGet(req);
      expect(result.isRight(), isTrue);
    });

    test('getStateProvincesByIdGet should return Right', () async {
      final req = GetStateProvincesByIdGetRequest();
      final result = await api.country.getStateProvincesByIdGet(req);
      expect(result.isRight(), isTrue);
    });
  });
}
