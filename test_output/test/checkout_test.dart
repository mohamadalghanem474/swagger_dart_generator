import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/checkout_repository.dart';
import 'package:test_output/models/checkout/requests/checkout_completed__get_req.dart';
import 'package:test_output/models/checkout/requests/checkout_complete_subscription__get_req.dart';
import 'package:test_output/models/checkout/requests/checkout_get_address_by_id__get_req.dart';
import 'package:test_output/models/checkout/requests/checkout_save_edit_address__post_req.dart';
import 'package:test_output/models/checkout/requests/checkout_delete_edit_address__delete_req.dart';
import 'package:test_output/models/checkout/requests/checkout_select_billing_address__get_req.dart';
import 'package:test_output/models/checkout/requests/checkout_new_billing_address__post_req.dart';
import 'package:test_output/models/checkout/requests/checkout_select_shipping_address__get_req.dart';
import 'package:test_output/models/checkout/requests/checkout_new_shipping_address__post_req.dart';
import 'package:test_output/models/checkout/requests/checkout_select_shipping_method__post_req.dart';
import 'package:test_output/models/checkout/requests/checkout_select_payment_method__post_req.dart';
import 'package:test_output/models/checkout/requests/checkout_smartware_opc_confirm_and_pay_order__post_req.dart';
import 'package:test_output/models/checkout/requests/checkout_smartware_opc_subscription_confirm_and_pay_order__post_req.dart';
import 'package:test_output/models/checkout/requests/checkout_monty_pay_return_url__post_req.dart';
import 'package:test_output/models/checkout/requests/checkout_monty_pay_success_return_url__post_req.dart';
import 'package:test_output/models/checkout/requests/checkout_monty_pay_cancel_return_url__post_req.dart';
import 'package:test_output/models/checkout/requests/checkout_payment_redirect_action__post_req.dart';
import 'package:test_output/models/checkout/requests/checkout_get_order_total__get_req.dart';
import 'package:test_output/models/checkout/requests/checkout_opc_save_billing__post_req.dart';
import 'package:test_output/models/checkout/requests/checkout_opc_save_shipping__post_req.dart';
import 'package:test_output/models/checkout/requests/checkout_opc_save_shipping_method__post_req.dart';
import 'package:test_output/models/checkout/requests/checkout_opc_save_payment_method__post_req.dart';
import 'package:test_output/models/checkout/requests/checkout_opc_save_subscription_payment_method__post_req.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('Checkout Tests', () {
    test('indexGet should return Right', () async {
      final result = await api.checkout.indexGet();
      expect(result.isRight(), isTrue);
    });

    test('completedGet should return Right', () async {
      final req = CompletedGetRequest();
      final result = await api.checkout.completedGet(req);
      expect(result.isRight(), isTrue);
    });

    test('completeSubscriptionGet should return Right', () async {
      final req = CompleteSubscriptionGetRequest();
      final result = await api.checkout.completeSubscriptionGet(req);
      expect(result.isRight(), isTrue);
    });

    test('getAddressByIdGet should return Right', () async {
      final req = GetAddressByIdGetRequest();
      final result = await api.checkout.getAddressByIdGet(req);
      expect(result.isRight(), isTrue);
    });

    test('saveEditAddressPost should return Right', () async {
      final req = SaveEditAddressPostRequest();
      final result = await api.checkout.saveEditAddressPost(req);
      expect(result.isRight(), isTrue);
    });

    test('deleteEditAddressDelete should return Right', () async {
      final req = DeleteEditAddressDeleteRequest();
      final result = await api.checkout.deleteEditAddressDelete(req);
      expect(result.isRight(), isTrue);
    });

    test('billingAddressPost should return Right', () async {
      final result = await api.checkout.billingAddressPost();
      expect(result.isRight(), isTrue);
    });

    test('selectBillingAddressGet should return Right', () async {
      final req = SelectBillingAddressGetRequest();
      final result = await api.checkout.selectBillingAddressGet(req);
      expect(result.isRight(), isTrue);
    });

    test('newBillingAddressPost should return Right', () async {
      final req = NewBillingAddressPostRequest();
      final result = await api.checkout.newBillingAddressPost(req);
      expect(result.isRight(), isTrue);
    });

    test('shippingAddressGet should return Right', () async {
      final result = await api.checkout.shippingAddressGet();
      expect(result.isRight(), isTrue);
    });

    test('selectShippingAddressGet should return Right', () async {
      final req = SelectShippingAddressGetRequest();
      final result = await api.checkout.selectShippingAddressGet(req);
      expect(result.isRight(), isTrue);
    });

    test('newShippingAddressPost should return Right', () async {
      final req = NewShippingAddressPostRequest();
      final result = await api.checkout.newShippingAddressPost(req);
      expect(result.isRight(), isTrue);
    });

    test('shippingMethodGet should return Right', () async {
      final result = await api.checkout.shippingMethodGet();
      expect(result.isRight(), isTrue);
    });

    test('selectShippingMethodPost should return Right', () async {
      final req = SelectShippingMethodPostRequest();
      final result = await api.checkout.selectShippingMethodPost(req);
      expect(result.isRight(), isTrue);
    });

    test('paymentMethodGet should return Right', () async {
      final result = await api.checkout.paymentMethodGet();
      expect(result.isRight(), isTrue);
    });

    test('selectPaymentMethodPost should return Right', () async {
      final req = SelectPaymentMethodPostRequest();
      final result = await api.checkout.selectPaymentMethodPost(req);
      expect(result.isRight(), isTrue);
    });

    test('paymentInfoGet should return Right', () async {
      final result = await api.checkout.paymentInfoGet();
      expect(result.isRight(), isTrue);
    });

    test('enterPaymentInfoPost should return Right', () async {
      final result = await api.checkout.enterPaymentInfoPost();
      expect(result.isRight(), isTrue);
    });

    test('confirmPost should return Right', () async {
      final result = await api.checkout.confirmPost();
      expect(result.isRight(), isTrue);
    });

    test('confirmOrderGet should return Right', () async {
      final result = await api.checkout.confirmOrderGet();
      expect(result.isRight(), isTrue);
    });

    test('onePageCheckoutGet should return Right', () async {
      final result = await api.checkout.onePageCheckoutGet();
      expect(result.isRight(), isTrue);
    });

    test('smartwareOpcConfirmAndPayOrderPost should return Right', () async {
      final req = SmartwareOpcConfirmAndPayOrderPostRequest();
      final result = await api.checkout.smartwareOpcConfirmAndPayOrderPost(req);
      expect(result.isRight(), isTrue);
    });

    test('getPaymentGateWayDetailsGet should return Right', () async {
      final result = await api.checkout.getPaymentGateWayDetailsGet();
      expect(result.isRight(), isTrue);
    });

    test('smartwareOpcSubscriptionConfirmAndPayOrderPost should return Right',
        () async {
      final req = SmartwareOpcSubscriptionConfirmAndPayOrderPostRequest();
      final result = await api.checkout
          .smartwareOpcSubscriptionConfirmAndPayOrderPost(req);
      expect(result.isRight(), isTrue);
    });

    test('montyPayReturnUrlPost should return Right', () async {
      final req = MontyPayReturnUrlPostRequest();
      final result = await api.checkout.montyPayReturnUrlPost(req);
      expect(result.isRight(), isTrue);
    });

    test('montyPaySuccessReturnUrlPost should return Right', () async {
      final req = MontyPaySuccessReturnUrlPostRequest();
      final result = await api.checkout.montyPaySuccessReturnUrlPost(req);
      expect(result.isRight(), isTrue);
    });

    test('montyPayCancelReturnUrlPost should return Right', () async {
      final req = MontyPayCancelReturnUrlPostRequest();
      final result = await api.checkout.montyPayCancelReturnUrlPost(req);
      expect(result.isRight(), isTrue);
    });

    test('paymentRedirectActionPost should return Right', () async {
      final req = PaymentRedirectActionPostRequest();
      final result = await api.checkout.paymentRedirectActionPost(req);
      expect(result.isRight(), isTrue);
    });

    test('getOrderTotalGet should return Right', () async {
      final req = GetOrderTotalGetRequest();
      final result = await api.checkout.getOrderTotalGet(req);
      expect(result.isRight(), isTrue);
    });

    test('opcSaveBillingPost should return Right', () async {
      final req = OpcSaveBillingPostRequest();
      final result = await api.checkout.opcSaveBillingPost(req);
      expect(result.isRight(), isTrue);
    });

    test('opcSaveShippingPost should return Right', () async {
      final req = OpcSaveShippingPostRequest();
      final result = await api.checkout.opcSaveShippingPost(req);
      expect(result.isRight(), isTrue);
    });

    test('opcSaveShippingMethodPost should return Right', () async {
      final req = OpcSaveShippingMethodPostRequest();
      final result = await api.checkout.opcSaveShippingMethodPost(req);
      expect(result.isRight(), isTrue);
    });

    test('opcSavePaymentMethodPost should return Right', () async {
      final req = OpcSavePaymentMethodPostRequest();
      final result = await api.checkout.opcSavePaymentMethodPost(req);
      expect(result.isRight(), isTrue);
    });

    test('opcSaveSubscriptionPaymentMethodPost should return Right', () async {
      final req = OpcSaveSubscriptionPaymentMethodPostRequest();
      final result =
          await api.checkout.opcSaveSubscriptionPaymentMethodPost(req);
      expect(result.isRight(), isTrue);
    });

    test('opcSavePaymentInfoPost should return Right', () async {
      final result = await api.checkout.opcSavePaymentInfoPost();
      expect(result.isRight(), isTrue);
    });

    test('opcConfirmOrderGet should return Right', () async {
      final result = await api.checkout.opcConfirmOrderGet();
      expect(result.isRight(), isTrue);
    });

    test('opcCompleteRedirectionPaymentPost should return Right', () async {
      final result = await api.checkout.opcCompleteRedirectionPaymentPost();
      expect(result.isRight(), isTrue);
    });
  });
}
