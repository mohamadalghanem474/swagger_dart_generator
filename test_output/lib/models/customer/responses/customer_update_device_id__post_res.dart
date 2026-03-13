import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class UpdateDeviceIdPostResponse extends Equatable {
  const UpdateDeviceIdPostResponse({
    this.CustomerGuid,
    this.Username,
    this.Email,
    this.EmailToRevalidate,
    this.AdminComment,
    this.IsTaxExempt,
    this.AffiliateId,
    this.VendorId,
    this.HasShoppingCartItems,
    this.RequireReLogin,
    this.FailedLoginAttempts,
    this.CannotLoginUntilDateUtc,
    this.Active,
    this.Deleted,
    this.IsSystemAccount,
    this.SystemName,
    this.LastIpAddress,
    this.CreatedOnUtc,
    this.LastLoginDateUtc,
    this.LastActivityDateUtc,
    this.RegisteredInStoreId,
    this.BillingAddressId,
    this.ShippingAddressId,
    this.IsApi,
    this.CarrierSystemName,
    this.isGuideEnabled,
    this.LastDeviceId,
    this.IsCarrierMember,
    this.RegisteredForVendorId,
    this.DeviceToken,
    this.Id,
  });

  final String? CustomerGuid;

  final String? Username;

  final String? Email;

  final DateTime? EmailToRevalidate;

  final String? AdminComment;

  final bool? IsTaxExempt;

  final int? AffiliateId;

  final int? VendorId;

  final bool? HasShoppingCartItems;

  final bool? RequireReLogin;

  final int? FailedLoginAttempts;

  final DateTime? CannotLoginUntilDateUtc;

  final bool? Active;

  final bool? Deleted;

  final bool? IsSystemAccount;

  final String? SystemName;

  final String? LastIpAddress;

  final String? CreatedOnUtc;

  final DateTime? LastLoginDateUtc;

  final DateTime? LastActivityDateUtc;

  final int? RegisteredInStoreId;

  final int? BillingAddressId;

  final int? ShippingAddressId;

  final bool? IsApi;

  final String? CarrierSystemName;

  final bool? isGuideEnabled;

  final String? LastDeviceId;

  final bool? IsCarrierMember;

  final int? RegisteredForVendorId;

  final String? DeviceToken;

  final int? Id;

  static UpdateDeviceIdPostResponse fromJson(Map<String, dynamic> json) {
    return UpdateDeviceIdPostResponse(
      CustomerGuid: json['CustomerGuid'] == null
          ? null
          : (json['CustomerGuid'] as String),
      Username: json['Username'] == null ? null : (json['Username'] as String),
      Email: json['Email'] == null ? null : (json['Email'] as String),
      EmailToRevalidate: json['EmailToRevalidate'] == null
          ? null
          : DateTime.parse((json['EmailToRevalidate'] as String)),
      AdminComment: json['AdminComment'] == null
          ? null
          : (json['AdminComment'] as String),
      IsTaxExempt:
          json['IsTaxExempt'] == null ? null : (json['IsTaxExempt'] as bool),
      AffiliateId:
          json['AffiliateId'] == null ? null : (json['AffiliateId'] as int),
      VendorId: json['VendorId'] == null ? null : (json['VendorId'] as int),
      HasShoppingCartItems: json['HasShoppingCartItems'] == null
          ? null
          : (json['HasShoppingCartItems'] as bool),
      RequireReLogin: json['RequireReLogin'] == null
          ? null
          : (json['RequireReLogin'] as bool),
      FailedLoginAttempts: json['FailedLoginAttempts'] == null
          ? null
          : (json['FailedLoginAttempts'] as int),
      CannotLoginUntilDateUtc: json['CannotLoginUntilDateUtc'] == null
          ? null
          : DateTime.parse((json['CannotLoginUntilDateUtc'] as String)),
      Active: json['Active'] == null ? null : (json['Active'] as bool),
      Deleted: json['Deleted'] == null ? null : (json['Deleted'] as bool),
      IsSystemAccount: json['IsSystemAccount'] == null
          ? null
          : (json['IsSystemAccount'] as bool),
      SystemName:
          json['SystemName'] == null ? null : (json['SystemName'] as String),
      LastIpAddress: json['LastIpAddress'] == null
          ? null
          : (json['LastIpAddress'] as String),
      CreatedOnUtc: json['CreatedOnUtc'] == null
          ? null
          : (json['CreatedOnUtc'] as String),
      LastLoginDateUtc: json['LastLoginDateUtc'] == null
          ? null
          : DateTime.parse((json['LastLoginDateUtc'] as String)),
      LastActivityDateUtc: json['LastActivityDateUtc'] == null
          ? null
          : DateTime.parse((json['LastActivityDateUtc'] as String)),
      RegisteredInStoreId: json['RegisteredInStoreId'] == null
          ? null
          : (json['RegisteredInStoreId'] as int),
      BillingAddressId: json['BillingAddressId'] == null
          ? null
          : (json['BillingAddressId'] as int),
      ShippingAddressId: json['ShippingAddressId'] == null
          ? null
          : (json['ShippingAddressId'] as int),
      IsApi: json['IsApi'] == null ? null : (json['IsApi'] as bool),
      CarrierSystemName: json['CarrierSystemName'] == null
          ? null
          : (json['CarrierSystemName'] as String),
      isGuideEnabled: json['isGuideEnabled'] == null
          ? null
          : (json['isGuideEnabled'] as bool),
      LastDeviceId: json['LastDeviceId'] == null
          ? null
          : (json['LastDeviceId'] as String),
      IsCarrierMember: json['IsCarrierMember'] == null
          ? null
          : (json['IsCarrierMember'] as bool),
      RegisteredForVendorId: json['RegisteredForVendorId'] == null
          ? null
          : (json['RegisteredForVendorId'] as int),
      DeviceToken:
          json['DeviceToken'] == null ? null : (json['DeviceToken'] as String),
      Id: json['Id'] == null ? null : (json['Id'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'CustomerGuid': CustomerGuid,
      'Username': Username,
      'Email': Email,
      'EmailToRevalidate': EmailToRevalidate?.toIso8601String(),
      'AdminComment': AdminComment,
      'IsTaxExempt': IsTaxExempt,
      'AffiliateId': AffiliateId,
      'VendorId': VendorId,
      'HasShoppingCartItems': HasShoppingCartItems,
      'RequireReLogin': RequireReLogin,
      'FailedLoginAttempts': FailedLoginAttempts,
      'CannotLoginUntilDateUtc': CannotLoginUntilDateUtc?.toIso8601String(),
      'Active': Active,
      'Deleted': Deleted,
      'IsSystemAccount': IsSystemAccount,
      'SystemName': SystemName,
      'LastIpAddress': LastIpAddress,
      'CreatedOnUtc': CreatedOnUtc,
      'LastLoginDateUtc': LastLoginDateUtc?.toIso8601String(),
      'LastActivityDateUtc': LastActivityDateUtc?.toIso8601String(),
      'RegisteredInStoreId': RegisteredInStoreId,
      'BillingAddressId': BillingAddressId,
      'ShippingAddressId': ShippingAddressId,
      'IsApi': IsApi,
      'CarrierSystemName': CarrierSystemName,
      'isGuideEnabled': isGuideEnabled,
      'LastDeviceId': LastDeviceId,
      'IsCarrierMember': IsCarrierMember,
      'RegisteredForVendorId': RegisteredForVendorId,
      'DeviceToken': DeviceToken,
      'Id': Id,
    };
  }

  UpdateDeviceIdPostResponse copyWith({
    String? CustomerGuid,
    String? Username,
    String? Email,
    DateTime? EmailToRevalidate,
    String? AdminComment,
    bool? IsTaxExempt,
    int? AffiliateId,
    int? VendorId,
    bool? HasShoppingCartItems,
    bool? RequireReLogin,
    int? FailedLoginAttempts,
    DateTime? CannotLoginUntilDateUtc,
    bool? Active,
    bool? Deleted,
    bool? IsSystemAccount,
    String? SystemName,
    String? LastIpAddress,
    String? CreatedOnUtc,
    DateTime? LastLoginDateUtc,
    DateTime? LastActivityDateUtc,
    int? RegisteredInStoreId,
    int? BillingAddressId,
    int? ShippingAddressId,
    bool? IsApi,
    String? CarrierSystemName,
    bool? isGuideEnabled,
    String? LastDeviceId,
    bool? IsCarrierMember,
    int? RegisteredForVendorId,
    String? DeviceToken,
    int? Id,
  }) {
    return UpdateDeviceIdPostResponse(
      CustomerGuid: CustomerGuid ?? this.CustomerGuid,
      Username: Username ?? this.Username,
      Email: Email ?? this.Email,
      EmailToRevalidate: EmailToRevalidate ?? this.EmailToRevalidate,
      AdminComment: AdminComment ?? this.AdminComment,
      IsTaxExempt: IsTaxExempt ?? this.IsTaxExempt,
      AffiliateId: AffiliateId ?? this.AffiliateId,
      VendorId: VendorId ?? this.VendorId,
      HasShoppingCartItems: HasShoppingCartItems ?? this.HasShoppingCartItems,
      RequireReLogin: RequireReLogin ?? this.RequireReLogin,
      FailedLoginAttempts: FailedLoginAttempts ?? this.FailedLoginAttempts,
      CannotLoginUntilDateUtc:
          CannotLoginUntilDateUtc ?? this.CannotLoginUntilDateUtc,
      Active: Active ?? this.Active,
      Deleted: Deleted ?? this.Deleted,
      IsSystemAccount: IsSystemAccount ?? this.IsSystemAccount,
      SystemName: SystemName ?? this.SystemName,
      LastIpAddress: LastIpAddress ?? this.LastIpAddress,
      CreatedOnUtc: CreatedOnUtc ?? this.CreatedOnUtc,
      LastLoginDateUtc: LastLoginDateUtc ?? this.LastLoginDateUtc,
      LastActivityDateUtc: LastActivityDateUtc ?? this.LastActivityDateUtc,
      RegisteredInStoreId: RegisteredInStoreId ?? this.RegisteredInStoreId,
      BillingAddressId: BillingAddressId ?? this.BillingAddressId,
      ShippingAddressId: ShippingAddressId ?? this.ShippingAddressId,
      IsApi: IsApi ?? this.IsApi,
      CarrierSystemName: CarrierSystemName ?? this.CarrierSystemName,
      isGuideEnabled: isGuideEnabled ?? this.isGuideEnabled,
      LastDeviceId: LastDeviceId ?? this.LastDeviceId,
      IsCarrierMember: IsCarrierMember ?? this.IsCarrierMember,
      RegisteredForVendorId:
          RegisteredForVendorId ?? this.RegisteredForVendorId,
      DeviceToken: DeviceToken ?? this.DeviceToken,
      Id: Id ?? this.Id,
    );
  }

  @override
  List<Object?> get props {
    return [
      CustomerGuid,
      Username,
      Email,
      EmailToRevalidate,
      AdminComment,
      IsTaxExempt,
      AffiliateId,
      VendorId,
      HasShoppingCartItems,
      RequireReLogin,
      FailedLoginAttempts,
      CannotLoginUntilDateUtc,
      Active,
      Deleted,
      IsSystemAccount,
      SystemName,
      LastIpAddress,
      CreatedOnUtc,
      LastLoginDateUtc,
      LastActivityDateUtc,
      RegisteredInStoreId,
      BillingAddressId,
      ShippingAddressId,
      IsApi,
      CarrierSystemName,
      isGuideEnabled,
      LastDeviceId,
      IsCarrierMember,
      RegisteredForVendorId,
      DeviceToken,
      Id,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
