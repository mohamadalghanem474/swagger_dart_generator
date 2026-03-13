import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class RetryLastRecurringPaymentPostResponse extends Equatable {
  const RetryLastRecurringPaymentPostResponse({
    this.orders,
    this.recurring_orders,
    this.recurring_payment_errors,
    this.custom_properties,
  });

  final List<String>? orders;

  final List<String>? recurring_orders;

  final List<String>? recurring_payment_errors;

  final Map<String, dynamic>? custom_properties;

  static RetryLastRecurringPaymentPostResponse fromJson(
      Map<String, dynamic> json) {
    return RetryLastRecurringPaymentPostResponse(
      orders: json['orders'] == null ? null : json['orders'],
      recurring_orders:
          json['recurring_orders'] == null ? null : json['recurring_orders'],
      recurring_payment_errors: json['recurring_payment_errors'] == null
          ? null
          : json['recurring_payment_errors'],
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'orders': orders,
      'recurring_orders': recurring_orders,
      'recurring_payment_errors': recurring_payment_errors,
      'custom_properties': custom_properties,
    };
  }

  RetryLastRecurringPaymentPostResponse copyWith({
    List<String>? orders,
    List<String>? recurring_orders,
    List<String>? recurring_payment_errors,
    Map<String, dynamic>? custom_properties,
  }) {
    return RetryLastRecurringPaymentPostResponse(
      orders: orders ?? this.orders,
      recurring_orders: recurring_orders ?? this.recurring_orders,
      recurring_payment_errors:
          recurring_payment_errors ?? this.recurring_payment_errors,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      orders,
      recurring_orders,
      recurring_payment_errors,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
