import 'package:dio/dio.dart';
import 'package:test_output/end_points.dart';
import 'package:test_output/models/customer/responses/customer_password_recovery__get_res.dart';
import 'package:test_output/models/customer/requests/customer_password_recovery_send__post_req.dart';
import 'package:test_output/models/customer/responses/customer_password_recovery_send__post_res.dart';
import 'package:test_output/models/customer/requests/customer_password_recovery_confirm__post_req.dart';
import 'package:test_output/models/customer/responses/customer_password_recovery_confirm__post_res.dart';
import 'package:test_output/models/customer/requests/customer_password_recovery_confirm_p_o_s_t__post_req.dart';
import 'package:test_output/models/customer/responses/customer_password_recovery_confirm_p_o_s_t__post_res.dart';
import 'package:test_output/models/customer/responses/customer_register__get_res.dart';
import 'package:test_output/models/customer/requests/customer_register__post_req.dart';
import 'package:test_output/models/customer/responses/customer_register__post_res.dart';
import 'package:test_output/models/customer/responses/customer_lookup_items__get_res.dart';
import 'package:test_output/models/customer/requests/customer_register_result__post_req.dart';
import 'package:test_output/models/customer/responses/customer_register_result__post_res.dart';
import 'package:test_output/models/customer/requests/customer_check_username_availability__get_req.dart';
import 'package:test_output/models/customer/responses/customer_check_username_availability__get_res.dart';
import 'package:test_output/models/customer/requests/customer_account_activation__post_req.dart';
import 'package:test_output/models/customer/responses/customer_account_activation__post_res.dart';
import 'package:test_output/models/customer/requests/customer_create_marchant_account_for_e_commerce__post_req.dart';
import 'package:test_output/models/customer/responses/customer_create_marchant_account_for_e_commerce__post_res.dart';
import 'package:test_output/models/customer/responses/customer_info__get_res.dart';
import 'package:test_output/models/customer/requests/customer_info__post_req.dart';
import 'package:test_output/models/customer/responses/customer_info__post_res.dart';
import 'package:test_output/models/customer/requests/customer_update_device_id__post_req.dart';
import 'package:test_output/models/customer/responses/customer_update_device_id__post_res.dart';
import 'package:test_output/models/customer/requests/customer_is_last_device_id__get_req.dart';
import 'package:test_output/models/customer/requests/customer_remove_external_association__delete_req.dart';
import 'package:test_output/models/customer/requests/customer_email_revalidation__post_req.dart';
import 'package:test_output/models/customer/responses/customer_email_revalidation__post_res.dart';
import 'package:test_output/models/customer/responses/customer_addresses__get_res.dart';
import 'package:test_output/models/customer/requests/customer_address_delete__delete_req.dart';
import 'package:test_output/models/customer/responses/customer_address_add__get_res.dart';
import 'package:test_output/models/customer/requests/customer_address_add__post_req.dart';
import 'package:test_output/models/customer/responses/customer_address_add__post_res.dart';
import 'package:test_output/models/customer/requests/customer_address_edit__get_req.dart';
import 'package:test_output/models/customer/responses/customer_address_edit__get_res.dart';
import 'package:test_output/models/customer/requests/customer_address_edit__put_req.dart';
import 'package:test_output/models/customer/responses/customer_address_edit__put_res.dart';
import 'package:test_output/models/customer/requests/customer_single_address_edit__put_req.dart';
import 'package:test_output/models/customer/responses/customer_single_address_edit__put_res.dart';
import 'package:test_output/models/customer/responses/customer_downloadable_products__get_res.dart';
import 'package:test_output/models/customer/requests/customer_user_agreement__get_req.dart';
import 'package:test_output/models/customer/responses/customer_user_agreement__get_res.dart';
import 'package:test_output/models/customer/responses/customer_change_password__get_res.dart';
import 'package:test_output/models/customer/requests/customer_change_password__post_req.dart';
import 'package:test_output/models/customer/responses/customer_change_password__post_res.dart';
import 'package:test_output/models/customer/responses/customer_avatar__get_res.dart';
import 'package:test_output/models/customer/requests/customer_upload_avatar__post_req.dart';
import 'package:test_output/models/customer/responses/customer_upload_avatar__post_res.dart';
import 'package:test_output/models/customer/responses/customer_gdpr_tools__get_res.dart';
import 'package:test_output/models/customer/responses/customer_gdpr_tools_delete__delete_res.dart';
import 'package:test_output/models/customer/responses/customer_check_gift_card_balance__get_res.dart';
import 'package:test_output/models/customer/requests/customer_check_balance__post_req.dart';
import 'package:test_output/models/customer/responses/customer_check_balance__post_res.dart';
import 'package:test_output/models/customer/requests/customer_update_device_token__post_req.dart';
import 'package:test_output/models/customer/requests/customer_update_customer_blocked_notification__post_req.dart';
import 'package:test_output/models/customer/requests/customer_recipient_details__get_req.dart';
import 'package:test_output/models/customer/requests/customer_recipient_details_business__get_req.dart';
import 'package:test_output/models/customer/requests/customer_recipient_notification_by_delivery_id__get_req.dart';
import 'package:test_output/models/customer/requests/customer_recipient_notification_by_delivery_id_business__get_req.dart';
import 'package:test_output/models/customer/requests/customer_set_default_address__get_req.dart';
import 'package:test_output/models/customer/requests/customer_icarry_address_add__post_req.dart';
import 'package:test_output/models/customer/responses/customer_icarry_address_add__post_res.dart';
import 'package:test_output/models/customer/requests/customer_single_address_add__post_req.dart';
import 'package:test_output/models/customer/responses/customer_single_address_add__post_res.dart';
import 'package:test_output/models/customer/requests/customer_in_active_customer_account__post_req.dart';
import 'package:test_output/models/customer/requests/customer_in_active_customer_account_by_phone__post_req.dart';
import 'package:test_output/models/customer/requests/customer_check_email_or_phone_exist__post_req.dart';
import 'package:test_output/models/customer/requests/customer_receivent_list__get_req.dart';
import 'package:test_output/models/customer/responses/customer_receivent_list__get_res.dart';
import 'package:test_output/models/customer/requests/customer_receivent_vendor_list__get_req.dart';
import 'package:test_output/models/customer/responses/customer_receivent_vendor_list__get_res.dart';
import 'package:test_output/models/customer/requests/customer_manage_team__get_req.dart';
import 'package:test_output/models/customer/responses/customer_manage_team__get_res.dart';
import 'package:test_output/models/customer/requests/customer_create__post_req.dart';
import 'package:test_output/models/customer/responses/customer_create__post_res.dart';
import 'package:test_output/models/customer/requests/customer_delete_team_member__delete_req.dart';
import 'package:test_output/models/customer/responses/customer_address_receivent_list__get_res.dart';
import 'package:test_output/models/customer/responses/customer_address_vendor_receivent_list__get_res.dart';

