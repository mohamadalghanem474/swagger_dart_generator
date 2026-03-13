import 'package:test_output/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:test_output/datasources/customer_datasource.dart';
import 'package:test_output/models/customer/responses/customer_password_recovery__get_res.dart';
import 'package:test_output/models/customer/responses/customer_password_recovery_send__post_res.dart';
import 'package:test_output/models/customer/responses/customer_password_recovery_confirm__post_res.dart';
import 'package:test_output/models/customer/responses/customer_password_recovery_confirm_p_o_s_t__post_res.dart';
import 'package:test_output/models/customer/responses/customer_register__get_res.dart';
import 'package:test_output/models/customer/responses/customer_register__post_res.dart';
import 'package:test_output/models/customer/responses/customer_lookup_items__get_res.dart';
import 'package:test_output/models/customer/responses/customer_register_result__post_res.dart';
import 'package:test_output/models/customer/responses/customer_check_username_availability__get_res.dart';
import 'package:test_output/models/customer/responses/customer_account_activation__post_res.dart';
import 'package:test_output/models/customer/responses/customer_create_marchant_account_for_e_commerce__post_res.dart';
import 'package:test_output/models/customer/responses/customer_info__get_res.dart';
import 'package:test_output/models/customer/responses/customer_info__post_res.dart';
import 'package:test_output/models/customer/responses/customer_update_device_id__post_res.dart';
import 'package:test_output/models/customer/responses/customer_email_revalidation__post_res.dart';
import 'package:test_output/models/customer/responses/customer_addresses__get_res.dart';
import 'package:test_output/models/customer/responses/customer_address_add__get_res.dart';
import 'package:test_output/models/customer/responses/customer_address_add__post_res.dart';
import 'package:test_output/models/customer/responses/customer_address_edit__get_res.dart';
import 'package:test_output/models/customer/responses/customer_address_edit__put_res.dart';
import 'package:test_output/models/customer/responses/customer_single_address_edit__put_res.dart';
import 'package:test_output/models/customer/responses/customer_downloadable_products__get_res.dart';
import 'package:test_output/models/customer/responses/customer_user_agreement__get_res.dart';
import 'package:test_output/models/customer/responses/customer_change_password__get_res.dart';
import 'package:test_output/models/customer/responses/customer_change_password__post_res.dart';
import 'package:test_output/models/customer/responses/customer_avatar__get_res.dart';
import 'package:test_output/models/customer/responses/customer_upload_avatar__post_res.dart';
import 'package:test_output/models/customer/responses/customer_gdpr_tools__get_res.dart';
import 'package:test_output/models/customer/responses/customer_gdpr_tools_delete__delete_res.dart';
import 'package:test_output/models/customer/responses/customer_check_gift_card_balance__get_res.dart';
import 'package:test_output/models/customer/responses/customer_check_balance__post_res.dart';
import 'package:test_output/models/customer/responses/customer_icarry_address_add__post_res.dart';
import 'package:test_output/models/customer/responses/customer_single_address_add__post_res.dart';
import 'package:test_output/models/customer/responses/customer_receivent_list__get_res.dart';
import 'package:test_output/models/customer/responses/customer_receivent_vendor_list__get_res.dart';
import 'package:test_output/models/customer/responses/customer_manage_team__get_res.dart';
import 'package:test_output/models/customer/responses/customer_create__post_res.dart';
import 'package:test_output/models/customer/responses/customer_address_receivent_list__get_res.dart';
import 'package:test_output/models/customer/responses/customer_address_vendor_receivent_list__get_res.dart';
import 'package:test_output/models/customer/requests/customer_password_recovery_send__post_req.dart';
import 'package:test_output/models/customer/requests/customer_password_recovery_confirm__post_req.dart';
import 'package:test_output/models/customer/requests/customer_password_recovery_confirm_p_o_s_t__post_req.dart';
import 'package:test_output/models/customer/requests/customer_register__post_req.dart';
import 'package:test_output/models/customer/requests/customer_register_result__post_req.dart';
import 'package:test_output/models/customer/requests/customer_check_username_availability__get_req.dart';
import 'package:test_output/models/customer/requests/customer_account_activation__post_req.dart';
import 'package:test_output/models/customer/requests/customer_create_marchant_account_for_e_commerce__post_req.dart';
import 'package:test_output/models/customer/requests/customer_info__post_req.dart';
import 'package:test_output/models/customer/requests/customer_update_device_id__post_req.dart';
import 'package:test_output/models/customer/requests/customer_is_last_device_id__get_req.dart';
import 'package:test_output/models/customer/requests/customer_remove_external_association__delete_req.dart';
import 'package:test_output/models/customer/requests/customer_email_revalidation__post_req.dart';
import 'package:test_output/models/customer/requests/customer_address_delete__delete_req.dart';
import 'package:test_output/models/customer/requests/customer_address_add__post_req.dart';
import 'package:test_output/models/customer/requests/customer_address_edit__get_req.dart';
import 'package:test_output/models/customer/requests/customer_address_edit__put_req.dart';
import 'package:test_output/models/customer/requests/customer_single_address_edit__put_req.dart';
import 'package:test_output/models/customer/requests/customer_user_agreement__get_req.dart';
import 'package:test_output/models/customer/requests/customer_change_password__post_req.dart';
import 'package:test_output/models/customer/requests/customer_upload_avatar__post_req.dart';
import 'package:test_output/models/customer/requests/customer_check_balance__post_req.dart';
import 'package:test_output/models/customer/requests/customer_update_device_token__post_req.dart';
import 'package:test_output/models/customer/requests/customer_update_customer_blocked_notification__post_req.dart';
import 'package:test_output/models/customer/requests/customer_recipient_details__get_req.dart';
import 'package:test_output/models/customer/requests/customer_recipient_details_business__get_req.dart';
import 'package:test_output/models/customer/requests/customer_recipient_notification_by_delivery_id__get_req.dart';
import 'package:test_output/models/customer/requests/customer_recipient_notification_by_delivery_id_business__get_req.dart';
import 'package:test_output/models/customer/requests/customer_set_default_address__get_req.dart';
import 'package:test_output/models/customer/requests/customer_icarry_address_add__post_req.dart';
import 'package:test_output/models/customer/requests/customer_single_address_add__post_req.dart';
import 'package:test_output/models/customer/requests/customer_in_active_customer_account__post_req.dart';
import 'package:test_output/models/customer/requests/customer_in_active_customer_account_by_phone__post_req.dart';
import 'package:test_output/models/customer/requests/customer_check_email_or_phone_exist__post_req.dart';
import 'package:test_output/models/customer/requests/customer_receivent_list__get_req.dart';
import 'package:test_output/models/customer/requests/customer_receivent_vendor_list__get_req.dart';
import 'package:test_output/models/customer/requests/customer_manage_team__get_req.dart';
import 'package:test_output/models/customer/requests/customer_create__post_req.dart';
import 'package:test_output/models/customer/requests/customer_delete_team_member__delete_req.dart';

