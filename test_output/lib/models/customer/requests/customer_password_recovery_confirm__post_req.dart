import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class PasswordRecoveryConfirmPostRequest extends Equatable {
  const PasswordRecoveryConfirmPostRequest({
    this.token,
    this.email,
    this.customerguid,
  });

  final String? token;

  final String? email;

  final String? customerguid;

  static PasswordRecoveryConfirmPostRequest fromJson(
      Map<String, dynamic> json) {
    return PasswordRecoveryConfirmPostRequest(
      token: json['token'] == null ? null : (json['token'] as String),
      email: json['email'] == null ? null : (json['email'] as String),
      customerguid: json['customerguid'] == null
          ? null
          : (json['customerguid'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'token': token,
      'email': email,
      'customerguid': customerguid,
    };
  }

  PasswordRecoveryConfirmPostRequest copyWith({
    String? token,
    String? email,
    String? customerguid,
  }) {
    return PasswordRecoveryConfirmPostRequest(
      token: token ?? this.token,
      email: email ?? this.email,
      customerguid: customerguid ?? this.customerguid,
    );
  }

  @override
  List<Object?> get props {
    return [
      token,
      email,
      customerguid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
