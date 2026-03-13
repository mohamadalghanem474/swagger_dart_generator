import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetTokenPostRequest extends Equatable {
  const GetTokenPostRequest({
    this.is_guest,
    this.username,
    this.email,
    this.password,
  });

  final bool? is_guest;

  final String? username;

  final String? email;

  final String? password;

  static GetTokenPostRequest fromJson(Map<String, dynamic> json) {
    return GetTokenPostRequest(
      is_guest: json['is_guest'] == null ? null : (json['is_guest'] as bool),
      username: json['username'] == null ? null : (json['username'] as String),
      email: json['email'] == null ? null : (json['email'] as String),
      password: json['password'] == null ? null : (json['password'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'is_guest': is_guest,
      'username': username,
      'email': email,
      'password': password,
    };
  }

  GetTokenPostRequest copyWith({
    bool? is_guest,
    String? username,
    String? email,
    String? password,
  }) {
    return GetTokenPostRequest(
      is_guest: is_guest ?? this.is_guest,
      username: username ?? this.username,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  @override
  List<Object?> get props {
    return [
      is_guest,
      username,
      email,
      password,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
