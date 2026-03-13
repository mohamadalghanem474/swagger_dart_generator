import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';
import 'package:test_output/models/checkout/responses/checkout_index__get_res.dart';
import 'package:test_output/models/checkout/requests/checkout_completed__get_req.dart';
import 'package:test_output/models/checkout/responses/checkout_completed__get_res.dart';
import 'package:test_output/models/checkout/requests/checkout_complete_subscription__get_req.dart';
import 'package:test_output/models/checkout/responses/checkout_complete_subscription__get_res.dart';
import 'package:test_output/models/checkout/requests/checkout_get_address_by_id__get_req.dart';
import 'package:test_output/models/checkout/responses/checkout_get_address_by_id__get_res.dart';
import 'package:test_output/models/checkout/requests/checkout_save_edit_address__post_req.dart';
import 'package:test_output/models/checkout/responses/checkout_save_edit_address__post_res.dart';
import 'package:test_output/models/checkout/requests/checkout_delete_edit_address__delete_req.dart';
import 'package:test_output/models/checkout/responses/checkout_delete_edit_address__delete_res.dart';
import 'package:test_output/models/checkout/responses/checkout_billing_address__post_res.dart';
import 'package:test_output/models/checkout/requests/checkout_select_billing_address__get_req.dart';
import 'package:test_output/models/checkout/responses/checkout_select_billing_address__get_res.dart';
import 'package:test_output/models/checkout/requests/checkout_new_billing_address__post_req.dart';
import 'package:test_output/models/checkout/responses/checkout_new_billing_address__post_res.dart';
import 'package:test_output/models/checkout/responses/checkout_shipping_address__get_res.dart';
import 'package:test_output/models/checkout/requests/checkout_select_shipping_address__get_req.dart';
import 'package:test_output/models/checkout/responses/checkout_select_shipping_address__get_res.dart';
import 'package:test_output/models/checkout/requests/checkout_new_shipping_address__post_req.dart';
import 'package:test_output/models/checkout/responses/checkout_new_shipping_address__post_res.dart';
import 'package:test_output/models/checkout/responses/checkout_shipping_method__get_res.dart';
import 'package:test_output/models/checkout/requests/checkout_select_shipping_method__post_req.dart';
import 'package:test_output/models/checkout/responses/checkout_select_shipping_method__post_res.dart';
import 'package:test_output/models/checkout/responses/checkout_payment_method__get_res.dart';
import 'package:test_output/models/checkout/requests/checkout_select_payment_method__post_req.dart';
import 'package:test_output/models/checkout/responses/checkout_select_payment_method__post_res.dart';
import 'package:test_output/models/checkout/responses/checkout_payment_info__get_res.dart';
import 'package:test_output/models/checkout/responses/checkout_enter_payment_info__post_res.dart';
import 'package:test_output/models/checkout/responses/checkout_confirm__post_res.dart';
import 'package:test_output/models/checkout/responses/checkout_confirm_order__get_res.dart';
import 'package:test_output/models/checkout/responses/checkout_one_page_checkout__get_res.dart';
import 'package:test_output/models/checkout/requests/checkout_smartware_opc_confirm_and_pay_order__post_req.dart';
import 'package:test_output/models/checkout/responses/checkout_smartware_opc_confirm_and_pay_order__post_res.dart';
import 'package:test_output/models/checkout/requests/checkout_smartware_opc_subscription_confirm_and_pay_order__post_req.dart';
import 'package:test_output/models/checkout/responses/checkout_smartware_opc_subscription_confirm_and_pay_order__post_res.dart';
import 'package:test_output/models/checkout/requests/checkout_monty_pay_return_url__post_req.dart';
import 'package:test_output/models/checkout/responses/checkout_monty_pay_return_url__post_res.dart';
import 'package:test_output/models/checkout/requests/checkout_monty_pay_success_return_url__post_req.dart';
import 'package:test_output/models/checkout/responses/checkout_monty_pay_success_return_url__post_res.dart';
import 'package:test_output/models/checkout/requests/checkout_monty_pay_cancel_return_url__post_req.dart';
import 'package:test_output/models/checkout/responses/checkout_monty_pay_cancel_return_url__post_res.dart';
import 'package:test_output/models/checkout/requests/checkout_payment_redirect_action__post_req.dart';
import 'package:test_output/models/checkout/responses/checkout_payment_redirect_action__post_res.dart';
import 'package:test_output/models/checkout/requests/checkout_get_order_total__get_req.dart';
import 'package:test_output/models/checkout/requests/checkout_opc_save_billing__post_req.dart';
import 'package:test_output/models/checkout/responses/checkout_opc_save_billing__post_res.dart';
import 'package:test_output/models/checkout/requests/checkout_opc_save_shipping__post_req.dart';
import 'package:test_output/models/checkout/responses/checkout_opc_save_shipping__post_res.dart';
import 'package:test_output/models/checkout/requests/checkout_opc_save_shipping_method__post_req.dart';
import 'package:test_output/models/checkout/requests/checkout_opc_save_payment_method__post_req.dart';
import 'package:test_output/models/checkout/responses/checkout_opc_save_payment_method__post_res.dart';
import 'package:test_output/models/checkout/requests/checkout_opc_save_subscription_payment_method__post_req.dart';
import 'package:test_output/models/checkout/responses/checkout_opc_save_subscription_payment_method__post_res.dart';
import 'package:test_output/models/checkout/responses/checkout_opc_save_payment_info__post_res.dart';
import 'package:test_output/models/checkout/responses/checkout_opc_confirm_order__get_res.dart';
import 'package:test_output/models/checkout/responses/checkout_opc_complete_redirection_payment__post_res.dart';

