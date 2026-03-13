import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/order_datasource.dart';
import 'package:test_output/models/order/responses/order_customer_orders__get_res.dart';
import 'package:test_output/models/order/responses/order_cancel_recurring_payment__post_res.dart';
import 'package:test_output/models/order/responses/order_retry_last_recurring_payment__post_res.dart';
import 'package:test_output/models/order/responses/order_customer_reward_points__get_res.dart';
import 'package:test_output/models/order/responses/order_details__get_res.dart';
import 'package:test_output/models/order/responses/order_shipment_details__get_res.dart';
import 'package:test_output/models/order/responses/order_order_list__get_res.dart';
import 'package:test_output/models/order/responses/order_order_vendor_list__get_res.dart';
import 'package:test_output/models/order/responses/order_tracking_details__get_res.dart';
import 'package:test_output/models/order/responses/order_shipment_list__get_res.dart';
import 'package:test_output/models/order/responses/order_shipment_vendor_list__get_res.dart';
import 'package:test_output/models/order/responses/order_return_shipment_list__get_res.dart';
import 'package:test_output/models/order/responses/order_deliveries_list__get_res.dart';
import 'package:test_output/models/order/requests/order_confirm_three_d_payment__get_req.dart';
import 'package:test_output/models/order/requests/order_customer_reward_points__get_req.dart';
import 'package:test_output/models/order/requests/order_details__get_req.dart';
import 'package:test_output/models/order/requests/order_get_pdf_invoice__get_req.dart';
import 'package:test_output/models/order/requests/order_re_order__get_req.dart';
import 'package:test_output/models/order/requests/order_re_post_payment__get_req.dart';
import 'package:test_output/models/order/requests/order_shipment_details__get_req.dart';
import 'package:test_output/models/order/requests/order_update_shipment_events__post_req.dart';
import 'package:test_output/models/order/requests/order_webhook_updates__post_req.dart';
import 'package:test_output/models/order/requests/order_update_d_h_u_b_shipment_events__post_req.dart';
import 'package:test_output/models/order/requests/order_update_m_5_a_z_n_shipment_events__post_req.dart';
import 'package:test_output/models/order/requests/order_update_shipa_shipment_events__post_req.dart';
import 'package:test_output/models/order/requests/order_update_armada_shipment_events__post_req.dart';
import 'package:test_output/models/order/requests/order_order_list__get_req.dart';
import 'package:test_output/models/order/requests/order_order_vendor_list__get_req.dart';
import 'package:test_output/models/order/requests/order_settlment__post_req.dart';
import 'package:test_output/models/order/requests/order_settlment_orders__post_req.dart';
import 'package:test_output/models/order/requests/order_tracking_details__get_req.dart';
import 'package:test_output/models/order/requests/order_shipment_list__get_req.dart';
import 'package:test_output/models/order/requests/order_shipment_vendor_list__get_req.dart';
import 'package:test_output/models/order/requests/order_return_shipment_list__get_req.dart';
import 'package:test_output/models/order/requests/order_deliveries_list__get_req.dart';

