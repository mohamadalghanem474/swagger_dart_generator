import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_get_driver_shipment_history_list__get_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_create_individual_shipment__post_req.dart';
import 'package:test_output/models/smartwareshipment/responses/smartwareshipment_create_individual_shipment__post_res.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_delete_shipment__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_create_shipment_order__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_create_ondemand_shipment_order__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_payment_redirect_action__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_monty_pay_success_return_url__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_monty_pay_cancel_return_url__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_confirm_payment__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_create_on_demand_shipment__post_req.dart';
import 'package:test_output/models/smartwareshipment/responses/smartwareshipment_create_on_demand_shipment__post_res.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_create_business__post_req.dart';
import 'package:test_output/models/smartwareshipment/responses/smartwareshipment_create_business__post_res.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_create_business_shipment_details__post_req.dart';
import 'package:test_output/models/smartwareshipment/responses/smartwareshipment_create_business_shipment_details__post_res.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_get_shipping_options__post_req.dart';
import 'package:test_output/models/smartwareshipment/responses/smartwareshipment_get_shipping_options__post_res.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_create_business_shipment_carrier__post_req.dart';
import 'package:test_output/models/smartwareshipment/responses/smartwareshipment_create_business_shipment_carrier__post_res.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_create_business_shipment_order__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_return_business_shipment_details__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_return_business_shipment__post_req.dart';
import 'package:test_output/models/smartwareshipment/responses/smartwareshipment_return_business_shipment__post_res.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_cancel_shipment__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_cancel_shipment_on_demand__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_cancel_shipment_by_external_id__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_get_shipment_by_external_id__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_estimate_rates__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_estimate_rates_by_c_o_d__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_estimate_rates_for_marketplace__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_create_order__post_req.dart';
import 'package:test_output/models/smartwareshipment/responses/smartwareshipment_create_order__post_res.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_return_order__post_req.dart';
import 'package:test_output/models/smartwareshipment/responses/smartwareshipment_return_order__post_res.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_create_order_for_market_place__post_req.dart';
import 'package:test_output/models/smartwareshipment/responses/smartwareshipment_create_order_for_market_place__post_res.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_return_order_for_market_place__post_req.dart';
import 'package:test_output/models/smartwareshipment/responses/smartwareshipment_return_order_for_market_place__post_res.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_cancel_order__get_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_order_tracking__get_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_failed_connectors_requests__get_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_get_failed_connector_request__get_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_add_shipment_from_failed_connector_request__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_get_carrier_by_shipment__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_pdf_packaging_slip__get_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_create_shipment_cod_collection__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_update_shipment_fulfill_status__post_req.dart';

