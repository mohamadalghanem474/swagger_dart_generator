import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CreateMarchantAccountForECommercePostResponse extends Equatable {
  const CreateMarchantAccountForECommercePostResponse({
    this.connectorEmail,
    this.connectorPassword,
    this.Email,
    this.FirstName,
    this.LastName,
    this.Company,
    this.Phone,
    this.Password,
    this.AffiliateCode,
    this.WarehouseName,
    this.ConnectorType,
    this.ConnectorSiteURL,
  });

  final String? connectorEmail;

  final String? connectorPassword;

  final String? Email;

  final String? FirstName;

  final String? LastName;

  final String? Company;

  final String? Phone;

  final String? Password;

  final String? AffiliateCode;

  final String? WarehouseName;

  final String? ConnectorType;

  final String? ConnectorSiteURL;

  static CreateMarchantAccountForECommercePostResponse fromJson(
      Map<String, dynamic> json) {
    return CreateMarchantAccountForECommercePostResponse(
      connectorEmail: json['connectorEmail'] == null
          ? null
          : (json['connectorEmail'] as String),
      connectorPassword: json['connectorPassword'] == null
          ? null
          : (json['connectorPassword'] as String),
      Email: json['Email'] == null ? null : (json['Email'] as String),
      FirstName:
          json['FirstName'] == null ? null : (json['FirstName'] as String),
      LastName: json['LastName'] == null ? null : (json['LastName'] as String),
      Company: json['Company'] == null ? null : (json['Company'] as String),
      Phone: json['Phone'] == null ? null : (json['Phone'] as String),
      Password: json['Password'] == null ? null : (json['Password'] as String),
      AffiliateCode: json['AffiliateCode'] == null
          ? null
          : (json['AffiliateCode'] as String),
      WarehouseName: json['WarehouseName'] == null
          ? null
          : (json['WarehouseName'] as String),
      ConnectorType: json['ConnectorType'] == null
          ? null
          : (json['ConnectorType'] as String),
      ConnectorSiteURL: json['ConnectorSiteURL'] == null
          ? null
          : (json['ConnectorSiteURL'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'connectorEmail': connectorEmail,
      'connectorPassword': connectorPassword,
      'Email': Email,
      'FirstName': FirstName,
      'LastName': LastName,
      'Company': Company,
      'Phone': Phone,
      'Password': Password,
      'AffiliateCode': AffiliateCode,
      'WarehouseName': WarehouseName,
      'ConnectorType': ConnectorType,
      'ConnectorSiteURL': ConnectorSiteURL,
    };
  }

  CreateMarchantAccountForECommercePostResponse copyWith({
    String? connectorEmail,
    String? connectorPassword,
    String? Email,
    String? FirstName,
    String? LastName,
    String? Company,
    String? Phone,
    String? Password,
    String? AffiliateCode,
    String? WarehouseName,
    String? ConnectorType,
    String? ConnectorSiteURL,
  }) {
    return CreateMarchantAccountForECommercePostResponse(
      connectorEmail: connectorEmail ?? this.connectorEmail,
      connectorPassword: connectorPassword ?? this.connectorPassword,
      Email: Email ?? this.Email,
      FirstName: FirstName ?? this.FirstName,
      LastName: LastName ?? this.LastName,
      Company: Company ?? this.Company,
      Phone: Phone ?? this.Phone,
      Password: Password ?? this.Password,
      AffiliateCode: AffiliateCode ?? this.AffiliateCode,
      WarehouseName: WarehouseName ?? this.WarehouseName,
      ConnectorType: ConnectorType ?? this.ConnectorType,
      ConnectorSiteURL: ConnectorSiteURL ?? this.ConnectorSiteURL,
    );
  }

  @override
  List<Object?> get props {
    return [
      connectorEmail,
      connectorPassword,
      Email,
      FirstName,
      LastName,
      Company,
      Phone,
      Password,
      AffiliateCode,
      WarehouseName,
      ConnectorType,
      ConnectorSiteURL,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
