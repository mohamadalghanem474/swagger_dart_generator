import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/checkout_datasource.dart';
import 'package:test_output/models/checkout/responses/checkout_index__get_res.dart';
import 'package:test_output/models/checkout/responses/checkout_completed__get_res.dart';
import 'package:test_output/models/checkout/responses/checkout_complete_subscription__get_res.dart';
import 'package:test_output/models/checkout/responses/checkout_get_address_by_id__get_res.dart';
import 'package:test_output/models/checkout/responses/checkout_save_edit_address__post_res.dart';
import 'package:test_output/models/checkout/responses/checkout_delete_edit_address__delete_res.dart';
import 'package:test_output/models/checkout/responses/checkout_billing_address__post_res.dart';
import 'package:test_output/models/checkout/responses/checkout_select_billing_address__get_res.dart';
import 'package:test_output/models/checkout/responses/checkout_new_billing_address__post_res.dart';
import 'package:test_output/models/checkout/responses/checkout_shipping_address__get_res.dart';
import 'package:test_output/models/checkout/responses/checkout_select_shipping_address__get_res.dart';
import 'package:test_output/models/checkout/responses/checkout_new_shipping_address__post_res.dart';
import 'package:test_output/models/checkout/responses/checkout_shipping_method__get_res.dart';
import 'package:test_output/models/checkout/responses/checkout_select_shipping_method__post_res.dart';
import 'package:test_output/models/checkout/responses/checkout_payment_method__get_res.dart';
import 'package:test_output/models/checkout/responses/checkout_select_payment_method__post_res.dart';
import 'package:test_output/models/checkout/responses/checkout_payment_info__get_res.dart';
import 'package:test_output/models/checkout/responses/checkout_enter_payment_info__post_res.dart';
import 'package:test_output/models/checkout/responses/checkout_confirm__post_res.dart';
import 'package:test_output/models/checkout/responses/checkout_confirm_order__get_res.dart';
import 'package:test_output/models/checkout/responses/checkout_one_page_checkout__get_res.dart';
import 'package:test_output/models/checkout/responses/checkout_smartware_opc_confirm_and_pay_order__post_res.dart';
import 'package:test_output/models/checkout/responses/checkout_smartware_opc_subscription_confirm_and_pay_order__post_res.dart';
import 'package:test_output/models/checkout/responses/checkout_monty_pay_return_url__post_res.dart';
import 'package:test_output/models/checkout/responses/checkout_monty_pay_success_return_url__post_res.dart';
import 'package:test_output/models/checkout/responses/checkout_monty_pay_cancel_return_url__post_res.dart';
import 'package:test_output/models/checkout/responses/checkout_payment_redirect_action__post_res.dart';
import 'package:test_output/models/checkout/responses/checkout_opc_save_billing__post_res.dart';
import 'package:test_output/models/checkout/responses/checkout_opc_save_shipping__post_res.dart';
import 'package:test_output/models/checkout/responses/checkout_opc_save_payment_method__post_res.dart';
import 'package:test_output/models/checkout/responses/checkout_opc_save_subscription_payment_method__post_res.dart';
import 'package:test_output/models/checkout/responses/checkout_opc_save_payment_info__post_res.dart';
import 'package:test_output/models/checkout/responses/checkout_opc_confirm_order__get_res.dart';
import 'package:test_output/models/checkout/responses/checkout_opc_complete_redirection_payment__post_res.dart';
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

