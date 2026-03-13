import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class AccountActivationPostRequest extends Equatable {
  const AccountActivationPostRequest({
    this.token,
    this.email,
    this.customerguid,
  });

  final String? token;

  final String? email;

  final String? customerguid;

  static AccountActivationPostRequest fromJson(Map<String, dynamic> json) {
    return AccountActivationPostRequest(
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

  AccountActivationPostRequest copyWith({
    String? token,
    String? email,
    String? customerguid,
  }) {
    return AccountActivationPostRequest(
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
