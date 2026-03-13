import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/smartwareshipment_datasource.dart';
import 'package:test_output/models/smartwareshipment/responses/smartwareshipment_create_individual_shipment__post_res.dart';
import 'package:test_output/models/smartwareshipment/responses/smartwareshipment_create_on_demand_shipment__post_res.dart';
import 'package:test_output/models/smartwareshipment/responses/smartwareshipment_create_business__post_res.dart';
import 'package:test_output/models/smartwareshipment/responses/smartwareshipment_create_business_shipment_details__post_res.dart';
import 'package:test_output/models/smartwareshipment/responses/smartwareshipment_get_shipping_options__post_res.dart';
import 'package:test_output/models/smartwareshipment/responses/smartwareshipment_create_business_shipment_carrier__post_res.dart';
import 'package:test_output/models/smartwareshipment/responses/smartwareshipment_return_business_shipment__post_res.dart';
import 'package:test_output/models/smartwareshipment/responses/smartwareshipment_create_order__post_res.dart';
import 'package:test_output/models/smartwareshipment/responses/smartwareshipment_return_order__post_res.dart';
import 'package:test_output/models/smartwareshipment/responses/smartwareshipment_create_order_for_market_place__post_res.dart';
import 'package:test_output/models/smartwareshipment/responses/smartwareshipment_return_order_for_market_place__post_res.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_get_driver_shipment_history_list__get_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_create_individual_shipment__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_delete_shipment__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_create_shipment_order__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_create_ondemand_shipment_order__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_payment_redirect_action__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_monty_pay_success_return_url__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_monty_pay_cancel_return_url__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_confirm_payment__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_create_on_demand_shipment__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_create_business__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_create_business_shipment_details__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_get_shipping_options__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_create_business_shipment_carrier__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_create_business_shipment_order__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_return_business_shipment_details__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_return_business_shipment__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_cancel_shipment__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_cancel_shipment_on_demand__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_cancel_shipment_by_external_id__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_get_shipment_by_external_id__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_estimate_rates__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_estimate_rates_by_c_o_d__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_estimate_rates_for_marketplace__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_create_order__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_return_order__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_create_order_for_market_place__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_return_order_for_market_place__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_cancel_order__get_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_order_tracking__get_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_failed_connectors_requests__get_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_get_failed_connector_request__get_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_add_shipment_from_failed_connector_request__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_get_carrier_by_shipment__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_pdf_packaging_slip__get_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_create_shipment_cod_collection__post_req.dart';
import 'package:test_output/models/smartwareshipment/requests/smartwareshipment_update_shipment_fulfill_status__post_req.dart';