abstract class ICheckoutDataSource {
  Future<IndexGetResponse> indexGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<CompletedGetResponse> completedGet(
    CompletedGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<CompleteSubscriptionGetResponse> completeSubscriptionGet(
    CompleteSubscriptionGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<GetAddressByIdGetResponse> getAddressByIdGet(
    GetAddressByIdGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<SaveEditAddressPostResponse> saveEditAddressPost(
    SaveEditAddressPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<DeleteEditAddressDeleteResponse> deleteEditAddressDelete(
    DeleteEditAddressDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<BillingAddressPostResponse> billingAddressPost({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<SelectBillingAddressGetResponse> selectBillingAddressGet(
    SelectBillingAddressGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<NewBillingAddressPostResponse> newBillingAddressPost(
    NewBillingAddressPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<ShippingAddressGetResponse> shippingAddressGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<SelectShippingAddressGetResponse> selectShippingAddressGet(
    SelectShippingAddressGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<NewShippingAddressPostResponse> newShippingAddressPost(
    NewShippingAddressPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<ShippingMethodGetResponse> shippingMethodGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<SelectShippingMethodPostResponse> selectShippingMethodPost(
    SelectShippingMethodPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<PaymentMethodGetResponse> paymentMethodGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<SelectPaymentMethodPostResponse> selectPaymentMethodPost(
    SelectPaymentMethodPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<PaymentInfoGetResponse> paymentInfoGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<EnterPaymentInfoPostResponse> enterPaymentInfoPost({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<ConfirmPostResponse> confirmPost({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<ConfirmOrderGetResponse> confirmOrderGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<OnePageCheckoutGetResponse> onePageCheckoutGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<SmartwareOpcConfirmAndPayOrderPostResponse>
      smartwareOpcConfirmAndPayOrderPost(
    SmartwareOpcConfirmAndPayOrderPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> getPaymentGateWayDetailsGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<SmartwareOpcSubscriptionConfirmAndPayOrderPostResponse>
      smartwareOpcSubscriptionConfirmAndPayOrderPost(
    SmartwareOpcSubscriptionConfirmAndPayOrderPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<MontyPayReturnUrlPostResponse> montyPayReturnUrlPost(
    MontyPayReturnUrlPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<MontyPaySuccessReturnUrlPostResponse> montyPaySuccessReturnUrlPost(
    MontyPaySuccessReturnUrlPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<MontyPayCancelReturnUrlPostResponse> montyPayCancelReturnUrlPost(
    MontyPayCancelReturnUrlPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<PaymentRedirectActionPostResponse> paymentRedirectActionPost(
    PaymentRedirectActionPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> getOrderTotalGet(
    GetOrderTotalGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<OpcSaveBillingPostResponse> opcSaveBillingPost(
    OpcSaveBillingPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<OpcSaveShippingPostResponse> opcSaveShippingPost(
    OpcSaveShippingPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> opcSaveShippingMethodPost(
    OpcSaveShippingMethodPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<OpcSavePaymentMethodPostResponse> opcSavePaymentMethodPost(
    OpcSavePaymentMethodPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<OpcSaveSubscriptionPaymentMethodPostResponse>
      opcSaveSubscriptionPaymentMethodPost(
    OpcSaveSubscriptionPaymentMethodPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<OpcSavePaymentInfoPostResponse> opcSavePaymentInfoPost({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<OpcConfirmOrderGetResponse> opcConfirmOrderGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<OpcCompleteRedirectionPaymentPostResponse>
      opcCompleteRedirectionPaymentPost({
    CancelToken? cancelToken,
    Options? options,
  });
}

class CheckoutDataSourceImpl implements ICheckoutDataSource {
  CheckoutDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<IndexGetResponse> indexGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.checkout.indexGet;
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return IndexGetResponse.fromJson(result.data);
  }

  @override
  Future<CompletedGetResponse> completedGet(
    CompletedGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.checkout.completedGet;
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return CompletedGetResponse.fromJson(result.data);
  }

  @override
  Future<CompleteSubscriptionGetResponse> completeSubscriptionGet(
    CompleteSubscriptionGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.checkout.completeSubscriptionGet;
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return CompleteSubscriptionGetResponse.fromJson(result.data);
  }

  @override
  Future<GetAddressByIdGetResponse> getAddressByIdGet(
    GetAddressByIdGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.checkout.getAddressByIdGet;
    url = url.replaceAll(
      '{addressId}',
      req.addressid?.toString() ?? '',
    );
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return GetAddressByIdGetResponse.fromJson(result.data);
  }

  @override
  Future<SaveEditAddressPostResponse> saveEditAddressPost(
    SaveEditAddressPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.checkout.saveEditAddressPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return SaveEditAddressPostResponse.fromJson(result.data);
  }

  @override
  Future<DeleteEditAddressDeleteResponse> deleteEditAddressDelete(
    DeleteEditAddressDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.checkout.deleteEditAddressDelete;
    url = url.replaceAll(
      '{addressId}',
      req.addressid?.toString() ?? '',
    );
    final result = await _dio.delete(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return DeleteEditAddressDeleteResponse.fromJson(result.data);
  }

  @override
  Future<BillingAddressPostResponse> billingAddressPost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.checkout.billingAddressPost;
    final result = await _dio.post(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return BillingAddressPostResponse.fromJson(result.data);
  }

  @override
  Future<SelectBillingAddressGetResponse> selectBillingAddressGet(
    SelectBillingAddressGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.checkout.selectBillingAddressGet;
    url = url.replaceAll(
      '{addressId}',
      req.addressid?.toString() ?? '',
    );
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return SelectBillingAddressGetResponse.fromJson(result.data);
  }

  @override
  Future<NewBillingAddressPostResponse> newBillingAddressPost(
    NewBillingAddressPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.checkout.newBillingAddressPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return NewBillingAddressPostResponse.fromJson(result.data);
  }

  @override
  Future<ShippingAddressGetResponse> shippingAddressGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.checkout.shippingAddressGet;
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return ShippingAddressGetResponse.fromJson(result.data);
  }

  @override
  Future<SelectShippingAddressGetResponse> selectShippingAddressGet(
    SelectShippingAddressGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.checkout.selectShippingAddressGet;
    url = url.replaceAll(
      '{addressId}',
      req.addressid?.toString() ?? '',
    );
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return SelectShippingAddressGetResponse.fromJson(result.data);
  }

  @override
  Future<NewShippingAddressPostResponse> newShippingAddressPost(
    NewShippingAddressPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.checkout.newShippingAddressPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return NewShippingAddressPostResponse.fromJson(result.data);
  }

  @override
  Future<ShippingMethodGetResponse> shippingMethodGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.checkout.shippingMethodGet;
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return ShippingMethodGetResponse.fromJson(result.data);
  }

  @override
  Future<SelectShippingMethodPostResponse> selectShippingMethodPost(
    SelectShippingMethodPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.checkout.selectShippingMethodPost;
    final result = await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return SelectShippingMethodPostResponse.fromJson(result.data);
  }

  @override
  Future<PaymentMethodGetResponse> paymentMethodGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.checkout.paymentMethodGet;
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return PaymentMethodGetResponse.fromJson(result.data);
  }

  @override
  Future<SelectPaymentMethodPostResponse> selectPaymentMethodPost(
    SelectPaymentMethodPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.checkout.selectPaymentMethodPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return SelectPaymentMethodPostResponse.fromJson(result.data);
  }

  @override
  Future<PaymentInfoGetResponse> paymentInfoGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.checkout.paymentInfoGet;
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return PaymentInfoGetResponse.fromJson(result.data);
  }

  @override
  Future<EnterPaymentInfoPostResponse> enterPaymentInfoPost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.checkout.enterPaymentInfoPost;
    final result = await _dio.post(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return EnterPaymentInfoPostResponse.fromJson(result.data);
  }

  @override
  Future<ConfirmPostResponse> confirmPost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.checkout.confirmPost;
    final result = await _dio.post(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return ConfirmPostResponse.fromJson(result.data);
  }

  @override
  Future<ConfirmOrderGetResponse> confirmOrderGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.checkout.confirmOrderGet;
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return ConfirmOrderGetResponse.fromJson(result.data);
  }

  @override
  Future<OnePageCheckoutGetResponse> onePageCheckoutGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.checkout.onePageCheckoutGet;
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return OnePageCheckoutGetResponse.fromJson(result.data);
  }

  @override
  Future<SmartwareOpcConfirmAndPayOrderPostResponse>
      smartwareOpcConfirmAndPayOrderPost(
    SmartwareOpcConfirmAndPayOrderPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.checkout.smartwareOpcConfirmAndPayOrderPost;
    final result = await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return SmartwareOpcConfirmAndPayOrderPostResponse.fromJson(result.data);
  }

  @override
  Future<void> getPaymentGateWayDetailsGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.checkout.getPaymentGateWayDetailsGet;
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<SmartwareOpcSubscriptionConfirmAndPayOrderPostResponse>
      smartwareOpcSubscriptionConfirmAndPayOrderPost(
    SmartwareOpcSubscriptionConfirmAndPayOrderPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.checkout.smartwareOpcSubscriptionConfirmAndPayOrderPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return SmartwareOpcSubscriptionConfirmAndPayOrderPostResponse.fromJson(
        result.data);
  }

  @override
  Future<MontyPayReturnUrlPostResponse> montyPayReturnUrlPost(
    MontyPayReturnUrlPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.checkout.montyPayReturnUrlPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return MontyPayReturnUrlPostResponse.fromJson(result.data);
  }

  @override
  Future<MontyPaySuccessReturnUrlPostResponse> montyPaySuccessReturnUrlPost(
    MontyPaySuccessReturnUrlPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.checkout.montyPaySuccessReturnUrlPost;
    final result = await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return MontyPaySuccessReturnUrlPostResponse.fromJson(result.data);
  }

  @override
  Future<MontyPayCancelReturnUrlPostResponse> montyPayCancelReturnUrlPost(
    MontyPayCancelReturnUrlPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.checkout.montyPayCancelReturnUrlPost;
    final result = await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return MontyPayCancelReturnUrlPostResponse.fromJson(result.data);
  }

  @override
  Future<PaymentRedirectActionPostResponse> paymentRedirectActionPost(
    PaymentRedirectActionPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.checkout.paymentRedirectActionPost;
    final result = await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return PaymentRedirectActionPostResponse.fromJson(result.data);
  }

  @override
  Future<void> getOrderTotalGet(
    GetOrderTotalGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.checkout.getOrderTotalGet;
    await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<OpcSaveBillingPostResponse> opcSaveBillingPost(
    OpcSaveBillingPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.checkout.opcSaveBillingPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return OpcSaveBillingPostResponse.fromJson(result.data);
  }

  @override
  Future<OpcSaveShippingPostResponse> opcSaveShippingPost(
    OpcSaveShippingPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.checkout.opcSaveShippingPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return OpcSaveShippingPostResponse.fromJson(result.data);
  }

  @override
  Future<void> opcSaveShippingMethodPost(
    OpcSaveShippingMethodPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.checkout.opcSaveShippingMethodPost;
    await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<OpcSavePaymentMethodPostResponse> opcSavePaymentMethodPost(
    OpcSavePaymentMethodPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.checkout.opcSavePaymentMethodPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return OpcSavePaymentMethodPostResponse.fromJson(result.data);
  }

  @override
  Future<OpcSaveSubscriptionPaymentMethodPostResponse>
      opcSaveSubscriptionPaymentMethodPost(
    OpcSaveSubscriptionPaymentMethodPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.checkout.opcSaveSubscriptionPaymentMethodPost;
    final result = await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return OpcSaveSubscriptionPaymentMethodPostResponse.fromJson(result.data);
  }

  @override
  Future<OpcSavePaymentInfoPostResponse> opcSavePaymentInfoPost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.checkout.opcSavePaymentInfoPost;
    final result = await _dio.post(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return OpcSavePaymentInfoPostResponse.fromJson(result.data);
  }

  @override
  Future<OpcConfirmOrderGetResponse> opcConfirmOrderGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.checkout.opcConfirmOrderGet;
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return OpcConfirmOrderGetResponse.fromJson(result.data);
  }

  @override
  Future<OpcCompleteRedirectionPaymentPostResponse>
      opcCompleteRedirectionPaymentPost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.checkout.opcCompleteRedirectionPaymentPost;
    final result = await _dio.post(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return OpcCompleteRedirectionPaymentPostResponse.fromJson(result.data);
  }
}
