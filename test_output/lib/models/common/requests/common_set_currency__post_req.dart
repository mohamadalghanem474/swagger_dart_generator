import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SetCurrencyPostRequest extends Equatable {
  const SetCurrencyPostRequest({
    this.returnurl,
    this.customercurrencyid,
  });

  final String? returnurl;

  final int? customercurrencyid;

  static SetCurrencyPostRequest fromJson(Map<String, dynamic> json) {
    return SetCurrencyPostRequest(
      returnurl:
          json['returnurl'] == null ? null : (json['returnurl'] as String),
      customercurrencyid: json['customercurrencyid'] == null
          ? null
          : (json['customercurrencyid'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'returnurl': returnurl,
      'customercurrencyid': customercurrencyid,
    };
  }

  SetCurrencyPostRequest copyWith({
    String? returnurl,
    int? customercurrencyid,
  }) {
    return SetCurrencyPostRequest(
      returnurl: returnurl ?? this.returnurl,
      customercurrencyid: customercurrencyid ?? this.customercurrencyid,
    );
  }

  @override
  List<Object?> get props {
    return [
      returnurl,
      customercurrencyid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