abstract class ICustomerDataSource {
  Future<void> logoutGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<PasswordRecoveryGetResponse> passwordRecoveryGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<PasswordRecoverySendPostResponse> passwordRecoverySendPost(
    PasswordRecoverySendPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<PasswordRecoveryConfirmPostResponse> passwordRecoveryConfirmPost(
    PasswordRecoveryConfirmPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<PasswordRecoveryConfirmPOSTPostResponse>
      passwordRecoveryConfirmPOSTPost(
    PasswordRecoveryConfirmPOSTPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<RegisterGetResponse> registerGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<RegisterPostResponse> registerPost(
    RegisterPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<LookupItemsGetResponse> lookupItemsGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<RegisterResultPostResponse> registerResultPost(
    RegisterResultPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<CheckUsernameAvailabilityGetResponse> checkUsernameAvailabilityGet(
    CheckUsernameAvailabilityGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<AccountActivationPostResponse> accountActivationPost(
    AccountActivationPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<CreateMarchantAccountForECommercePostResponse>
      createMarchantAccountForECommercePost(
    CreateMarchantAccountForECommercePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<InfoGetResponse> infoGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<InfoPostResponse> infoPost(
    InfoPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<UpdateDeviceIdPostResponse> updateDeviceIdPost(
    UpdateDeviceIdPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> isLastDeviceIdGet(
    IsLastDeviceIdGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> removeExternalAssociationDelete(
    RemoveExternalAssociationDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<EmailRevalidationPostResponse> emailRevalidationPost(
    EmailRevalidationPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<AddressesGetResponse> addressesGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> addressDeleteDelete(
    AddressDeleteDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<AddressAddGetResponse> addressAddGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<AddressAddPostResponse> addressAddPost(
    AddressAddPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<AddressEditGetResponse> addressEditGet(
    AddressEditGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<AddressEditPutResponse> addressEditPut(
    AddressEditPutRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<SingleAddressEditPutResponse> singleAddressEditPut(
    SingleAddressEditPutRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<DownloadableProductsGetResponse> downloadableProductsGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<UserAgreementGetResponse> userAgreementGet(
    UserAgreementGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<ChangePasswordGetResponse> changePasswordGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<ChangePasswordPostResponse> changePasswordPost(
    ChangePasswordPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<AvatarGetResponse> avatarGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<UploadAvatarPostResponse> uploadAvatarPost(
    UploadAvatarPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> removeAvatarDelete({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<GdprToolsGetResponse> gdprToolsGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> gdprToolsExportGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<GdprToolsDeleteDeleteResponse> gdprToolsDeleteDelete({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<CheckGiftCardBalanceGetResponse> checkGiftCardBalanceGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<CheckBalancePostResponse> checkBalancePost(
    CheckBalancePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> updateDeviceTokenPost(
    UpdateDeviceTokenPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> updateCustomerBlockedNotificationPost(
    UpdateCustomerBlockedNotificationPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> getCustomerBlockedNotificationsGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> recipientDetailsGet(
    RecipientDetailsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> recipientDetailsBusinessGet(
    RecipientDetailsBusinessGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> recipientNotificationByDeliveryIdGet(
    RecipientNotificationByDeliveryIdGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> recipientNotificationByDeliveryIdBusinessGet(
    RecipientNotificationByDeliveryIdBusinessGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> getCurrentCustomerGuidGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> setDefaultAddressGet(
    SetDefaultAddressGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<IcarryAddressAddPostResponse> icarryAddressAddPost(
    IcarryAddressAddPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<SingleAddressAddPostResponse> singleAddressAddPost(
    SingleAddressAddPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> inActiveCustomerAccountPost(
    InActiveCustomerAccountPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> inActiveCustomerAccountByPhonePost(
    InActiveCustomerAccountByPhonePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> checkEmailOrPhoneExistPost(
    CheckEmailOrPhoneExistPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<ReceiventListGetResponse> receiventListGet(
    ReceiventListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<ReceiventVendorListGetResponse> receiventVendorListGet(
    ReceiventVendorListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<ManageTeamGetResponse> manageTeamGet(
    ManageTeamGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<CreatePostResponse> createPost(
    CreatePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<void> deleteTeamMemberDelete(
    DeleteTeamMemberDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  });
  Future<AddressReceiventListGetResponse> addressReceiventListGet({
    CancelToken? cancelToken,
    Options? options,
  });
  Future<AddressVendorReceiventListGetResponse> addressVendorReceiventListGet({
    CancelToken? cancelToken,
    Options? options,
  });
}

class CustomerDataSourceImpl implements ICustomerDataSource {
  CustomerDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<void> logoutGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.logoutGet;
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<PasswordRecoveryGetResponse> passwordRecoveryGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.passwordRecoveryGet;
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return PasswordRecoveryGetResponse.fromJson(result.data);
  }

  @override
  Future<PasswordRecoverySendPostResponse> passwordRecoverySendPost(
    PasswordRecoverySendPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.passwordRecoverySendPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return PasswordRecoverySendPostResponse.fromJson(result.data);
  }

  @override
  Future<PasswordRecoveryConfirmPostResponse> passwordRecoveryConfirmPost(
    PasswordRecoveryConfirmPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.passwordRecoveryConfirmPost;
    final result = await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return PasswordRecoveryConfirmPostResponse.fromJson(result.data);
  }

  @override
  Future<PasswordRecoveryConfirmPOSTPostResponse>
      passwordRecoveryConfirmPOSTPost(
    PasswordRecoveryConfirmPOSTPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.passwordRecoveryConfirmPOSTPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return PasswordRecoveryConfirmPOSTPostResponse.fromJson(result.data);
  }

  @override
  Future<RegisterGetResponse> registerGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.registerGet;
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return RegisterGetResponse.fromJson(result.data);
  }

  @override
  Future<RegisterPostResponse> registerPost(
    RegisterPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.registerPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return RegisterPostResponse.fromJson(result.data);
  }

  @override
  Future<LookupItemsGetResponse> lookupItemsGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.lookupItemsGet;
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return LookupItemsGetResponse.fromJson(result.data);
  }

  @override
  Future<RegisterResultPostResponse> registerResultPost(
    RegisterResultPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.registerResultPost;
    url = url.replaceAll(
      '{resultId}',
      req.resultid?.toString() ?? '',
    );
    final result = await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return RegisterResultPostResponse.fromJson(result.data);
  }

  @override
  Future<CheckUsernameAvailabilityGetResponse> checkUsernameAvailabilityGet(
    CheckUsernameAvailabilityGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.checkUsernameAvailabilityGet;
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return CheckUsernameAvailabilityGetResponse.fromJson(result.data);
  }

  @override
  Future<AccountActivationPostResponse> accountActivationPost(
    AccountActivationPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.accountActivationPost;
    final result = await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return AccountActivationPostResponse.fromJson(result.data);
  }

  @override
  Future<CreateMarchantAccountForECommercePostResponse>
      createMarchantAccountForECommercePost(
    CreateMarchantAccountForECommercePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.createMarchantAccountForECommercePost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return CreateMarchantAccountForECommercePostResponse.fromJson(result.data);
  }

  @override
  Future<InfoGetResponse> infoGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.infoGet;
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return InfoGetResponse.fromJson(result.data);
  }

  @override
  Future<InfoPostResponse> infoPost(
    InfoPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.infoPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return InfoPostResponse.fromJson(result.data);
  }

  @override
  Future<UpdateDeviceIdPostResponse> updateDeviceIdPost(
    UpdateDeviceIdPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.updateDeviceIdPost;
    final result = await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return UpdateDeviceIdPostResponse.fromJson(result.data);
  }

  @override
  Future<void> isLastDeviceIdGet(
    IsLastDeviceIdGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.isLastDeviceIdGet;
    await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> removeExternalAssociationDelete(
    RemoveExternalAssociationDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.removeExternalAssociationDelete;
    url = url.replaceAll(
      '{id}',
      req.id?.toString() ?? '',
    );
    await _dio.delete(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<EmailRevalidationPostResponse> emailRevalidationPost(
    EmailRevalidationPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.emailRevalidationPost;
    final result = await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return EmailRevalidationPostResponse.fromJson(result.data);
  }

  @override
  Future<AddressesGetResponse> addressesGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.addressesGet;
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return AddressesGetResponse.fromJson(result.data);
  }

  @override
  Future<void> addressDeleteDelete(
    AddressDeleteDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.addressDeleteDelete;
    url = url.replaceAll(
      '{addressId}',
      req.addressid?.toString() ?? '',
    );
    await _dio.delete(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<AddressAddGetResponse> addressAddGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.addressAddGet;
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return AddressAddGetResponse.fromJson(result.data);
  }

  @override
  Future<AddressAddPostResponse> addressAddPost(
    AddressAddPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.addressAddPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return AddressAddPostResponse.fromJson(result.data);
  }

  @override
  Future<AddressEditGetResponse> addressEditGet(
    AddressEditGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.addressEditGet;
    url = url.replaceAll(
      '{addressId}',
      req.addressid?.toString() ?? '',
    );
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return AddressEditGetResponse.fromJson(result.data);
  }

  @override
  Future<AddressEditPutResponse> addressEditPut(
    AddressEditPutRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.addressEditPut;
    url = url.replaceAll(
      '{addressId}',
      req.addressid?.toString() ?? '',
    );
    final result = await _dio.put(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return AddressEditPutResponse.fromJson(result.data);
  }

  @override
  Future<SingleAddressEditPutResponse> singleAddressEditPut(
    SingleAddressEditPutRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.singleAddressEditPut;
    url = url.replaceAll(
      '{addressId}',
      req.addressid?.toString() ?? '',
    );
    final result = await _dio.put(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return SingleAddressEditPutResponse.fromJson(result.data);
  }

  @override
  Future<DownloadableProductsGetResponse> downloadableProductsGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.downloadableProductsGet;
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return DownloadableProductsGetResponse.fromJson(result.data);
  }

  @override
  Future<UserAgreementGetResponse> userAgreementGet(
    UserAgreementGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.userAgreementGet;
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return UserAgreementGetResponse.fromJson(result.data);
  }

  @override
  Future<ChangePasswordGetResponse> changePasswordGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.changePasswordGet;
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return ChangePasswordGetResponse.fromJson(result.data);
  }

  @override
  Future<ChangePasswordPostResponse> changePasswordPost(
    ChangePasswordPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.changePasswordPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return ChangePasswordPostResponse.fromJson(result.data);
  }

  @override
  Future<AvatarGetResponse> avatarGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.avatarGet;
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return AvatarGetResponse.fromJson(result.data);
  }

  @override
  Future<UploadAvatarPostResponse> uploadAvatarPost(
    UploadAvatarPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.uploadAvatarPost;
    final result = await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return UploadAvatarPostResponse.fromJson(result.data);
  }

  @override
  Future<void> removeAvatarDelete({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.removeAvatarDelete;
    await _dio.delete(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<GdprToolsGetResponse> gdprToolsGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.gdprToolsGet;
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return GdprToolsGetResponse.fromJson(result.data);
  }

  @override
  Future<void> gdprToolsExportGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.gdprToolsExportGet;
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<GdprToolsDeleteDeleteResponse> gdprToolsDeleteDelete({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.gdprToolsDeleteDelete;
    final result = await _dio.delete(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return GdprToolsDeleteDeleteResponse.fromJson(result.data);
  }

  @override
  Future<CheckGiftCardBalanceGetResponse> checkGiftCardBalanceGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.checkGiftCardBalanceGet;
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return CheckGiftCardBalanceGetResponse.fromJson(result.data);
  }

  @override
  Future<CheckBalancePostResponse> checkBalancePost(
    CheckBalancePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.checkBalancePost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return CheckBalancePostResponse.fromJson(result.data);
  }

  @override
  Future<void> updateDeviceTokenPost(
    UpdateDeviceTokenPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.updateDeviceTokenPost;
    await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> updateCustomerBlockedNotificationPost(
    UpdateCustomerBlockedNotificationPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.updateCustomerBlockedNotificationPost;
    await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> getCustomerBlockedNotificationsGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.getCustomerBlockedNotificationsGet;
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> recipientDetailsGet(
    RecipientDetailsGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.recipientDetailsGet;
    await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> recipientDetailsBusinessGet(
    RecipientDetailsBusinessGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.recipientDetailsBusinessGet;
    await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> recipientNotificationByDeliveryIdGet(
    RecipientNotificationByDeliveryIdGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.recipientNotificationByDeliveryIdGet;
    await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> recipientNotificationByDeliveryIdBusinessGet(
    RecipientNotificationByDeliveryIdBusinessGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.recipientNotificationByDeliveryIdBusinessGet;
    await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> getCurrentCustomerGuidGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.getCurrentCustomerGuidGet;
    await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> setDefaultAddressGet(
    SetDefaultAddressGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.setDefaultAddressGet;
    await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<IcarryAddressAddPostResponse> icarryAddressAddPost(
    IcarryAddressAddPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.icarryAddressAddPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return IcarryAddressAddPostResponse.fromJson(result.data);
  }

  @override
  Future<SingleAddressAddPostResponse> singleAddressAddPost(
    SingleAddressAddPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.singleAddressAddPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return SingleAddressAddPostResponse.fromJson(result.data);
  }

  @override
  Future<void> inActiveCustomerAccountPost(
    InActiveCustomerAccountPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.inActiveCustomerAccountPost;
    url = url.replaceAll(
      '{Email}',
      req.email?.toString() ?? '',
    );
    await _dio.post(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> inActiveCustomerAccountByPhonePost(
    InActiveCustomerAccountByPhonePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.inActiveCustomerAccountByPhonePost;
    url = url.replaceAll(
      '{phone}',
      req.phone?.toString() ?? '',
    );
    await _dio.post(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<void> checkEmailOrPhoneExistPost(
    CheckEmailOrPhoneExistPostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.checkEmailOrPhoneExistPost;
    await _dio.post(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<ReceiventListGetResponse> receiventListGet(
    ReceiventListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.receiventListGet;
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return ReceiventListGetResponse.fromJson(result.data);
  }

  @override
  Future<ReceiventVendorListGetResponse> receiventVendorListGet(
    ReceiventVendorListGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.receiventVendorListGet;
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return ReceiventVendorListGetResponse.fromJson(result.data);
  }

  @override
  Future<ManageTeamGetResponse> manageTeamGet(
    ManageTeamGetRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.manageTeamGet;
    final result = await _dio.get(
      url,
      queryParameters: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return ManageTeamGetResponse.fromJson(result.data);
  }

  @override
  Future<CreatePostResponse> createPost(
    CreatePostRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.createPost;
    final result = await _dio.post(
      url,
      data: req.toJson(),
      cancelToken: cancelToken,
      options: options,
    );
    return CreatePostResponse.fromJson(result.data);
  }

  @override
  Future<void> deleteTeamMemberDelete(
    DeleteTeamMemberDeleteRequest req, {
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.deleteTeamMemberDelete;
    url = url.replaceAll(
      '{id}',
      req.id?.toString() ?? '',
    );
    await _dio.delete(
      url,
      cancelToken: cancelToken,
      options: options,
    );
  }

  @override
  Future<AddressReceiventListGetResponse> addressReceiventListGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.addressReceiventListGet;
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return AddressReceiventListGetResponse.fromJson(result.data);
  }

  @override
  Future<AddressVendorReceiventListGetResponse> addressVendorReceiventListGet({
    CancelToken? cancelToken,
    Options? options,
  }) async {
    var url = EndPoints.customer.addressVendorReceiventListGet;
    final result = await _dio.get(
      url,
      cancelToken: cancelToken,
      options: options,
    );
    return AddressVendorReceiventListGetResponse.fromJson(result.data);
  }
}
