import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class PasswordRecoveryConfirmPostResponse extends Equatable {
  const PasswordRecoveryConfirmPostResponse({
    this.new_password,
    this.confirm_new_password,
    this.disable_password_changing,
    this.result,
    this.return_url,
    this.custom_properties,
  });

  final String? new_password;

  final String? confirm_new_password;

  final bool? disable_password_changing;

  final String? result;

  final String? return_url;

  final Map<String, dynamic>? custom_properties;

  static PasswordRecoveryConfirmPostResponse fromJson(
      Map<String, dynamic> json) {
    return PasswordRecoveryConfirmPostResponse(
      new_password: json['new_password'] == null
          ? null
          : (json['new_password'] as String),
      confirm_new_password: json['confirm_new_password'] == null
          ? null
          : (json['confirm_new_password'] as String),
      disable_password_changing: json['disable_password_changing'] == null
          ? null
          : (json['disable_password_changing'] as bool),
      result: json['result'] == null ? null : (json['result'] as String),
      return_url:
          json['return_url'] == null ? null : (json['return_url'] as String),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'new_password': new_password,
      'confirm_new_password': confirm_new_password,
      'disable_password_changing': disable_password_changing,
      'result': result,
      'return_url': return_url,
      'custom_properties': custom_properties,
    };
  }

  PasswordRecoveryConfirmPostResponse copyWith({
    String? new_password,
    String? confirm_new_password,
    bool? disable_password_changing,
    String? result,
    String? return_url,
    Map<String, dynamic>? custom_properties,
  }) {
    return PasswordRecoveryConfirmPostResponse(
      new_password: new_password ?? this.new_password,
      confirm_new_password: confirm_new_password ?? this.confirm_new_password,
      disable_password_changing:
          disable_password_changing ?? this.disable_password_changing,
      result: result ?? this.result,
      return_url: return_url ?? this.return_url,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      new_password,
      confirm_new_password,
      disable_password_changing,
      result,
      return_url,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