abstract class ICustomerRepository {
  Future<Either<FailureDetails, void>> logoutGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, PasswordRecoveryGetResponse>>
      passwordRecoveryGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, PasswordRecoverySendPostResponse>>
      passwordRecoverySendPost(
    PasswordRecoverySendPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, PasswordRecoveryConfirmPostResponse>>
      passwordRecoveryConfirmPost(
    PasswordRecoveryConfirmPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, PasswordRecoveryConfirmPOSTPostResponse>>
      passwordRecoveryConfirmPOSTPost(
    PasswordRecoveryConfirmPOSTPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, RegisterGetResponse>> registerGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, RegisterPostResponse>> registerPost(
    RegisterPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, LookupItemsGetResponse>> lookupItemsGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, RegisterResultPostResponse>> registerResultPost(
    RegisterResultPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, CheckUsernameAvailabilityGetResponse>>
      checkUsernameAvailabilityGet(
    CheckUsernameAvailabilityGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, AccountActivationPostResponse>>
      accountActivationPost(
    AccountActivationPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, CreateMarchantAccountForECommercePostResponse>>
      createMarchantAccountForECommercePost(
    CreateMarchantAccountForECommercePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, InfoGetResponse>> infoGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, InfoPostResponse>> infoPost(
    InfoPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, UpdateDeviceIdPostResponse>> updateDeviceIdPost(
    UpdateDeviceIdPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> isLastDeviceIdGet(
    IsLastDeviceIdGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> removeExternalAssociationDelete(
    RemoveExternalAssociationDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, EmailRevalidationPostResponse>>
      emailRevalidationPost(
    EmailRevalidationPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, AddressesGetResponse>> addressesGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> addressDeleteDelete(
    AddressDeleteDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, AddressAddGetResponse>> addressAddGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, AddressAddPostResponse>> addressAddPost(
    AddressAddPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, AddressEditGetResponse>> addressEditGet(
    AddressEditGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, AddressEditPutResponse>> addressEditPut(
    AddressEditPutRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, SingleAddressEditPutResponse>>
      singleAddressEditPut(
    SingleAddressEditPutRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, DownloadableProductsGetResponse>>
      downloadableProductsGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, UserAgreementGetResponse>> userAgreementGet(
    UserAgreementGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, ChangePasswordGetResponse>> changePasswordGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, ChangePasswordPostResponse>> changePasswordPost(
    ChangePasswordPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, AvatarGetResponse>> avatarGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, UploadAvatarPostResponse>> uploadAvatarPost(
    UploadAvatarPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> removeAvatarDelete({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, GdprToolsGetResponse>> gdprToolsGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> gdprToolsExportGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, GdprToolsDeleteDeleteResponse>>
      gdprToolsDeleteDelete({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, CheckGiftCardBalanceGetResponse>>
      checkGiftCardBalanceGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, CheckBalancePostResponse>> checkBalancePost(
    CheckBalancePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> updateDeviceTokenPost(
    UpdateDeviceTokenPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> updateCustomerBlockedNotificationPost(
    UpdateCustomerBlockedNotificationPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> getCustomerBlockedNotificationsGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> recipientDetailsGet(
    RecipientDetailsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> recipientDetailsBusinessGet(
    RecipientDetailsBusinessGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> recipientNotificationByDeliveryIdGet(
    RecipientNotificationByDeliveryIdGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>>
      recipientNotificationByDeliveryIdBusinessGet(
    RecipientNotificationByDeliveryIdBusinessGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> getCurrentCustomerGuidGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> setDefaultAddressGet(
    SetDefaultAddressGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, IcarryAddressAddPostResponse>>
      icarryAddressAddPost(
    IcarryAddressAddPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, SingleAddressAddPostResponse>>
      singleAddressAddPost(
    SingleAddressAddPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> inActiveCustomerAccountPost(
    InActiveCustomerAccountPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> inActiveCustomerAccountByPhonePost(
    InActiveCustomerAccountByPhonePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> checkEmailOrPhoneExistPost(
    CheckEmailOrPhoneExistPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, ReceiventListGetResponse>> receiventListGet(
    ReceiventListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, ReceiventVendorListGetResponse>>
      receiventVendorListGet(
    ReceiventVendorListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, ManageTeamGetResponse>> manageTeamGet(
    ManageTeamGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, CreatePostResponse>> createPost(
    CreatePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, void>> deleteTeamMemberDelete(
    DeleteTeamMemberDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, AddressReceiventListGetResponse>>
      addressReceiventListGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<Either<FailureDetails, AddressVendorReceiventListGetResponse>>
      addressVendorReceiventListGet({
    CancelToken? cancelToken,
    Options? options,
  });
}

class CustomerRepositoryImpl implements ICustomerRepository {
  CustomerRepositoryImpl(
    this._dataSource,
    this._failure,
  );

  final ICustomerDataSource _dataSource;

  final Failure _failure;

  @override
  Future<Either<FailureDetails, void>> logoutGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.logoutGet(cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, PasswordRecoveryGetResponse>>
      passwordRecoveryGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.passwordRecoveryGet(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, PasswordRecoverySendPostResponse>>
      passwordRecoverySendPost(
    PasswordRecoverySendPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.passwordRecoverySendPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, PasswordRecoveryConfirmPostResponse>>
      passwordRecoveryConfirmPost(
    PasswordRecoveryConfirmPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.passwordRecoveryConfirmPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, PasswordRecoveryConfirmPOSTPostResponse>>
      passwordRecoveryConfirmPOSTPost(
    PasswordRecoveryConfirmPOSTPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.passwordRecoveryConfirmPOSTPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, RegisterGetResponse>> registerGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.registerGet(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, RegisterPostResponse>> registerPost(
    RegisterPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.registerPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, LookupItemsGetResponse>> lookupItemsGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.lookupItemsGet(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, RegisterResultPostResponse>> registerResultPost(
    RegisterResultPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.registerResultPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, CheckUsernameAvailabilityGetResponse>>
      checkUsernameAvailabilityGet(
    CheckUsernameAvailabilityGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.checkUsernameAvailabilityGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, AccountActivationPostResponse>>
      accountActivationPost(
    AccountActivationPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.accountActivationPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, CreateMarchantAccountForECommercePostResponse>>
      createMarchantAccountForECommercePost(
    CreateMarchantAccountForECommercePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.createMarchantAccountForECommercePost(
          req,
          cancelToken: cancelToken,
          options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, InfoGetResponse>> infoGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result =
          await _dataSource.infoGet(cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, InfoPostResponse>> infoPost(
    InfoPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.infoPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, UpdateDeviceIdPostResponse>> updateDeviceIdPost(
    UpdateDeviceIdPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.updateDeviceIdPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> isLastDeviceIdGet(
    IsLastDeviceIdGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.isLastDeviceIdGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> removeExternalAssociationDelete(
    RemoveExternalAssociationDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.removeExternalAssociationDelete(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, EmailRevalidationPostResponse>>
      emailRevalidationPost(
    EmailRevalidationPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.emailRevalidationPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, AddressesGetResponse>> addressesGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.addressesGet(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> addressDeleteDelete(
    AddressDeleteDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.addressDeleteDelete(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, AddressAddGetResponse>> addressAddGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.addressAddGet(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, AddressAddPostResponse>> addressAddPost(
    AddressAddPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.addressAddPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, AddressEditGetResponse>> addressEditGet(
    AddressEditGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.addressEditGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, AddressEditPutResponse>> addressEditPut(
    AddressEditPutRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.addressEditPut(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, SingleAddressEditPutResponse>>
      singleAddressEditPut(
    SingleAddressEditPutRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.singleAddressEditPut(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, DownloadableProductsGetResponse>>
      downloadableProductsGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.downloadableProductsGet(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, UserAgreementGetResponse>> userAgreementGet(
    UserAgreementGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.userAgreementGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, ChangePasswordGetResponse>> changePasswordGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.changePasswordGet(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, ChangePasswordPostResponse>> changePasswordPost(
    ChangePasswordPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.changePasswordPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, AvatarGetResponse>> avatarGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.avatarGet(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, UploadAvatarPostResponse>> uploadAvatarPost(
    UploadAvatarPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.uploadAvatarPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> removeAvatarDelete({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.removeAvatarDelete(
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, GdprToolsGetResponse>> gdprToolsGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.gdprToolsGet(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> gdprToolsExportGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.gdprToolsExportGet(
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, GdprToolsDeleteDeleteResponse>>
      gdprToolsDeleteDelete({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.gdprToolsDeleteDelete(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, CheckGiftCardBalanceGetResponse>>
      checkGiftCardBalanceGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.checkGiftCardBalanceGet(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, CheckBalancePostResponse>> checkBalancePost(
    CheckBalancePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.checkBalancePost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> updateDeviceTokenPost(
    UpdateDeviceTokenPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.updateDeviceTokenPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> updateCustomerBlockedNotificationPost(
    UpdateCustomerBlockedNotificationPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.updateCustomerBlockedNotificationPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> getCustomerBlockedNotificationsGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.getCustomerBlockedNotificationsGet(
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> recipientDetailsGet(
    RecipientDetailsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.recipientDetailsGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> recipientDetailsBusinessGet(
    RecipientDetailsBusinessGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.recipientDetailsBusinessGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> recipientNotificationByDeliveryIdGet(
    RecipientNotificationByDeliveryIdGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.recipientNotificationByDeliveryIdGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>>
      recipientNotificationByDeliveryIdBusinessGet(
    RecipientNotificationByDeliveryIdBusinessGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.recipientNotificationByDeliveryIdBusinessGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> getCurrentCustomerGuidGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.getCurrentCustomerGuidGet(
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> setDefaultAddressGet(
    SetDefaultAddressGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.setDefaultAddressGet(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, IcarryAddressAddPostResponse>>
      icarryAddressAddPost(
    IcarryAddressAddPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.icarryAddressAddPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, SingleAddressAddPostResponse>>
      singleAddressAddPost(
    SingleAddressAddPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.singleAddressAddPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> inActiveCustomerAccountPost(
    InActiveCustomerAccountPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.inActiveCustomerAccountPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> inActiveCustomerAccountByPhonePost(
    InActiveCustomerAccountByPhonePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.inActiveCustomerAccountByPhonePost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> checkEmailOrPhoneExistPost(
    CheckEmailOrPhoneExistPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.checkEmailOrPhoneExistPost(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, ReceiventListGetResponse>> receiventListGet(
    ReceiventListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.receiventListGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, ReceiventVendorListGetResponse>>
      receiventVendorListGet(
    ReceiventVendorListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.receiventVendorListGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, ManageTeamGetResponse>> manageTeamGet(
    ManageTeamGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.manageTeamGet(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, CreatePostResponse>> createPost(
    CreatePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.createPost(req,
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, void>> deleteTeamMemberDelete(
    DeleteTeamMemberDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      await _dataSource.deleteTeamMemberDelete(req,
          cancelToken: cancelToken, options: options);
      return const Right(null);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, AddressReceiventListGetResponse>>
      addressReceiventListGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.addressReceiventListGet(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, AddressVendorReceiventListGetResponse>>
      addressVendorReceiventListGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    try {
      final result = await _dataSource.addressVendorReceiventListGet(
          cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(_failure.handle(e, stackTrace));
    }
  }
}