abstract class IOrderRepository {
  Future<Either<FailureDetails, void>> confirmThreeDPaymentGet(
    ConfirmThreeDPaymentGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, CustomerOrdersGetResponse>> customerOrdersGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, CancelRecurringPaymentPostResponse>>
      cancelRecurringPaymentPost({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, RetryLastRecurringPaymentPostResponse>>
      retryLastRecurringPaymentPost({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, CustomerRewardPointsGetResponse>>
      customerRewardPointsGet(
    CustomerRewardPointsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, DetailsGetResponse>> detailsGet(
    DetailsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> getPdfInvoiceGet(
    GetPdfInvoiceGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> reOrderGet(
    ReOrderGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> rePostPaymentGet(
    RePostPaymentGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, ShipmentDetailsGetResponse>> shipmentDetailsGet(
    ShipmentDetailsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> updateShipmentEventsPost(
    UpdateShipmentEventsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> webhookUpdatesPost(
    WebhookUpdatesPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> updateDHUBShipmentEventsPost(
    UpdateDHUBShipmentEventsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> updateM5AZNShipmentEventsPost(
    UpdateM5AZNShipmentEventsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> updateShipaShipmentEventsPost(
    UpdateShipaShipmentEventsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> updateArmadaShipmentEventsPost(
    UpdateArmadaShipmentEventsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, OrderListGetResponse>> orderListGet(
    OrderListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, OrderVendorListGetResponse>> orderVendorListGet(
    OrderVendorListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> settlmentPost(
    SettlmentPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> settlmentOrdersPost(
    SettlmentOrdersPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, TrackingDetailsGetResponse>> trackingDetailsGet(
    TrackingDetailsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, ShipmentListGetResponse>> shipmentListGet(
    ShipmentListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, ShipmentVendorListGetResponse>>
      shipmentVendorListGet(
    ShipmentVendorListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, ReturnShipmentListGetResponse>>
      returnShipmentListGet(
    ReturnShipmentListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, DeliveriesListGetResponse>> deliveriesListGet(
    DeliveriesListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class OrderRepositoryImpl implements IOrderRepository {
  OrderRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final IOrderDataSource _dataSource;

  final Failure _failure;

  @override
  Future<Either<FailureDetails, void>> confirmThreeDPaymentGet(
    ConfirmThreeDPaymentGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.confirmThreeDPaymentGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, CustomerOrdersGetResponse>> customerOrdersGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.customerOrdersGet(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, CancelRecurringPaymentPostResponse>>
      cancelRecurringPaymentPost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.cancelRecurringPaymentPost(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, RetryLastRecurringPaymentPostResponse>>
      retryLastRecurringPaymentPost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.retryLastRecurringPaymentPost(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, CustomerRewardPointsGetResponse>>
      customerRewardPointsGet(
    CustomerRewardPointsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.customerRewardPointsGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, DetailsGetResponse>> detailsGet(
    DetailsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.detailsGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> getPdfInvoiceGet(
    GetPdfInvoiceGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.getPdfInvoiceGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> reOrderGet(
    ReOrderGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.reOrderGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> rePostPaymentGet(
    RePostPaymentGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.rePostPaymentGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, ShipmentDetailsGetResponse>> shipmentDetailsGet(
    ShipmentDetailsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.shipmentDetailsGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> updateShipmentEventsPost(
    UpdateShipmentEventsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.updateShipmentEventsPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> webhookUpdatesPost(
    WebhookUpdatesPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.webhookUpdatesPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> updateDHUBShipmentEventsPost(
    UpdateDHUBShipmentEventsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.updateDHUBShipmentEventsPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> updateM5AZNShipmentEventsPost(
    UpdateM5AZNShipmentEventsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.updateM5AZNShipmentEventsPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> updateShipaShipmentEventsPost(
    UpdateShipaShipmentEventsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.updateShipaShipmentEventsPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> updateArmadaShipmentEventsPost(
    UpdateArmadaShipmentEventsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.updateArmadaShipmentEventsPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, OrderListGetResponse>> orderListGet(
    OrderListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.orderListGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, OrderVendorListGetResponse>> orderVendorListGet(
    OrderVendorListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.orderVendorListGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> settlmentPost(
    SettlmentPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.settlmentPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> settlmentOrdersPost(
    SettlmentOrdersPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.settlmentOrdersPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, TrackingDetailsGetResponse>> trackingDetailsGet(
    TrackingDetailsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.trackingDetailsGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, ShipmentListGetResponse>> shipmentListGet(
    ShipmentListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.shipmentListGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, ShipmentVendorListGetResponse>>
      shipmentVendorListGet(
    ShipmentVendorListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.shipmentVendorListGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, ReturnShipmentListGetResponse>>
      returnShipmentListGet(
    ReturnShipmentListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.returnShipmentListGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, DeliveriesListGetResponse>> deliveriesListGet(
    DeliveriesListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.deliveriesListGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
