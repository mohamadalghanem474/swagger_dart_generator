import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class IsOtpExpiredPostRequest extends Equatable {
  const IsOtpExpiredPostRequest({
    this.phonenumber,
    this.otp,
  });

  final String? phonenumber;

  final int? otp;

  static IsOtpExpiredPostRequest fromJson(Map<String, dynamic> json) {
    return IsOtpExpiredPostRequest(
      phonenumber:
          json['phonenumber'] == null ? null : (json['phonenumber'] as String),
      otp: json['otp'] == null ? null : (json['otp'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'phonenumber': phonenumber,
      'otp': otp,
    };
  }

  IsOtpExpiredPostRequest copyWith({
    String? phonenumber,
    int? otp,
  }) {
    return IsOtpExpiredPostRequest(
      phonenumber: phonenumber ?? this.phonenumber,
      otp: otp ?? this.otp,
    );
  }

  @override
  List<Object?> get props {
    return [
      phonenumber,
      otp,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
