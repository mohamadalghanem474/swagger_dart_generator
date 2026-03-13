import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class RegisterResultPostRequest extends Equatable {
  const RegisterResultPostRequest({
    this.returnurl,
    this.resultid,
  });

  final String? returnurl;

  final int? resultid;

  static RegisterResultPostRequest fromJson(Map<String, dynamic> json) {
    return RegisterResultPostRequest(
      returnurl:
          json['returnurl'] == null ? null : (json['returnurl'] as String),
      resultid: json['resultid'] == null ? null : (json['resultid'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'returnurl': returnurl,
      'resultid': resultid,
    };
  }

  RegisterResultPostRequest copyWith({
    String? returnurl,
    int? resultid,
  }) {
    return RegisterResultPostRequest(
      returnurl: returnurl ?? this.returnurl,
      resultid: resultid ?? this.resultid,
    );
  }

  @override
  List<Object?> get props {
    return [
      returnurl,
      resultid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