abstract class ISmartwareshipmentRepository {
  Future<Either<FailureDetails, void>> getDriverShipmentHistoryListGet(
    GetDriverShipmentHistoryListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> getDriverActiveShipmentListGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> createDriverShipmentCollectionPost({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, CreateIndividualShipmentPostResponse>>
      createIndividualShipmentPost(
    CreateIndividualShipmentPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> deleteShipmentPost(
    DeleteShipmentPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> createShipmentOrderPost(
    CreateShipmentOrderPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> createOndemandShipmentOrderPost(
    CreateOndemandShipmentOrderPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> paymentRedirectActionPost(
    PaymentRedirectActionPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> montyPaySuccessReturnUrlPost(
    MontyPaySuccessReturnUrlPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> montyPayCancelReturnUrlPost(
    MontyPayCancelReturnUrlPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> confirmPaymentPost(
    ConfirmPaymentPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, CreateOnDemandShipmentPostResponse>>
      createOnDemandShipmentPost(
    CreateOnDemandShipmentPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, CreateBusinessPostResponse>> createBusinessPost(
    CreateBusinessPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, CreateBusinessShipmentDetailsPostResponse>>
      createBusinessShipmentDetailsPost(
    CreateBusinessShipmentDetailsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, GetShippingOptionsPostResponse>>
      getShippingOptionsPost(
    GetShippingOptionsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, CreateBusinessShipmentCarrierPostResponse>>
      createBusinessShipmentCarrierPost(
    CreateBusinessShipmentCarrierPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> createBusinessShipmentOrderPost(
    CreateBusinessShipmentOrderPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> returnBusinessShipmentDetailsPost(
    ReturnBusinessShipmentDetailsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, ReturnBusinessShipmentPostResponse>>
      returnBusinessShipmentPost(
    ReturnBusinessShipmentPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> cancelShipmentPost(
    CancelShipmentPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> cancelShipmentOnDemandPost(
    CancelShipmentOnDemandPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> cancelShipmentByExternalIdPost(
    CancelShipmentByExternalIdPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> getShipmentByExternalIdPost(
    GetShipmentByExternalIdPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> estimateRatesPost(
    EstimateRatesPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> estimateRatesByCODPost(
    EstimateRatesByCODPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> estimateRatesForMarketplacePost(
    EstimateRatesForMarketplacePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, CreateOrderPostResponse>> createOrderPost(
    CreateOrderPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, ReturnOrderPostResponse>> returnOrderPost(
    ReturnOrderPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, CreateOrderForMarketPlacePostResponse>>
      createOrderForMarketPlacePost(
    CreateOrderForMarketPlacePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, ReturnOrderForMarketPlacePostResponse>>
      returnOrderForMarketPlacePost(
    ReturnOrderForMarketPlacePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> cancelOrderGet(
    CancelOrderGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> orderTrackingGet(
    OrderTrackingGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> failedConnectorsRequestsGet(
    FailedConnectorsRequestsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> getFailedConnectorRequestGet(
    GetFailedConnectorRequestGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>>
      addShipmentFromFailedConnectorRequestPost(
    AddShipmentFromFailedConnectorRequestPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> getCarrierByShipmentPost(
    GetCarrierByShipmentPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> pdfPackagingSlipGet(
    PdfPackagingSlipGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> createShipmentCodCollectionPost(
    CreateShipmentCodCollectionPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> updateShipmentFulfillStatusPost(
    UpdateShipmentFulfillStatusPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
}

class SmartwareshipmentRepositoryImpl implements ISmartwareshipmentRepository {
  SmartwareshipmentRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final ISmartwareshipmentDataSource _dataSource;

  final Failure _failure;

  @override
  Future<Either<FailureDetails, void>> getDriverShipmentHistoryListGet(
    GetDriverShipmentHistoryListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.getDriverShipmentHistoryListGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> getDriverActiveShipmentListGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.getDriverActiveShipmentListGet(
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> createDriverShipmentCollectionPost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.createDriverShipmentCollectionPost(
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, CreateIndividualShipmentPostResponse>>
      createIndividualShipmentPost(
    CreateIndividualShipmentPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.createIndividualShipmentPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> deleteShipmentPost(
    DeleteShipmentPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.deleteShipmentPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> createShipmentOrderPost(
    CreateShipmentOrderPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.createShipmentOrderPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> createOndemandShipmentOrderPost(
    CreateOndemandShipmentOrderPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.createOndemandShipmentOrderPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> paymentRedirectActionPost(
    PaymentRedirectActionPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.paymentRedirectActionPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> montyPaySuccessReturnUrlPost(
    MontyPaySuccessReturnUrlPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.montyPaySuccessReturnUrlPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> montyPayCancelReturnUrlPost(
    MontyPayCancelReturnUrlPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.montyPayCancelReturnUrlPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> confirmPaymentPost(
    ConfirmPaymentPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.confirmPaymentPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, CreateOnDemandShipmentPostResponse>>
      createOnDemandShipmentPost(
    CreateOnDemandShipmentPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.createOnDemandShipmentPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, CreateBusinessPostResponse>> createBusinessPost(
    CreateBusinessPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.createBusinessPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, CreateBusinessShipmentDetailsPostResponse>>
      createBusinessShipmentDetailsPost(
    CreateBusinessShipmentDetailsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.createBusinessShipmentDetailsPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, GetShippingOptionsPostResponse>>
      getShippingOptionsPost(
    GetShippingOptionsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.getShippingOptionsPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, CreateBusinessShipmentCarrierPostResponse>>
      createBusinessShipmentCarrierPost(
    CreateBusinessShipmentCarrierPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.createBusinessShipmentCarrierPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> createBusinessShipmentOrderPost(
    CreateBusinessShipmentOrderPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.createBusinessShipmentOrderPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> returnBusinessShipmentDetailsPost(
    ReturnBusinessShipmentDetailsPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.returnBusinessShipmentDetailsPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, ReturnBusinessShipmentPostResponse>>
      returnBusinessShipmentPost(
    ReturnBusinessShipmentPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.returnBusinessShipmentPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> cancelShipmentPost(
    CancelShipmentPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.cancelShipmentPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> cancelShipmentOnDemandPost(
    CancelShipmentOnDemandPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.cancelShipmentOnDemandPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> cancelShipmentByExternalIdPost(
    CancelShipmentByExternalIdPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.cancelShipmentByExternalIdPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> getShipmentByExternalIdPost(
    GetShipmentByExternalIdPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.getShipmentByExternalIdPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> estimateRatesPost(
    EstimateRatesPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.estimateRatesPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> estimateRatesByCODPost(
    EstimateRatesByCODPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.estimateRatesByCODPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> estimateRatesForMarketplacePost(
    EstimateRatesForMarketplacePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.estimateRatesForMarketplacePost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, CreateOrderPostResponse>> createOrderPost(
    CreateOrderPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.createOrderPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, ReturnOrderPostResponse>> returnOrderPost(
    ReturnOrderPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.returnOrderPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, CreateOrderForMarketPlacePostResponse>>
      createOrderForMarketPlacePost(
    CreateOrderForMarketPlacePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.createOrderForMarketPlacePost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, ReturnOrderForMarketPlacePostResponse>>
      returnOrderForMarketPlacePost(
    ReturnOrderForMarketPlacePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.returnOrderForMarketPlacePost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> cancelOrderGet(
    CancelOrderGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.cancelOrderGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> orderTrackingGet(
    OrderTrackingGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.orderTrackingGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> failedConnectorsRequestsGet(
    FailedConnectorsRequestsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.failedConnectorsRequestsGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> getFailedConnectorRequestGet(
    GetFailedConnectorRequestGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.getFailedConnectorRequestGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>>
      addShipmentFromFailedConnectorRequestPost(
    AddShipmentFromFailedConnectorRequestPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.addShipmentFromFailedConnectorRequestPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> getCarrierByShipmentPost(
    GetCarrierByShipmentPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.getCarrierByShipmentPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> pdfPackagingSlipGet(
    PdfPackagingSlipGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.pdfPackagingSlipGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> createShipmentCodCollectionPost(
    CreateShipmentCodCollectionPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.createShipmentCodCollectionPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> updateShipmentFulfillStatusPost(
    UpdateShipmentFulfillStatusPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.updateShipmentFulfillStatusPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
