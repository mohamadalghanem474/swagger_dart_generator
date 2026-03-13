import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ApplyVendorGetResponse extends Equatable {
  const ApplyVendorGetResponse({
    this.name,
    this.email,
    this.description,
    this.vendor_attributes,
    this.display_captcha,
    this.terms_of_service_enabled,
    this.terms_of_service_popup,
    this.disable_form_input,
    this.result,
    this.custom_properties,
  });

  final String? name;

  final String? email;

  final String? description;

  final List<String>? vendor_attributes;

  final bool? display_captcha;

  final bool? terms_of_service_enabled;

  final bool? terms_of_service_popup;

  final bool? disable_form_input;

  final String? result;

  final Map<String, dynamic>? custom_properties;

  static ApplyVendorGetResponse fromJson(Map<String, dynamic> json) {
    return ApplyVendorGetResponse(
      name: json['name'] == null ? null : (json['name'] as String),
      email: json['email'] == null ? null : (json['email'] as String),
      description:
          json['description'] == null ? null : (json['description'] as String),
      vendor_attributes:
          json['vendor_attributes'] == null ? null : json['vendor_attributes'],
      display_captcha: json['display_captcha'] == null
          ? null
          : (json['display_captcha'] as bool),
      terms_of_service_enabled: json['terms_of_service_enabled'] == null
          ? null
          : (json['terms_of_service_enabled'] as bool),
      terms_of_service_popup: json['terms_of_service_popup'] == null
          ? null
          : (json['terms_of_service_popup'] as bool),
      disable_form_input: json['disable_form_input'] == null
          ? null
          : (json['disable_form_input'] as bool),
      result: json['result'] == null ? null : (json['result'] as String),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'email': email,
      'description': description,
      'vendor_attributes': vendor_attributes,
      'display_captcha': display_captcha,
      'terms_of_service_enabled': terms_of_service_enabled,
      'terms_of_service_popup': terms_of_service_popup,
      'disable_form_input': disable_form_input,
      'result': result,
      'custom_properties': custom_properties,
    };
  }

  ApplyVendorGetResponse copyWith({
    String? name,
    String? email,
    String? description,
    List<String>? vendor_attributes,
    bool? display_captcha,
    bool? terms_of_service_enabled,
    bool? terms_of_service_popup,
    bool? disable_form_input,
    String? result,
    Map<String, dynamic>? custom_properties,
  }) {
    return ApplyVendorGetResponse(
      name: name ?? this.name,
      email: email ?? this.email,
      description: description ?? this.description,
      vendor_attributes: vendor_attributes ?? this.vendor_attributes,
      display_captcha: display_captcha ?? this.display_captcha,
      terms_of_service_enabled:
          terms_of_service_enabled ?? this.terms_of_service_enabled,
      terms_of_service_popup:
          terms_of_service_popup ?? this.terms_of_service_popup,
      disable_form_input: disable_form_input ?? this.disable_form_input,
      result: result ?? this.result,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      name,
      email,
      description,
      vendor_attributes,
      display_captcha,
      terms_of_service_enabled,
      terms_of_service_popup,
      disable_form_input,
      result,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
