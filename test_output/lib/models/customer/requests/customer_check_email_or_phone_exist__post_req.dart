import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CheckEmailOrPhoneExistPostRequest extends Equatable {
  const CheckEmailOrPhoneExistPostRequest({
    this.email,
    this.phone,
  });

  final String? email;

  final String? phone;

  static CheckEmailOrPhoneExistPostRequest fromJson(Map<String, dynamic> json) {
    return CheckEmailOrPhoneExistPostRequest(
      email: json['email'] == null ? null : (json['email'] as String),
      phone: json['phone'] == null ? null : (json['phone'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'email': email,
      'phone': phone,
    };
  }

  CheckEmailOrPhoneExistPostRequest copyWith({
    String? email,
    String? phone,
  }) {
    return CheckEmailOrPhoneExistPostRequest(
      email: email ?? this.email,
      phone: phone ?? this.phone,
    );
  }

  @override
  List<Object?> get props {
    return [
      email,
      phone,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
