import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SendOtpPostRequest extends Equatable {
  const SendOtpPostRequest({
    this.phonenumber,
    this.towhatsapp,
  });

  final String? phonenumber;

  final bool? towhatsapp;

  static SendOtpPostRequest fromJson(Map<String, dynamic> json) {
    return SendOtpPostRequest(
      phonenumber:
          json['phonenumber'] == null ? null : (json['phonenumber'] as String),
      towhatsapp:
          json['towhatsapp'] == null ? null : (json['towhatsapp'] as bool),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'phonenumber': phonenumber,
      'towhatsapp': towhatsapp,
    };
  }

  SendOtpPostRequest copyWith({
    String? phonenumber,
    bool? towhatsapp,
  }) {
    return SendOtpPostRequest(
      phonenumber: phonenumber ?? this.phonenumber,
      towhatsapp: towhatsapp ?? this.towhatsapp,
    );
  }

  @override
  List<Object?> get props {
    return [
      phonenumber,
      towhatsapp,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
