import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/order_repository.dart';
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

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('Order Tests', () {
    test('confirmThreeDPaymentGet should return Right', () async {
      final req = ConfirmThreeDPaymentGetRequest();
      final result = await api.order.confirmThreeDPaymentGet(req);
      expect(result.isRight(), isTrue);
    });

    test('customerOrdersGet should return Right', () async {
      final result = await api.order.customerOrdersGet();
      expect(result.isRight(), isTrue);
    });

    test('cancelRecurringPaymentPost should return Right', () async {
      final result = await api.order.cancelRecurringPaymentPost();
      expect(result.isRight(), isTrue);
    });

    test('retryLastRecurringPaymentPost should return Right', () async {
      final result = await api.order.retryLastRecurringPaymentPost();
      expect(result.isRight(), isTrue);
    });

    test('customerRewardPointsGet should return Right', () async {
      final req = CustomerRewardPointsGetRequest();
      final result = await api.order.customerRewardPointsGet(req);
      expect(result.isRight(), isTrue);
    });

    test('detailsGet should return Right', () async {
      final req = DetailsGetRequest();
      final result = await api.order.detailsGet(req);
      expect(result.isRight(), isTrue);
    });

    test('getPdfInvoiceGet should return Right', () async {
      final req = GetPdfInvoiceGetRequest();
      final result = await api.order.getPdfInvoiceGet(req);
      expect(result.isRight(), isTrue);
    });

    test('reOrderGet should return Right', () async {
      final req = ReOrderGetRequest();
      final result = await api.order.reOrderGet(req);
      expect(result.isRight(), isTrue);
    });

    test('rePostPaymentGet should return Right', () async {
      final req = RePostPaymentGetRequest();
      final result = await api.order.rePostPaymentGet(req);
      expect(result.isRight(), isTrue);
    });

    test('shipmentDetailsGet should return Right', () async {
      final req = ShipmentDetailsGetRequest();
      final result = await api.order.shipmentDetailsGet(req);
      expect(result.isRight(), isTrue);
    });

    test('updateShipmentEventsPost should return Right', () async {
      final req = UpdateShipmentEventsPostRequest();
      final result = await api.order.updateShipmentEventsPost(req);
      expect(result.isRight(), isTrue);
    });

    test('webhookUpdatesPost should return Right', () async {
      final req = WebhookUpdatesPostRequest();
      final result = await api.order.webhookUpdatesPost(req);
      expect(result.isRight(), isTrue);
    });

    test('updateDHUBShipmentEventsPost should return Right', () async {
      final req = UpdateDHUBShipmentEventsPostRequest();
      final result = await api.order.updateDHUBShipmentEventsPost(req);
      expect(result.isRight(), isTrue);
    });

    test('updateM5AZNShipmentEventsPost should return Right', () async {
      final req = UpdateM5AZNShipmentEventsPostRequest();
      final result = await api.order.updateM5AZNShipmentEventsPost(req);
      expect(result.isRight(), isTrue);
    });

    test('updateShipaShipmentEventsPost should return Right', () async {
      final req = UpdateShipaShipmentEventsPostRequest();
      final result = await api.order.updateShipaShipmentEventsPost(req);
      expect(result.isRight(), isTrue);
    });

    test('updateArmadaShipmentEventsPost should return Right', () async {
      final req = UpdateArmadaShipmentEventsPostRequest();
      final result = await api.order.updateArmadaShipmentEventsPost(req);
      expect(result.isRight(), isTrue);
    });

    test('orderListGet should return Right', () async {
      final req = OrderListGetRequest();
      final result = await api.order.orderListGet(req);
      expect(result.isRight(), isTrue);
    });

    test('orderVendorListGet should return Right', () async {
      final req = OrderVendorListGetRequest();
      final result = await api.order.orderVendorListGet(req);
      expect(result.isRight(), isTrue);
    });

    test('settlmentPost should return Right', () async {
      final req = SettlmentPostRequest();
      final result = await api.order.settlmentPost(req);
      expect(result.isRight(), isTrue);
    });

    test('settlmentOrdersPost should return Right', () async {
      final req = SettlmentOrdersPostRequest();
      final result = await api.order.settlmentOrdersPost(req);
      expect(result.isRight(), isTrue);
    });

    test('trackingDetailsGet should return Right', () async {
      final req = TrackingDetailsGetRequest();
      final result = await api.order.trackingDetailsGet(req);
      expect(result.isRight(), isTrue);
    });

    test('shipmentListGet should return Right', () async {
      final req = ShipmentListGetRequest();
      final result = await api.order.shipmentListGet(req);
      expect(result.isRight(), isTrue);
    });

    test('shipmentVendorListGet should return Right', () async {
      final req = ShipmentVendorListGetRequest();
      final result = await api.order.shipmentVendorListGet(req);
      expect(result.isRight(), isTrue);
    });

    test('returnShipmentListGet should return Right', () async {
      final req = ReturnShipmentListGetRequest();
      final result = await api.order.returnShipmentListGet(req);
      expect(result.isRight(), isTrue);
    });

    test('deliveriesListGet should return Right', () async {
      final req = DeliveriesListGetRequest();
      final result = await api.order.deliveriesListGet(req);
      expect(result.isRight(), isTrue);
    });
  });
}
