import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class PasswordRecoveryGetResponse extends Equatable {
  const PasswordRecoveryGetResponse({
    this.email,
    this.result,
    this.display_captcha,
    this.custom_properties,
  });

  final String? email;

  final String? result;

  final bool? display_captcha;

  final Map<String, dynamic>? custom_properties;

  static PasswordRecoveryGetResponse fromJson(Map<String, dynamic> json) {
    return PasswordRecoveryGetResponse(
      email: json['email'] == null ? null : (json['email'] as String),
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
      'result': result,
      'display_captcha': display_captcha,
      'custom_properties': custom_properties,
    };
  }

  PasswordRecoveryGetResponse copyWith({
    String? email,
    String? result,
    bool? display_captcha,
    Map<String, dynamic>? custom_properties,
  }) {
    return PasswordRecoveryGetResponse(
      email: email ?? this.email,
      result: result ?? this.result,
      display_captcha: display_captcha ?? this.display_captcha,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      email,
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
