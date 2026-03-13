import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ContactUsGetResponse extends Equatable {
  const ContactUsGetResponse({
    this.email,
    this.subject,
    this.subject_enabled,
    this.enquiry,
    this.full_name,
    this.successfully_sent,
    this.result,
    this.display_captcha,
    this.custom_properties,
  });

  final String? email;

  final String? subject;

  final bool? subject_enabled;

  final String? enquiry;

  final String? full_name;

  final bool? successfully_sent;

  final String? result;

  final bool? display_captcha;

  final Map<String, dynamic>? custom_properties;

  static ContactUsGetResponse fromJson(Map<String, dynamic> json) {
    return ContactUsGetResponse(
      email: json['email'] == null ? null : (json['email'] as String),
      subject: json['subject'] == null ? null : (json['subject'] as String),
      subject_enabled: json['subject_enabled'] == null
          ? null
          : (json['subject_enabled'] as bool),
      enquiry: json['enquiry'] == null ? null : (json['enquiry'] as String),
      full_name:
          json['full_name'] == null ? null : (json['full_name'] as String),
      successfully_sent: json['successfully_sent'] == null
          ? null
          : (json['successfully_sent'] as bool),
      result: json['result'] == null ? null : (json['result'] as String),
      display_captcha: json['display_captcha'] == null
          ? null
          : (json['display_captcha'] as bool),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'email': email,
      'subject': subject,
      'subject_enabled': subject_enabled,
      'enquiry': enquiry,
      'full_name': full_name,
      'successfully_sent': successfully_sent,
      'result': result,
      'display_captcha': display_captcha,
      'custom_properties': custom_properties,
    };
  }

  ContactUsGetResponse copyWith({
    String? email,
    String? subject,
    bool? subject_enabled,
    String? enquiry,
    String? full_name,
    bool? successfully_sent,
    String? result,
    bool? display_captcha,
    Map<String, dynamic>? custom_properties,
  }) {
    return ContactUsGetResponse(
      email: email ?? this.email,
      subject: subject ?? this.subject,
      subject_enabled: subject_enabled ?? this.subject_enabled,
      enquiry: enquiry ?? this.enquiry,
      full_name: full_name ?? this.full_name,
      successfully_sent: successfully_sent ?? this.successfully_sent,
      result: result ?? this.result,
      display_captcha: display_captcha ?? this.display_captcha,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      email,
      subject,
      subject_enabled,
      enquiry,
      full_name,
      successfully_sent,
      result,
      display_captcha,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
