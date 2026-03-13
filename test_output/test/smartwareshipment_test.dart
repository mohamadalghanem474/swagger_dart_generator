import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/smartwareshipment_repository.dart';
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

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('Smartwareshipment Tests', () {
    test('getDriverShipmentHistoryListGet should return Right', () async {
      final req = GetDriverShipmentHistoryListGetRequest();
      final result =
          await api.smartwareshipment.getDriverShipmentHistoryListGet(req);
      expect(result.isRight(), isTrue);
    });

    test('getDriverActiveShipmentListGet should return Right', () async {
      final result =
          await api.smartwareshipment.getDriverActiveShipmentListGet();
      expect(result.isRight(), isTrue);
    });

    test('createDriverShipmentCollectionPost should return Right', () async {
      final result =
          await api.smartwareshipment.createDriverShipmentCollectionPost();
      expect(result.isRight(), isTrue);
    });

    test('createIndividualShipmentPost should return Right', () async {
      final req = CreateIndividualShipmentPostRequest();
      final result =
          await api.smartwareshipment.createIndividualShipmentPost(req);
      expect(result.isRight(), isTrue);
    });

    test('deleteShipmentPost should return Right', () async {
      final req = DeleteShipmentPostRequest();
      final result = await api.smartwareshipment.deleteShipmentPost(req);
      expect(result.isRight(), isTrue);
    });

    test('createShipmentOrderPost should return Right', () async {
      final req = CreateShipmentOrderPostRequest();
      final result = await api.smartwareshipment.createShipmentOrderPost(req);
      expect(result.isRight(), isTrue);
    });

    test('createOndemandShipmentOrderPost should return Right', () async {
      final req = CreateOndemandShipmentOrderPostRequest();
      final result =
          await api.smartwareshipment.createOndemandShipmentOrderPost(req);
      expect(result.isRight(), isTrue);
    });

    test('paymentRedirectActionPost should return Right', () async {
      final req = PaymentRedirectActionPostRequest();
      final result = await api.smartwareshipment.paymentRedirectActionPost(req);
      expect(result.isRight(), isTrue);
    });

    test('montyPaySuccessReturnUrlPost should return Right', () async {
      final req = MontyPaySuccessReturnUrlPostRequest();
      final result =
          await api.smartwareshipment.montyPaySuccessReturnUrlPost(req);
      expect(result.isRight(), isTrue);
    });

    test('montyPayCancelReturnUrlPost should return Right', () async {
      final req = MontyPayCancelReturnUrlPostRequest();
      final result =
          await api.smartwareshipment.montyPayCancelReturnUrlPost(req);
      expect(result.isRight(), isTrue);
    });

    test('confirmPaymentPost should return Right', () async {
      final req = ConfirmPaymentPostRequest();
      final result = await api.smartwareshipment.confirmPaymentPost(req);
      expect(result.isRight(), isTrue);
    });

    test('createOnDemandShipmentPost should return Right', () async {
      final req = CreateOnDemandShipmentPostRequest();
      final result =
          await api.smartwareshipment.createOnDemandShipmentPost(req);
      expect(result.isRight(), isTrue);
    });

    test('createBusinessPost should return Right', () async {
      final req = CreateBusinessPostRequest();
      final result = await api.smartwareshipment.createBusinessPost(req);
      expect(result.isRight(), isTrue);
    });

    test('createBusinessShipmentDetailsPost should return Right', () async {
      final req = CreateBusinessShipmentDetailsPostRequest();
      final result =
          await api.smartwareshipment.createBusinessShipmentDetailsPost(req);
      expect(result.isRight(), isTrue);
    });

    test('getShippingOptionsPost should return Right', () async {
      final req = GetShippingOptionsPostRequest();
      final result = await api.smartwareshipment.getShippingOptionsPost(req);
      expect(result.isRight(), isTrue);
    });

    test('createBusinessShipmentCarrierPost should return Right', () async {
      final req = CreateBusinessShipmentCarrierPostRequest();
      final result =
          await api.smartwareshipment.createBusinessShipmentCarrierPost(req);
      expect(result.isRight(), isTrue);
    });

    test('createBusinessShipmentOrderPost should return Right', () async {
      final req = CreateBusinessShipmentOrderPostRequest();
      final result =
          await api.smartwareshipment.createBusinessShipmentOrderPost(req);
      expect(result.isRight(), isTrue);
    });

    test('returnBusinessShipmentDetailsPost should return Right', () async {
      final req = ReturnBusinessShipmentDetailsPostRequest();
      final result =
          await api.smartwareshipment.returnBusinessShipmentDetailsPost(req);
      expect(result.isRight(), isTrue);
    });

    test('returnBusinessShipmentPost should return Right', () async {
      final req = ReturnBusinessShipmentPostRequest();
      final result =
          await api.smartwareshipment.returnBusinessShipmentPost(req);
      expect(result.isRight(), isTrue);
    });

    test('cancelShipmentPost should return Right', () async {
      final req = CancelShipmentPostRequest();
      final result = await api.smartwareshipment.cancelShipmentPost(req);
      expect(result.isRight(), isTrue);
    });

    test('cancelShipmentOnDemandPost should return Right', () async {
      final req = CancelShipmentOnDemandPostRequest();
      final result =
          await api.smartwareshipment.cancelShipmentOnDemandPost(req);
      expect(result.isRight(), isTrue);
    });

    test('cancelShipmentByExternalIdPost should return Right', () async {
      final req = CancelShipmentByExternalIdPostRequest();
      final result =
          await api.smartwareshipment.cancelShipmentByExternalIdPost(req);
      expect(result.isRight(), isTrue);
    });

    test('getShipmentByExternalIdPost should return Right', () async {
      final req = GetShipmentByExternalIdPostRequest();
      final result =
          await api.smartwareshipment.getShipmentByExternalIdPost(req);
      expect(result.isRight(), isTrue);
    });

    test('estimateRatesPost should return Right', () async {
      final req = EstimateRatesPostRequest();
      final result = await api.smartwareshipment.estimateRatesPost(req);
      expect(result.isRight(), isTrue);
    });

    test('estimateRatesByCODPost should return Right', () async {
      final req = EstimateRatesByCODPostRequest();
      final result = await api.smartwareshipment.estimateRatesByCODPost(req);
      expect(result.isRight(), isTrue);
    });

    test('estimateRatesForMarketplacePost should return Right', () async {
      final req = EstimateRatesForMarketplacePostRequest();
      final result =
          await api.smartwareshipment.estimateRatesForMarketplacePost(req);
      expect(result.isRight(), isTrue);
    });

    test('createOrderPost should return Right', () async {
      final req = CreateOrderPostRequest();
      final result = await api.smartwareshipment.createOrderPost(req);
      expect(result.isRight(), isTrue);
    });

    test('returnOrderPost should return Right', () async {
      final req = ReturnOrderPostRequest();
      final result = await api.smartwareshipment.returnOrderPost(req);
      expect(result.isRight(), isTrue);
    });

    test('createOrderForMarketPlacePost should return Right', () async {
      final req = CreateOrderForMarketPlacePostRequest();
      final result =
          await api.smartwareshipment.createOrderForMarketPlacePost(req);
      expect(result.isRight(), isTrue);
    });

    test('returnOrderForMarketPlacePost should return Right', () async {
      final req = ReturnOrderForMarketPlacePostRequest();
      final result =
          await api.smartwareshipment.returnOrderForMarketPlacePost(req);
      expect(result.isRight(), isTrue);
    });

    test('cancelOrderGet should return Right', () async {
      final req = CancelOrderGetRequest();
      final result = await api.smartwareshipment.cancelOrderGet(req);
      expect(result.isRight(), isTrue);
    });

    test('orderTrackingGet should return Right', () async {
      final req = OrderTrackingGetRequest();
      final result = await api.smartwareshipment.orderTrackingGet(req);
      expect(result.isRight(), isTrue);
    });

    test('failedConnectorsRequestsGet should return Right', () async {
      final req = FailedConnectorsRequestsGetRequest();
      final result =
          await api.smartwareshipment.failedConnectorsRequestsGet(req);
      expect(result.isRight(), isTrue);
    });

    test('getFailedConnectorRequestGet should return Right', () async {
      final req = GetFailedConnectorRequestGetRequest();
      final result =
          await api.smartwareshipment.getFailedConnectorRequestGet(req);
      expect(result.isRight(), isTrue);
    });

    test('addShipmentFromFailedConnectorRequestPost should return Right',
        () async {
      final req = AddShipmentFromFailedConnectorRequestPostRequest();
      final result = await api.smartwareshipment
          .addShipmentFromFailedConnectorRequestPost(req);
      expect(result.isRight(), isTrue);
    });

    test('getCarrierByShipmentPost should return Right', () async {
      final req = GetCarrierByShipmentPostRequest();
      final result = await api.smartwareshipment.getCarrierByShipmentPost(req);
      expect(result.isRight(), isTrue);
    });

    test('pdfPackagingSlipGet should return Right', () async {
      final req = PdfPackagingSlipGetRequest();
      final result = await api.smartwareshipment.pdfPackagingSlipGet(req);
      expect(result.isRight(), isTrue);
    });

    test('createShipmentCodCollectionPost should return Right', () async {
      final req = CreateShipmentCodCollectionPostRequest();
      final result =
          await api.smartwareshipment.createShipmentCodCollectionPost(req);
      expect(result.isRight(), isTrue);
    });

    test('updateShipmentFulfillStatusPost should return Right', () async {
      final req = UpdateShipmentFulfillStatusPostRequest();
      final result =
          await api.smartwareshipment.updateShipmentFulfillStatusPost(req);
      expect(result.isRight(), isTrue);
    });
  });
}
