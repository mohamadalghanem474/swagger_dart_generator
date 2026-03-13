import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';

abstract class ILanguageDataSource {
  Future<void> getAllLanguagesGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> getAllStoresGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> getMobileAppSettingGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> getIcarryPluginApiSettingGet({
    CancelToken? cancelToken,
    Options? options,
  });
}

class LanguageDataSourceImpl implements ILanguageDataSource {
  LanguageDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<void> getAllLanguagesGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.language.getAllLanguagesGet;
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> getAllStoresGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.language.getAllStoresGet;
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> getMobileAppSettingGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.language.getMobileAppSettingGet;
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> getIcarryPluginApiSettingGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.language.getIcarryPluginApiSettingGet;
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }
}
