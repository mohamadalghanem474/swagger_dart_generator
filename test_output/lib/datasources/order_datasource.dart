import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';
import 'package:test_output/models/order/requests/order_confirm_three_d_payment__get_req.dart';
import 'package:test_output/models/order/responses/order_customer_orders__get_res.dart';
import 'package:test_output/models/order/responses/order_cancel_recurring_payment__post_res.dart';
import 'package:test_output/models/order/responses/order_retry_last_recurring_payment__post_res.dart';
import 'package:test_output/models/order/requests/order_customer_reward_points__get_req.dart';
import 'package:test_output/models/order/responses/order_customer_reward_points__get_res.dart';
import 'package:test_output/models/order/requests/order_details__get_req.dart';
import 'package:test_output/models/order/responses/order_details__get_res.dart';
import 'package:test_output/models/order/requests/order_get_pdf_invoice__get_req.dart';
import 'package:test_output/models/order/requests/order_re_order__get_req.dart';
import 'package:test_output/models/order/requests/order_re_post_payment__get_req.dart';
import 'package:test_output/models/order/requests/order_shipment_details__get_req.dart';
import 'package:test_output/models/order/responses/order_shipment_details__get_res.dart';
import 'package:test_output/models/order/requests/order_update_shipment_events__post_req.dart';
import 'package:test_output/models/order/requests/order_webhook_updates__post_req.dart';
import 'package:test_output/models/order/requests/order_update_d_h_u_b_shipment_events__post_req.dart';
import 'package:test_output/models/order/requests/order_update_m_5_a_z_n_shipment_events__post_req.dart';
import 'package:test_output/models/order/requests/order_update_shipa_shipment_events__post_req.dart';
import 'package:test_output/models/order/requests/order_update_armada_shipment_events__post_req.dart';
import 'package:test_output/models/order/requests/order_order_list__get_req.dart';
import 'package:test_output/models/order/responses/order_order_list__get_res.dart';
import 'package:test_output/models/order/requests/order_order_vendor_list__get_req.dart';
import 'package:test_output/models/order/responses/order_order_vendor_list__get_res.dart';
import 'package:test_output/models/order/requests/order_settlment__post_req.dart';
import 'package:test_output/models/order/requests/order_settlment_orders__post_req.dart';
import 'package:test_output/models/order/requests/order_tracking_details__get_req.dart';
import 'package:test_output/models/order/responses/order_tracking_details__get_res.dart';
import 'package:test_output/models/order/requests/order_shipment_list__get_req.dart';
import 'package:test_output/models/order/responses/order_shipment_list__get_res.dart';
import 'package:test_output/models/order/requests/order_shipment_vendor_list__get_req.dart';
import 'package:test_output/models/order/responses/order_shipment_vendor_list__get_res.dart';
import 'package:test_output/models/order/requests/order_return_shipment_list__get_req.dart';
import 'package:test_output/models/order/responses/order_return_shipment_list__get_res.dart';
import 'package:test_output/models/order/requests/order_deliveries_list__get_req.dart';
import 'package:test_output/models/order/responses/order_deliveries_list__get_res.dart';