abstract class ISmartwareshipmentDataSource {
  Future<void> getDriverShipmentHistoryListGet(
    GetDriverShipmentHistoryListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> getDriverActiveShipmentListGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> createDriverShipmentCollectionPost({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<CreateIndividualShipmentPostResponse> createIndividualShipmentPost(
    CreateIndividualShipmentPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> deleteShipmentPost(
    DeleteShipmentPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> createShipmentOrderPost(
    CreateShipmentOrderPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> createOndemandShipmentOrderPost(
    CreateOndemandShipmentOrderPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> paymentRedirectActionPost(
    PaymentRedirectActionPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> montyPaySuccessReturnUrlPost(
    MontyPaySuccessReturnUrlPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> montyPayCancelReturnUrlPost(
    MontyPayCancelReturnUrlPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> confirmPaymentPost(
    ConfirmPaymentPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<CreateOnDemandShipmentPostResponse> createOnDemandShipmentPost(
    CreateOnDemandShipmentPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<CreateBusinessPostResponse> createBusinessPost(
    CreateBusinessPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<CreateBusinessShipmentDetailsPostResponse>
      createBusinessShipmentDetailsPost(
    CreateBusinessShipmentDetailsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<GetShippingOptionsPostResponse> getShippingOptionsPost(
    GetShippingOptionsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<CreateBusinessShipmentCarrierPostResponse>
      createBusinessShipmentCarrierPost(
    CreateBusinessShipmentCarrierPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> createBusinessShipmentOrderPost(
    CreateBusinessShipmentOrderPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> returnBusinessShipmentDetailsPost(
    ReturnBusinessShipmentDetailsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<ReturnBusinessShipmentPostResponse> returnBusinessShipmentPost(
    ReturnBusinessShipmentPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> cancelShipmentPost(
    CancelShipmentPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> cancelShipmentOnDemandPost(
    CancelShipmentOnDemandPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> cancelShipmentByExternalIdPost(
    CancelShipmentByExternalIdPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> getShipmentByExternalIdPost(
    GetShipmentByExternalIdPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> estimateRatesPost(
    EstimateRatesPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> estimateRatesByCODPost(
    EstimateRatesByCODPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> estimateRatesForMarketplacePost(
    EstimateRatesForMarketplacePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<CreateOrderPostResponse> createOrderPost(
    CreateOrderPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<ReturnOrderPostResponse> returnOrderPost(
    ReturnOrderPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<CreateOrderForMarketPlacePostResponse> createOrderForMarketPlacePost(
    CreateOrderForMarketPlacePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<ReturnOrderForMarketPlacePostResponse> returnOrderForMarketPlacePost(
    ReturnOrderForMarketPlacePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> cancelOrderGet(
    CancelOrderGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> orderTrackingGet(
    OrderTrackingGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> failedConnectorsRequestsGet(
    FailedConnectorsRequestsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> getFailedConnectorRequestGet(
    GetFailedConnectorRequestGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> addShipmentFromFailedConnectorRequestPost(
    AddShipmentFromFailedConnectorRequestPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> getCarrierByShipmentPost(
    GetCarrierByShipmentPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> pdfPackagingSlipGet(
    PdfPackagingSlipGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> createShipmentCodCollectionPost(
    CreateShipmentCodCollectionPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> updateShipmentFulfillStatusPost(
    UpdateShipmentFulfillStatusPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class SmartwareshipmentDataSourceImpl implements ISmartwareshipmentDataSource {
  SmartwareshipmentDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<void> getDriverShipmentHistoryListGet(
    GetDriverShipmentHistoryListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwareshipment.getDriverShipmentHistoryListGet;
    await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> getDriverActiveShipmentListGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwareshipment.getDriverActiveShipmentListGet;
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> createDriverShipmentCollectionPost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwareshipment.createDriverShipmentCollectionPost;
    await _dio.post(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<CreateIndividualShipmentPostResponse> createIndividualShipmentPost(
    CreateIndividualShipmentPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwareshipment.createIndividualShipmentPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return CreateIndividualShipmentPostResponse.fromJson(result.data);
  }

  @override
  Future<void> deleteShipmentPost(
    DeleteShipmentPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwareshipment.deleteShipmentPost;
    url = url.replaceAll(
      '{shipmentId}',
      req.shipmentid?.toString() ?? '',
    );
    await _dio.post(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> createShipmentOrderPost(
    CreateShipmentOrderPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwareshipment.createShipmentOrderPost;
    url = url.replaceAll(
      '{shipmentId}',
      req.shipmentid?.toString() ?? '',
    );
    await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> createOndemandShipmentOrderPost(
    CreateOndemandShipmentOrderPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwareshipment.createOndemandShipmentOrderPost;
    url = url.replaceAll(
      '{shipmentId}',
      req.shipmentid?.toString() ?? '',
    );
    await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> paymentRedirectActionPost(
    PaymentRedirectActionPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwareshipment.paymentRedirectActionPost;
    await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> montyPaySuccessReturnUrlPost(
    MontyPaySuccessReturnUrlPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwareshipment.montyPaySuccessReturnUrlPost;
    await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> montyPayCancelReturnUrlPost(
    MontyPayCancelReturnUrlPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwareshipment.montyPayCancelReturnUrlPost;
    await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> confirmPaymentPost(
    ConfirmPaymentPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwareshipment.confirmPaymentPost;
    url = url.replaceAll(
      '{shipmentId}',
      req.shipmentid?.toString() ?? '',
    );
    await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<CreateOnDemandShipmentPostResponse> createOnDemandShipmentPost(
    CreateOnDemandShipmentPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwareshipment.createOnDemandShipmentPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return CreateOnDemandShipmentPostResponse.fromJson(result.data);
  }

  @override
  Future<CreateBusinessPostResponse> createBusinessPost(
    CreateBusinessPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwareshipment.createBusinessPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return CreateBusinessPostResponse.fromJson(result.data);
  }

  @override
  Future<CreateBusinessShipmentDetailsPostResponse>
      createBusinessShipmentDetailsPost(
    CreateBusinessShipmentDetailsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwareshipment.createBusinessShipmentDetailsPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return CreateBusinessShipmentDetailsPostResponse.fromJson(result.data);
  }

  @override
  Future<GetShippingOptionsPostResponse> getShippingOptionsPost(
    GetShippingOptionsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwareshipment.getShippingOptionsPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return GetShippingOptionsPostResponse.fromJson(result.data);
  }

  @override
  Future<CreateBusinessShipmentCarrierPostResponse>
      createBusinessShipmentCarrierPost(
    CreateBusinessShipmentCarrierPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwareshipment.createBusinessShipmentCarrierPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return CreateBusinessShipmentCarrierPostResponse.fromJson(result.data);
  }

  @override
  Future<void> createBusinessShipmentOrderPost(
    CreateBusinessShipmentOrderPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwareshipment.createBusinessShipmentOrderPost;
    url = url.replaceAll(
      '{ShipmentId}',
      req.shipmentid?.toString() ?? '',
    );
    await _dio.post(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> returnBusinessShipmentDetailsPost(
    ReturnBusinessShipmentDetailsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwareshipment.returnBusinessShipmentDetailsPost;
    await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<ReturnBusinessShipmentPostResponse> returnBusinessShipmentPost(
    ReturnBusinessShipmentPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwareshipment.returnBusinessShipmentPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return ReturnBusinessShipmentPostResponse.fromJson(result.data);
  }

  @override
  Future<void> cancelShipmentPost(
    CancelShipmentPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwareshipment.cancelShipmentPost;
    url = url.replaceAll(
      '{shipmentId}',
      req.shipmentid?.toString() ?? '',
    );
    await _dio.post(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> cancelShipmentOnDemandPost(
    CancelShipmentOnDemandPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwareshipment.cancelShipmentOnDemandPost;
    url = url.replaceAll(
      '{shipmentId}',
      req.shipmentid?.toString() ?? '',
    );
    await _dio.post(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> cancelShipmentByExternalIdPost(
    CancelShipmentByExternalIdPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwareshipment.cancelShipmentByExternalIdPost;
    url = url.replaceAll(
      '{externalId}',
      req.externalid?.toString() ?? '',
    );
    await _dio.post(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> getShipmentByExternalIdPost(
    GetShipmentByExternalIdPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwareshipment.getShipmentByExternalIdPost;
    url = url.replaceAll(
      '{externalId}',
      req.externalid?.toString() ?? '',
    );
    await _dio.post(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> estimateRatesPost(
    EstimateRatesPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwareshipment.estimateRatesPost;
    await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> estimateRatesByCODPost(
    EstimateRatesByCODPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwareshipment.estimateRatesByCODPost;
    await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> estimateRatesForMarketplacePost(
    EstimateRatesForMarketplacePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwareshipment.estimateRatesForMarketplacePost;
    await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<CreateOrderPostResponse> createOrderPost(
    CreateOrderPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwareshipment.createOrderPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return CreateOrderPostResponse.fromJson(result.data);
  }

  @override
  Future<ReturnOrderPostResponse> returnOrderPost(
    ReturnOrderPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwareshipment.returnOrderPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return ReturnOrderPostResponse.fromJson(result.data);
  }

  @override
  Future<CreateOrderForMarketPlacePostResponse> createOrderForMarketPlacePost(
    CreateOrderForMarketPlacePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwareshipment.createOrderForMarketPlacePost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return CreateOrderForMarketPlacePostResponse.fromJson(result.data);
  }

  @override
  Future<ReturnOrderForMarketPlacePostResponse> returnOrderForMarketPlacePost(
    ReturnOrderForMarketPlacePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwareshipment.returnOrderForMarketPlacePost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return ReturnOrderForMarketPlacePostResponse.fromJson(result.data);
  }

  @override
  Future<void> cancelOrderGet(
    CancelOrderGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwareshipment.cancelOrderGet;
    await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> orderTrackingGet(
    OrderTrackingGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwareshipment.orderTrackingGet;
    await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> failedConnectorsRequestsGet(
    FailedConnectorsRequestsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwareshipment.failedConnectorsRequestsGet;
    await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> getFailedConnectorRequestGet(
    GetFailedConnectorRequestGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwareshipment.getFailedConnectorRequestGet;
    await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> addShipmentFromFailedConnectorRequestPost(
    AddShipmentFromFailedConnectorRequestPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url =
        EndPoints.smartwareshipment.addShipmentFromFailedConnectorRequestPost;
    await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> getCarrierByShipmentPost(
    GetCarrierByShipmentPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwareshipment.getCarrierByShipmentPost;
    url = url.replaceAll(
      '{shipmentId}',
      req.shipmentid?.toString() ?? '',
    );
    await _dio.post(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> pdfPackagingSlipGet(
    PdfPackagingSlipGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwareshipment.pdfPackagingSlipGet;
    url = url.replaceAll(
      '{shipmentId}',
      req.shipmentid?.toString() ?? '',
    );
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> createShipmentCodCollectionPost(
    CreateShipmentCodCollectionPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwareshipment.createShipmentCodCollectionPost;
    url = url.replaceAll(
      '{shipmentId}',
      req.shipmentid?.toString() ?? '',
    );
    await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> updateShipmentFulfillStatusPost(
    UpdateShipmentFulfillStatusPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.smartwareshipment.updateShipmentFulfillStatusPost;
    url = url.replaceAll(
      '{shipmentId}',
      req.shipmentid?.toString() ?? '',
    );
    await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }
}
