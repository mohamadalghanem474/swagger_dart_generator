import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetTokenExternalPostRequest extends Equatable {
  const GetTokenExternalPostRequest({
    this.Email,
    this.Phone,
  });

  final String? Email;

  final String? Phone;

  static GetTokenExternalPostRequest fromJson(Map<String, dynamic> json) {
    return GetTokenExternalPostRequest(
      Email: json['Email'] == null ? null : (json['Email'] as String),
      Phone: json['Phone'] == null ? null : (json['Phone'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'Email': Email,
      'Phone': Phone,
    };
  }

  GetTokenExternalPostRequest copyWith({
    String? Email,
    String? Phone,
  }) {
    return GetTokenExternalPostRequest(
      Email: Email ?? this.Email,
      Phone: Phone ?? this.Phone,
    );
  }

  @override
  List<Object?> get props {
    return [
      Email,
      Phone,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
