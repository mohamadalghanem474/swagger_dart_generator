import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class PaymentInfoGetResponse extends Equatable {
  const PaymentInfoGetResponse({
    this.checkout_confirm_model,
    this.checkout_payment_info_model,
  });

  final String? checkout_confirm_model;

  final String? checkout_payment_info_model;

  static PaymentInfoGetResponse fromJson(Map<String, dynamic> json) {
    return PaymentInfoGetResponse(
      checkout_confirm_model: json['checkout_confirm_model'] == null
          ? null
          : (json['checkout_confirm_model'] as String),
      checkout_payment_info_model: json['checkout_payment_info_model'] == null
          ? null
          : (json['checkout_payment_info_model'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'checkout_confirm_model': checkout_confirm_model,
      'checkout_payment_info_model': checkout_payment_info_model,
    };
  }

  PaymentInfoGetResponse copyWith({
    String? checkout_confirm_model,
    String? checkout_payment_info_model,
  }) {
    return PaymentInfoGetResponse(
      checkout_confirm_model:
          checkout_confirm_model ?? this.checkout_confirm_model,
      checkout_payment_info_model:
          checkout_payment_info_model ?? this.checkout_payment_info_model,
    );
  }

  @override
  List<Object?> get props {
    return [
      checkout_confirm_model,
      checkout_payment_info_model,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
