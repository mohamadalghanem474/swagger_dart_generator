import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';
import 'package:test_output/models/home/responses/home_business_dashboard__get_res.dart';
import 'package:test_output/models/home/requests/home_lat_lng_by_address__get_req.dart';

abstract class IHomeDataSource {
  Future<BusinessDashboardGetResponse> businessDashboardGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> latLngByAddressGet(
    LatLngByAddressGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class HomeDataSourceImpl implements IHomeDataSource {
  HomeDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<BusinessDashboardGetResponse> businessDashboardGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.home.businessDashboardGet;
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return BusinessDashboardGetResponse.fromJson(result.data);
  }

  @override
  Future<void> latLngByAddressGet(
    LatLngByAddressGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.home.latLngByAddressGet;
    await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }
}
