import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';
import 'package:test_output/models/backinstocksubscription/requests/backinstocksubscription_subscribe_popup__get_req.dart';
import 'package:test_output/models/backinstocksubscription/responses/backinstocksubscription_subscribe_popup__get_res.dart';
import 'package:test_output/models/backinstocksubscription/requests/backinstocksubscription_subscribe_popup_p_o_s_t__post_req.dart';
import 'package:test_output/models/backinstocksubscription/requests/backinstocksubscription_customer_subscriptions__get_req.dart';
import 'package:test_output/models/backinstocksubscription/responses/backinstocksubscription_customer_subscriptions__get_res.dart';
import 'package:test_output/models/backinstocksubscription/responses/backinstocksubscription_customer_subscriptions_p_o_s_t__post_res.dart';

abstract class IBackinstocksubscriptionDataSource {
  Future<SubscribePopupGetResponse> subscribePopupGet(
    SubscribePopupGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> subscribePopupPOSTPost(
    SubscribePopupPOSTPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<CustomerSubscriptionsGetResponse> customerSubscriptionsGet(
    CustomerSubscriptionsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<CustomerSubscriptionsPOSTPostResponse> customerSubscriptionsPOSTPost({
    CancelToken? cancelToken,
    Options? options,
  });
}

class BackinstocksubscriptionDataSourceImpl
    implements IBackinstocksubscriptionDataSource {
  BackinstocksubscriptionDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<SubscribePopupGetResponse> subscribePopupGet(
    SubscribePopupGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.backinstocksubscription.subscribePopupGet;
    url = url.replaceAll(
      '{productId}',
      req.productid?.toString() ?? '',
    );
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return SubscribePopupGetResponse.fromJson(result.data);
  }

  @override
  Future<void> subscribePopupPOSTPost(
    SubscribePopupPOSTPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.backinstocksubscription.subscribePopupPOSTPost;
    url = url.replaceAll(
      '{productId}',
      req.productid?.toString() ?? '',
    );
    await _dio.post(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<CustomerSubscriptionsGetResponse> customerSubscriptionsGet(
    CustomerSubscriptionsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.backinstocksubscription.customerSubscriptionsGet;
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return CustomerSubscriptionsGetResponse.fromJson(result.data);
  }

  @override
  Future<CustomerSubscriptionsPOSTPostResponse> customerSubscriptionsPOSTPost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.backinstocksubscription.customerSubscriptionsPOSTPost;
    final result = await _dio.post(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return CustomerSubscriptionsPOSTPostResponse.fromJson(result.data);
  }
}
