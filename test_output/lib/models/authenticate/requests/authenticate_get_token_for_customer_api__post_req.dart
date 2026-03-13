import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetTokenForCustomerApiPostRequest extends Equatable {
  const GetTokenForCustomerApiPostRequest({
    this.Email,
    this.Password,
  });

  final String? Email;

  final String? Password;

  static GetTokenForCustomerApiPostRequest fromJson(Map<String, dynamic> json) {
    return GetTokenForCustomerApiPostRequest(
      Email: json['Email'] == null ? null : (json['Email'] as String),
      Password: json['Password'] == null ? null : (json['Password'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'Email': Email,
      'Password': Password,
    };
  }

  GetTokenForCustomerApiPostRequest copyWith({
    String? Email,
    String? Password,
  }) {
    return GetTokenForCustomerApiPostRequest(
      Email: Email ?? this.Email,
      Password: Password ?? this.Password,
    );
  }

  @override
  List<Object?> get props {
    return [
      Email,
      Password,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
