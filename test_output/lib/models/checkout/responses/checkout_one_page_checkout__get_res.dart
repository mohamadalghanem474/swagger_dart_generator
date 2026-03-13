import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class OnePageCheckoutGetResponse extends Equatable {
  const OnePageCheckoutGetResponse({
    this.shipping_required,
    this.disable_billing_address_checkout_step,
    this.billing_address,
    this.custom_properties,
  });

  final bool? shipping_required;

  final bool? disable_billing_address_checkout_step;

  final String? billing_address;

  final Map<String, dynamic>? custom_properties;

  static OnePageCheckoutGetResponse fromJson(Map<String, dynamic> json) {
    return OnePageCheckoutGetResponse(
      shipping_required: json['shipping_required'] == null
          ? null
          : (json['shipping_required'] as bool),
      disable_billing_address_checkout_step:
          json['disable_billing_address_checkout_step'] == null
              ? null
              : (json['disable_billing_address_checkout_step'] as bool),
      billing_address: json['billing_address'] == null
          ? null
          : (json['billing_address'] as String),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'shipping_required': shipping_required,
      'disable_billing_address_checkout_step':
          disable_billing_address_checkout_step,
      'billing_address': billing_address,
      'custom_properties': custom_properties,
    };
  }

  OnePageCheckoutGetResponse copyWith({
    bool? shipping_required,
    bool? disable_billing_address_checkout_step,
    String? billing_address,
    Map<String, dynamic>? custom_properties,
  }) {
    return OnePageCheckoutGetResponse(
      shipping_required: shipping_required ?? this.shipping_required,
      disable_billing_address_checkout_step:
          disable_billing_address_checkout_step ??
              this.disable_billing_address_checkout_step,
      billing_address: billing_address ?? this.billing_address,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      shipping_required,
      disable_billing_address_checkout_step,
      billing_address,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
