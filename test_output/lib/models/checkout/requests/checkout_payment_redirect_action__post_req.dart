import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class PaymentRedirectActionPostRequest extends Equatable {
  const PaymentRedirectActionPostRequest({this.orderguid});

  final String? orderguid;

  static PaymentRedirectActionPostRequest fromJson(Map<String, dynamic> json) {
    return PaymentRedirectActionPostRequest(
        orderguid:
            json['orderguid'] == null ? null : (json['orderguid'] as String));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'orderguid': orderguid};
  }

  PaymentRedirectActionPostRequest copyWith({String? orderguid}) {
    return PaymentRedirectActionPostRequest(
        orderguid: orderguid ?? this.orderguid);
  }

  @override
  List<Object?> get props {
    return [orderguid];
  }

  @override
  bool get stringify {
    return true;
  }
}
