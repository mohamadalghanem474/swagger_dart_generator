import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';
import 'package:test_output/models/country/requests/country_get_states_by_country_id__get_req.dart';
import 'package:test_output/models/country/requests/country_get_by_id__get_req.dart';
import 'package:test_output/models/country/responses/country_get_by_id__get_res.dart';
import 'package:test_output/models/country/requests/country_get_state_provinces_by_id__get_req.dart';
import 'package:test_output/models/country/responses/country_get_state_provinces_by_id__get_res.dart';

abstract class ICountryDataSource {
  Future<void> getAllCountryGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> getStatesByCountryIdGet(
    GetStatesByCountryIdGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<GetByIdGetResponse> getByIdGet(
    GetByIdGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<GetStateProvincesByIdGetResponse> getStateProvincesByIdGet(
    GetStateProvincesByIdGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class CountryDataSourceImpl implements ICountryDataSource {
  CountryDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<void> getAllCountryGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.country.getAllCountryGet;
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> getStatesByCountryIdGet(
    GetStatesByCountryIdGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.country.getStatesByCountryIdGet;
    url = url.replaceAll(
      '{countryId}',
      req.countryid?.toString() ?? '',
    );
    await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<GetByIdGetResponse> getByIdGet(
    GetByIdGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.country.getByIdGet;
    url = url.replaceAll(
      '{id}',
      req.id?.toString() ?? '',
    );
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return GetByIdGetResponse.fromJson(result.data);
  }

  @override
  Future<GetStateProvincesByIdGetResponse> getStateProvincesByIdGet(
    GetStateProvincesByIdGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.country.getStateProvincesByIdGet;
    url = url.replaceAll(
      '{id}',
      req.id?.toString() ?? '',
    );
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return GetStateProvincesByIdGetResponse.fromJson(result.data);
  }
}
