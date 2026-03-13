import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/customer_repository.dart';
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

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('Customer Tests', () {
    test('logoutGet should return Right', () async {
      final result = await api.customer.logoutGet();
      expect(result.isRight(), isTrue);
    });

    test('passwordRecoveryGet should return Right', () async {
      final result = await api.customer.passwordRecoveryGet();
      expect(result.isRight(), isTrue);
    });

    test('passwordRecoverySendPost should return Right', () async {
      final req = PasswordRecoverySendPostRequest();
      final result = await api.customer.passwordRecoverySendPost(req);
      expect(result.isRight(), isTrue);
    });

    test('passwordRecoveryConfirmPost should return Right', () async {
      final req = PasswordRecoveryConfirmPostRequest();
      final result = await api.customer.passwordRecoveryConfirmPost(req);
      expect(result.isRight(), isTrue);
    });

    test('passwordRecoveryConfirmPOSTPost should return Right', () async {
      final req = PasswordRecoveryConfirmPOSTPostRequest();
      final result = await api.customer.passwordRecoveryConfirmPOSTPost(req);
      expect(result.isRight(), isTrue);
    });

    test('registerGet should return Right', () async {
      final result = await api.customer.registerGet();
      expect(result.isRight(), isTrue);
    });

    test('registerPost should return Right', () async {
      final req = RegisterPostRequest();
      final result = await api.customer.registerPost(req);
      expect(result.isRight(), isTrue);
    });

    test('lookupItemsGet should return Right', () async {
      final result = await api.customer.lookupItemsGet();
      expect(result.isRight(), isTrue);
    });

    test('registerResultPost should return Right', () async {
      final req = RegisterResultPostRequest();
      final result = await api.customer.registerResultPost(req);
      expect(result.isRight(), isTrue);
    });

    test('checkUsernameAvailabilityGet should return Right', () async {
      final req = CheckUsernameAvailabilityGetRequest();
      final result = await api.customer.checkUsernameAvailabilityGet(req);
      expect(result.isRight(), isTrue);
    });

    test('accountActivationPost should return Right', () async {
      final req = AccountActivationPostRequest();
      final result = await api.customer.accountActivationPost(req);
      expect(result.isRight(), isTrue);
    });

    test('createMarchantAccountForECommercePost should return Right', () async {
      final req = CreateMarchantAccountForECommercePostRequest();
      final result =
          await api.customer.createMarchantAccountForECommercePost(req);
      expect(result.isRight(), isTrue);
    });

    test('infoGet should return Right', () async {
      final result = await api.customer.infoGet();
      expect(result.isRight(), isTrue);
    });

    test('infoPost should return Right', () async {
      final req = InfoPostRequest();
      final result = await api.customer.infoPost(req);
      expect(result.isRight(), isTrue);
    });

    test('updateDeviceIdPost should return Right', () async {
      final req = UpdateDeviceIdPostRequest();
      final result = await api.customer.updateDeviceIdPost(req);
      expect(result.isRight(), isTrue);
    });

    test('isLastDeviceIdGet should return Right', () async {
      final req = IsLastDeviceIdGetRequest();
      final result = await api.customer.isLastDeviceIdGet(req);
      expect(result.isRight(), isTrue);
    });

    test('removeExternalAssociationDelete should return Right', () async {
      final req = RemoveExternalAssociationDeleteRequest();
      final result = await api.customer.removeExternalAssociationDelete(req);
      expect(result.isRight(), isTrue);
    });

    test('emailRevalidationPost should return Right', () async {
      final req = EmailRevalidationPostRequest();
      final result = await api.customer.emailRevalidationPost(req);
      expect(result.isRight(), isTrue);
    });

    test('addressesGet should return Right', () async {
      final result = await api.customer.addressesGet();
      expect(result.isRight(), isTrue);
    });

    test('addressDeleteDelete should return Right', () async {
      final req = AddressDeleteDeleteRequest();
      final result = await api.customer.addressDeleteDelete(req);
      expect(result.isRight(), isTrue);
    });

    test('addressAddGet should return Right', () async {
      final result = await api.customer.addressAddGet();
      expect(result.isRight(), isTrue);
    });

    test('addressAddPost should return Right', () async {
      final req = AddressAddPostRequest();
      final result = await api.customer.addressAddPost(req);
      expect(result.isRight(), isTrue);
    });

    test('addressEditGet should return Right', () async {
      final req = AddressEditGetRequest();
      final result = await api.customer.addressEditGet(req);
      expect(result.isRight(), isTrue);
    });

    test('addressEditPut should return Right', () async {
      final req = AddressEditPutRequest();
      final result = await api.customer.addressEditPut(req);
      expect(result.isRight(), isTrue);
    });

    test('singleAddressEditPut should return Right', () async {
      final req = SingleAddressEditPutRequest();
      final result = await api.customer.singleAddressEditPut(req);
      expect(result.isRight(), isTrue);
    });

    test('downloadableProductsGet should return Right', () async {
      final result = await api.customer.downloadableProductsGet();
      expect(result.isRight(), isTrue);
    });

    test('userAgreementGet should return Right', () async {
      final req = UserAgreementGetRequest();
      final result = await api.customer.userAgreementGet(req);
      expect(result.isRight(), isTrue);
    });

    test('changePasswordGet should return Right', () async {
      final result = await api.customer.changePasswordGet();
      expect(result.isRight(), isTrue);
    });

    test('changePasswordPost should return Right', () async {
      final req = ChangePasswordPostRequest();
      final result = await api.customer.changePasswordPost(req);
      expect(result.isRight(), isTrue);
    });

    test('avatarGet should return Right', () async {
      final result = await api.customer.avatarGet();
      expect(result.isRight(), isTrue);
    });

    test('uploadAvatarPost should return Right', () async {
      final req = UploadAvatarPostRequest();
      final result = await api.customer.uploadAvatarPost(req);
      expect(result.isRight(), isTrue);
    });

    test('removeAvatarDelete should return Right', () async {
      final result = await api.customer.removeAvatarDelete();
      expect(result.isRight(), isTrue);
    });

    test('gdprToolsGet should return Right', () async {
      final result = await api.customer.gdprToolsGet();
      expect(result.isRight(), isTrue);
    });

    test('gdprToolsExportGet should return Right', () async {
      final result = await api.customer.gdprToolsExportGet();
      expect(result.isRight(), isTrue);
    });

    test('gdprToolsDeleteDelete should return Right', () async {
      final result = await api.customer.gdprToolsDeleteDelete();
      expect(result.isRight(), isTrue);
    });

    test('checkGiftCardBalanceGet should return Right', () async {
      final result = await api.customer.checkGiftCardBalanceGet();
      expect(result.isRight(), isTrue);
    });

    test('checkBalancePost should return Right', () async {
      final req = CheckBalancePostRequest();
      final result = await api.customer.checkBalancePost(req);
      expect(result.isRight(), isTrue);
    });

    test('updateDeviceTokenPost should return Right', () async {
      final req = UpdateDeviceTokenPostRequest();
      final result = await api.customer.updateDeviceTokenPost(req);
      expect(result.isRight(), isTrue);
    });

    test('updateCustomerBlockedNotificationPost should return Right', () async {
      final req = UpdateCustomerBlockedNotificationPostRequest();
      final result =
          await api.customer.updateCustomerBlockedNotificationPost(req);
      expect(result.isRight(), isTrue);
    });

    test('getCustomerBlockedNotificationsGet should return Right', () async {
      final result = await api.customer.getCustomerBlockedNotificationsGet();
      expect(result.isRight(), isTrue);
    });

    test('recipientDetailsGet should return Right', () async {
      final req = RecipientDetailsGetRequest();
      final result = await api.customer.recipientDetailsGet(req);
      expect(result.isRight(), isTrue);
    });

    test('recipientDetailsBusinessGet should return Right', () async {
      final req = RecipientDetailsBusinessGetRequest();
      final result = await api.customer.recipientDetailsBusinessGet(req);
      expect(result.isRight(), isTrue);
    });

    test('recipientNotificationByDeliveryIdGet should return Right', () async {
      final req = RecipientNotificationByDeliveryIdGetRequest();
      final result =
          await api.customer.recipientNotificationByDeliveryIdGet(req);
      expect(result.isRight(), isTrue);
    });

    test('recipientNotificationByDeliveryIdBusinessGet should return Right',
        () async {
      final req = RecipientNotificationByDeliveryIdBusinessGetRequest();
      final result =
          await api.customer.recipientNotificationByDeliveryIdBusinessGet(req);
      expect(result.isRight(), isTrue);
    });

    test('getCurrentCustomerGuidGet should return Right', () async {
      final result = await api.customer.getCurrentCustomerGuidGet();
      expect(result.isRight(), isTrue);
    });

    test('setDefaultAddressGet should return Right', () async {
      final req = SetDefaultAddressGetRequest();
      final result = await api.customer.setDefaultAddressGet(req);
      expect(result.isRight(), isTrue);
    });

    test('icarryAddressAddPost should return Right', () async {
      final req = IcarryAddressAddPostRequest();
      final result = await api.customer.icarryAddressAddPost(req);
      expect(result.isRight(), isTrue);
    });

    test('singleAddressAddPost should return Right', () async {
      final req = SingleAddressAddPostRequest();
      final result = await api.customer.singleAddressAddPost(req);
      expect(result.isRight(), isTrue);
    });

    test('inActiveCustomerAccountPost should return Right', () async {
      final req = InActiveCustomerAccountPostRequest();
      final result = await api.customer.inActiveCustomerAccountPost(req);
      expect(result.isRight(), isTrue);
    });

    test('inActiveCustomerAccountByPhonePost should return Right', () async {
      final req = InActiveCustomerAccountByPhonePostRequest();
      final result = await api.customer.inActiveCustomerAccountByPhonePost(req);
      expect(result.isRight(), isTrue);
    });

    test('checkEmailOrPhoneExistPost should return Right', () async {
      final req = CheckEmailOrPhoneExistPostRequest();
      final result = await api.customer.checkEmailOrPhoneExistPost(req);
      expect(result.isRight(), isTrue);
    });

    test('receiventListGet should return Right', () async {
      final req = ReceiventListGetRequest();
      final result = await api.customer.receiventListGet(req);
      expect(result.isRight(), isTrue);
    });

    test('receiventVendorListGet should return Right', () async {
      final req = ReceiventVendorListGetRequest();
      final result = await api.customer.receiventVendorListGet(req);
      expect(result.isRight(), isTrue);
    });

    test('manageTeamGet should return Right', () async {
      final req = ManageTeamGetRequest();
      final result = await api.customer.manageTeamGet(req);
      expect(result.isRight(), isTrue);
    });

    test('createPost should return Right', () async {
      final req = CreatePostRequest();
      final result = await api.customer.createPost(req);
      expect(result.isRight(), isTrue);
    });

    test('deleteTeamMemberDelete should return Right', () async {
      final req = DeleteTeamMemberDeleteRequest();
      final result = await api.customer.deleteTeamMemberDelete(req);
      expect(result.isRight(), isTrue);
    });

    test('addressReceiventListGet should return Right', () async {
      final result = await api.customer.addressReceiventListGet();
      expect(result.isRight(), isTrue);
    });

    test('addressVendorReceiventListGet should return Right', () async {
      final result = await api.customer.addressVendorReceiventListGet();
      expect(result.isRight(), isTrue);
    });
  });
}