abstract class ICheckoutRepository {
  Future<Either<FailureDetails, IndexGetResponse>> indexGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, CompletedGetResponse>> completedGet(
    CompletedGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, CompleteSubscriptionGetResponse>>
      completeSubscriptionGet(
    CompleteSubscriptionGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, GetAddressByIdGetResponse>> getAddressByIdGet(
    GetAddressByIdGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, SaveEditAddressPostResponse>>
      saveEditAddressPost(
    SaveEditAddressPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, DeleteEditAddressDeleteResponse>>
      deleteEditAddressDelete(
    DeleteEditAddressDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, BillingAddressPostResponse>>
      billingAddressPost({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, SelectBillingAddressGetResponse>>
      selectBillingAddressGet(
    SelectBillingAddressGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, NewBillingAddressPostResponse>>
      newBillingAddressPost(
    NewBillingAddressPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, ShippingAddressGetResponse>>
      shippingAddressGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, SelectShippingAddressGetResponse>>
      selectShippingAddressGet(
    SelectShippingAddressGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, NewShippingAddressPostResponse>>
      newShippingAddressPost(
    NewShippingAddressPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, ShippingMethodGetResponse>> shippingMethodGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, SelectShippingMethodPostResponse>>
      selectShippingMethodPost(
    SelectShippingMethodPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, PaymentMethodGetResponse>> paymentMethodGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, SelectPaymentMethodPostResponse>>
      selectPaymentMethodPost(
    SelectPaymentMethodPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, PaymentInfoGetResponse>> paymentInfoGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, EnterPaymentInfoPostResponse>>
      enterPaymentInfoPost({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, ConfirmPostResponse>> confirmPost({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, ConfirmOrderGetResponse>> confirmOrderGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, OnePageCheckoutGetResponse>>
      onePageCheckoutGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, SmartwareOpcConfirmAndPayOrderPostResponse>>
      smartwareOpcConfirmAndPayOrderPost(
    SmartwareOpcConfirmAndPayOrderPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> getPaymentGateWayDetailsGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<
          Either<FailureDetails,
              SmartwareOpcSubscriptionConfirmAndPayOrderPostResponse>>
      smartwareOpcSubscriptionConfirmAndPayOrderPost(
    SmartwareOpcSubscriptionConfirmAndPayOrderPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, MontyPayReturnUrlPostResponse>>
      montyPayReturnUrlPost(
    MontyPayReturnUrlPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, MontyPaySuccessReturnUrlPostResponse>>
      montyPaySuccessReturnUrlPost(
    MontyPaySuccessReturnUrlPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, MontyPayCancelReturnUrlPostResponse>>
      montyPayCancelReturnUrlPost(
    MontyPayCancelReturnUrlPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, PaymentRedirectActionPostResponse>>
      paymentRedirectActionPost(
    PaymentRedirectActionPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> getOrderTotalGet(
    GetOrderTotalGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, OpcSaveBillingPostResponse>> opcSaveBillingPost(
    OpcSaveBillingPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, OpcSaveShippingPostResponse>>
      opcSaveShippingPost(
    OpcSaveShippingPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> opcSaveShippingMethodPost(
    OpcSaveShippingMethodPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, OpcSavePaymentMethodPostResponse>>
      opcSavePaymentMethodPost(
    OpcSavePaymentMethodPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, OpcSaveSubscriptionPaymentMethodPostResponse>>
      opcSaveSubscriptionPaymentMethodPost(
    OpcSaveSubscriptionPaymentMethodPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, OpcSavePaymentInfoPostResponse>>
      opcSavePaymentInfoPost({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, OpcConfirmOrderGetResponse>>
      opcConfirmOrderGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, OpcCompleteRedirectionPaymentPostResponse>>
      opcCompleteRedirectionPaymentPost({
    CancelToken? cancelToken,
    Options? options,
  });
}

class CheckoutRepositoryImpl implements ICheckoutRepository {
  CheckoutRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final ICheckoutDataSource _dataSource;

  final Failure _failure;

  @override
  Future<Either<FailureDetails, IndexGetResponse>> indexGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.indexGet(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, CompletedGetResponse>> completedGet(
    CompletedGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.completedGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, CompleteSubscriptionGetResponse>>
      completeSubscriptionGet(
    CompleteSubscriptionGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.completeSubscriptionGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, GetAddressByIdGetResponse>> getAddressByIdGet(
    GetAddressByIdGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.getAddressByIdGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, SaveEditAddressPostResponse>>
      saveEditAddressPost(
    SaveEditAddressPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.saveEditAddressPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, DeleteEditAddressDeleteResponse>>
      deleteEditAddressDelete(
    DeleteEditAddressDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.deleteEditAddressDelete(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, BillingAddressPostResponse>>
      billingAddressPost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.billingAddressPost(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, SelectBillingAddressGetResponse>>
      selectBillingAddressGet(
    SelectBillingAddressGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.selectBillingAddressGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, NewBillingAddressPostResponse>>
      newBillingAddressPost(
    NewBillingAddressPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.newBillingAddressPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, ShippingAddressGetResponse>>
      shippingAddressGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.shippingAddressGet(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, SelectShippingAddressGetResponse>>
      selectShippingAddressGet(
    SelectShippingAddressGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.selectShippingAddressGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, NewShippingAddressPostResponse>>
      newShippingAddressPost(
    NewShippingAddressPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.newShippingAddressPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, ShippingMethodGetResponse>> shippingMethodGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.shippingMethodGet(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, SelectShippingMethodPostResponse>>
      selectShippingMethodPost(
    SelectShippingMethodPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.selectShippingMethodPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, PaymentMethodGetResponse>> paymentMethodGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.paymentMethodGet(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, SelectPaymentMethodPostResponse>>
      selectPaymentMethodPost(
    SelectPaymentMethodPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.selectPaymentMethodPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, PaymentInfoGetResponse>> paymentInfoGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.paymentInfoGet(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, EnterPaymentInfoPostResponse>>
      enterPaymentInfoPost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.enterPaymentInfoPost(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, ConfirmPostResponse>> confirmPost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.confirmPost(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, ConfirmOrderGetResponse>> confirmOrderGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.confirmOrderGet(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, OnePageCheckoutGetResponse>>
      onePageCheckoutGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.onePageCheckoutGet(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, SmartwareOpcConfirmAndPayOrderPostResponse>>
      smartwareOpcConfirmAndPayOrderPost(
    SmartwareOpcConfirmAndPayOrderPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.smartwareOpcConfirmAndPayOrderPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> getPaymentGateWayDetailsGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.getPaymentGateWayDetailsGet(
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<
          Either<FailureDetails,
              SmartwareOpcSubscriptionConfirmAndPayOrderPostResponse>>
      smartwareOpcSubscriptionConfirmAndPayOrderPost(
    SmartwareOpcSubscriptionConfirmAndPayOrderPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result =
          await _dataSource.smartwareOpcSubscriptionConfirmAndPayOrderPost(req,
              cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, MontyPayReturnUrlPostResponse>>
      montyPayReturnUrlPost(
    MontyPayReturnUrlPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.montyPayReturnUrlPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, MontyPaySuccessReturnUrlPostResponse>>
      montyPaySuccessReturnUrlPost(
    MontyPaySuccessReturnUrlPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.montyPaySuccessReturnUrlPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, MontyPayCancelReturnUrlPostResponse>>
      montyPayCancelReturnUrlPost(
    MontyPayCancelReturnUrlPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.montyPayCancelReturnUrlPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, PaymentRedirectActionPostResponse>>
      paymentRedirectActionPost(
    PaymentRedirectActionPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.paymentRedirectActionPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> getOrderTotalGet(
    GetOrderTotalGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.getOrderTotalGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, OpcSaveBillingPostResponse>> opcSaveBillingPost(
    OpcSaveBillingPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.opcSaveBillingPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, OpcSaveShippingPostResponse>>
      opcSaveShippingPost(
    OpcSaveShippingPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.opcSaveShippingPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> opcSaveShippingMethodPost(
    OpcSaveShippingMethodPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.opcSaveShippingMethodPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, OpcSavePaymentMethodPostResponse>>
      opcSavePaymentMethodPost(
    OpcSavePaymentMethodPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.opcSavePaymentMethodPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, OpcSaveSubscriptionPaymentMethodPostResponse>>
      opcSaveSubscriptionPaymentMethodPost(
    OpcSaveSubscriptionPaymentMethodPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.opcSaveSubscriptionPaymentMethodPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, OpcSavePaymentInfoPostResponse>>
      opcSavePaymentInfoPost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.opcSavePaymentInfoPost(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, OpcConfirmOrderGetResponse>>
      opcConfirmOrderGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.opcConfirmOrderGet(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, OpcCompleteRedirectionPaymentPostResponse>>
      opcCompleteRedirectionPaymentPost({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.opcCompleteRedirectionPaymentPost(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
