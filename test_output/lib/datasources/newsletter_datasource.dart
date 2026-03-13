import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';
import 'package:test_output/models/newsletter/requests/newsletter_subscribe_newsletter__get_req.dart';
import 'package:test_output/models/newsletter/requests/newsletter_subscription_activation__get_req.dart';
import 'package:test_output/models/newsletter/responses/newsletter_subscription_activation__get_res.dart';

abstract class INewsletterDataSource {
  Future<void> subscribeNewsletterGet(
    SubscribeNewsletterGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<SubscriptionActivationGetResponse> subscriptionActivationGet(
    SubscriptionActivationGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class NewsletterDataSourceImpl implements INewsletterDataSource {
  NewsletterDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<void> subscribeNewsletterGet(
    SubscribeNewsletterGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.newsletter.subscribeNewsletterGet;
    await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<SubscriptionActivationGetResponse> subscriptionActivationGet(
    SubscriptionActivationGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.newsletter.subscriptionActivationGet;
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return SubscriptionActivationGetResponse.fromJson(result.data);
  }
}
