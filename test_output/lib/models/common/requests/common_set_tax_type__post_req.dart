import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SetTaxTypePostRequest extends Equatable {
  const SetTaxTypePostRequest({
    this.customertaxtype,
    this.returnurl,
  });

  final String? customertaxtype;

  final String? returnurl;

  static SetTaxTypePostRequest fromJson(Map<String, dynamic> json) {
    return SetTaxTypePostRequest(
      customertaxtype: json['customertaxtype'] == null
          ? null
          : (json['customertaxtype'] as String),
      returnurl:
          json['returnurl'] == null ? null : (json['returnurl'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'customertaxtype': customertaxtype,
      'returnurl': returnurl,
    };
  }

  SetTaxTypePostRequest copyWith({
    String? customertaxtype,
    String? returnurl,
  }) {
    return SetTaxTypePostRequest(
      customertaxtype: customertaxtype ?? this.customertaxtype,
      returnurl: returnurl ?? this.returnurl,
    );
  }

  @override
  List<Object?> get props {
    return [
      customertaxtype,
      returnurl,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