abstract class IOrderDataSource {
  Future<void> confirmThreeDPaymentGet(
    ConfirmThreeDPaymentGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<CustomerOrdersGetResponse> customerOrdersGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<CancelRecurringPaymentPostResponse> cancelRecurringPaymentPost({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<RetryLastRecurringPaymentPostResponse> retryLastRecurringPaymentPost({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<CustomerRewardPointsGetResponse> customerRewardPointsGet(
    CustomerRewardPointsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<DetailsGetResponse> detailsGet(
    DetailsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> getPdfInvoiceGet(
    GetPdfInvoiceGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> reOrderGet(
    ReOrderGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> rePostPaymentGet(
    RePostPaymentGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<ShipmentDetailsGetResponse> shipmentDetailsGet(
    ShipmentDetailsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> updateShipmentEventsPost(
    UpdateShipmentEventsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> webhookUpdatesPost(
    WebhookUpdatesPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> updateDHUBShipmentEventsPost(
    UpdateDHUBShipmentEventsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> updateM5AZNShipmentEventsPost(
    UpdateM5AZNShipmentEventsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> updateShipaShipmentEventsPost(
    UpdateShipaShipmentEventsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> updateArmadaShipmentEventsPost(
    UpdateArmadaShipmentEventsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<OrderListGetResponse> orderListGet(
    OrderListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<OrderVendorListGetResponse> orderVendorListGet(
    OrderVendorListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> settlmentPost(
    SettlmentPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> settlmentOrdersPost(
    SettlmentOrdersPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<TrackingDetailsGetResponse> trackingDetailsGet(
    TrackingDetailsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<ShipmentListGetResponse> shipmentListGet(
    ShipmentListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<ShipmentVendorListGetResponse> shipmentVendorListGet(
    ShipmentVendorListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<ReturnShipmentListGetResponse> returnShipmentListGet(
    ReturnShipmentListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<DeliveriesListGetResponse> deliveriesListGet(
    DeliveriesListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class OrderDataSourceImpl implements IOrderDataSource {
  OrderDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<void> confirmThreeDPaymentGet(
    ConfirmThreeDPaymentGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.order.confirmThreeDPaymentGet;
    url = url.replaceAll(
      '{shipmentId}',
      req.shipmentid?.toString() ?? '',
    );
    url = url.replaceAll(
      '{orderGuid}',
      req.orderguid?.toString() ?? '',
    );
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<CustomerOrdersGetResponse> customerOrdersGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.order.customerOrdersGet;
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return CustomerOrdersGetResponse.fromJson(result.data);
  }

  @override
  Future<CancelRecurringPaymentPostResponse> cancelRecurringPaymentPost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.order.cancelRecurringPaymentPost;
    final result = await _dio.post(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return CancelRecurringPaymentPostResponse.fromJson(result.data);
  }

  @override
  Future<RetryLastRecurringPaymentPostResponse> retryLastRecurringPaymentPost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.order.retryLastRecurringPaymentPost;
    final result = await _dio.post(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return RetryLastRecurringPaymentPostResponse.fromJson(result.data);
  }

  @override
  Future<CustomerRewardPointsGetResponse> customerRewardPointsGet(
    CustomerRewardPointsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.order.customerRewardPointsGet;
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return CustomerRewardPointsGetResponse.fromJson(result.data);
  }

  @override
  Future<DetailsGetResponse> detailsGet(
    DetailsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.order.detailsGet;
    url = url.replaceAll(
      '{orderId}',
      req.orderid?.toString() ?? '',
    );
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return DetailsGetResponse.fromJson(result.data);
  }

  @override
  Future<void> getPdfInvoiceGet(
    GetPdfInvoiceGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.order.getPdfInvoiceGet;
    url = url.replaceAll(
      '{orderId}',
      req.orderid?.toString() ?? '',
    );
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> reOrderGet(
    ReOrderGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.order.reOrderGet;
    url = url.replaceAll(
      '{orderId}',
      req.orderid?.toString() ?? '',
    );
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> rePostPaymentGet(
    RePostPaymentGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.order.rePostPaymentGet;
    url = url.replaceAll(
      '{orderId}',
      req.orderid?.toString() ?? '',
    );
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<ShipmentDetailsGetResponse> shipmentDetailsGet(
    ShipmentDetailsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.order.shipmentDetailsGet;
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return ShipmentDetailsGetResponse.fromJson(result.data);
  }

  @override
  Future<void> updateShipmentEventsPost(
    UpdateShipmentEventsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.order.updateShipmentEventsPost;
    await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> webhookUpdatesPost(
    WebhookUpdatesPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.order.webhookUpdatesPost;
    await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> updateDHUBShipmentEventsPost(
    UpdateDHUBShipmentEventsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.order.updateDHUBShipmentEventsPost;
    await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> updateM5AZNShipmentEventsPost(
    UpdateM5AZNShipmentEventsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.order.updateM5AZNShipmentEventsPost;
    await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> updateShipaShipmentEventsPost(
    UpdateShipaShipmentEventsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.order.updateShipaShipmentEventsPost;
    await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> updateArmadaShipmentEventsPost(
    UpdateArmadaShipmentEventsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.order.updateArmadaShipmentEventsPost;
    await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<OrderListGetResponse> orderListGet(
    OrderListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.order.orderListGet;
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return OrderListGetResponse.fromJson(result.data);
  }

  @override
  Future<OrderVendorListGetResponse> orderVendorListGet(
    OrderVendorListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.order.orderVendorListGet;
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return OrderVendorListGetResponse.fromJson(result.data);
  }

  @override
  Future<void> settlmentPost(
    SettlmentPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.order.settlmentPost;
    await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> settlmentOrdersPost(
    SettlmentOrdersPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.order.settlmentOrdersPost;
    await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<TrackingDetailsGetResponse> trackingDetailsGet(
    TrackingDetailsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.order.trackingDetailsGet;
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return TrackingDetailsGetResponse.fromJson(result.data);
  }

  @override
  Future<ShipmentListGetResponse> shipmentListGet(
    ShipmentListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.order.shipmentListGet;
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return ShipmentListGetResponse.fromJson(result.data);
  }

  @override
  Future<ShipmentVendorListGetResponse> shipmentVendorListGet(
    ShipmentVendorListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.order.shipmentVendorListGet;
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return ShipmentVendorListGetResponse.fromJson(result.data);
  }

  @override
  Future<ReturnShipmentListGetResponse> returnShipmentListGet(
    ReturnShipmentListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.order.returnShipmentListGet;
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return ReturnShipmentListGetResponse.fromJson(result.data);
  }

  @override
  Future<DeliveriesListGetResponse> deliveriesListGet(
    DeliveriesListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.order.deliveriesListGet;
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return DeliveriesListGetResponse.fromJson(result.data);
  }
}
