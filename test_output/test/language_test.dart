import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/language_repository.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('Language Tests', () {
    test('getAllLanguagesGet should return Right', () async {
      final result = await api.language.getAllLanguagesGet();
      expect(result.isRight(), isTrue);
    });

    test('getAllStoresGet should return Right', () async {
      final result = await api.language.getAllStoresGet();
      expect(result.isRight(), isTrue);
    });

    test('getMobileAppSettingGet should return Right', () async {
      final result = await api.language.getMobileAppSettingGet();
      expect(result.isRight(), isTrue);
    });

    test('getIcarryPluginApiSettingGet should return Right', () async {
      final result = await api.language.getIcarryPluginApiSettingGet();
      expect(result.isRight(), isTrue);
    });
  });
}
