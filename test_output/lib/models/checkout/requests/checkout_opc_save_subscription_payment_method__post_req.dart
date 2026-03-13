import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class OpcSaveSubscriptionPaymentMethodPostRequest extends Equatable {
  const OpcSaveSubscriptionPaymentMethodPostRequest({this.paymentmethod});

  final String? paymentmethod;

  static OpcSaveSubscriptionPaymentMethodPostRequest fromJson(
      Map<String, dynamic> json) {
    return OpcSaveSubscriptionPaymentMethodPostRequest(
        paymentmethod: json['paymentmethod'] == null
            ? null
            : (json['paymentmethod'] as String));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'paymentmethod': paymentmethod};
  }

  OpcSaveSubscriptionPaymentMethodPostRequest copyWith(
      {String? paymentmethod}) {
    return OpcSaveSubscriptionPaymentMethodPostRequest(
        paymentmethod: paymentmethod ?? this.paymentmethod);
  }

  @override
  List<Object?> get props {
    return [paymentmethod];
  }

  @override
  bool get stringify {
    return true;
  }
}
