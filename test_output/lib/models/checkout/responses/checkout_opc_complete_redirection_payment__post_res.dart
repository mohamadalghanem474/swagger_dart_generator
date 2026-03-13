import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class OpcCompleteRedirectionPaymentPostResponse extends Equatable {
  const OpcCompleteRedirectionPaymentPostResponse({
    this.order_id,
    this.custom_order_number,
    this.one_page_checkout_enabled,
    this.custom_properties,
  });

  final int? order_id;

  final String? custom_order_number;

  final bool? one_page_checkout_enabled;

  final Map<String, dynamic>? custom_properties;

  static OpcCompleteRedirectionPaymentPostResponse fromJson(
      Map<String, dynamic> json) {
    return OpcCompleteRedirectionPaymentPostResponse(
      order_id: json['order_id'] == null ? null : (json['order_id'] as int),
      custom_order_number: json['custom_order_number'] == null
          ? null
          : (json['custom_order_number'] as String),
      one_page_checkout_enabled: json['one_page_checkout_enabled'] == null
          ? null
          : (json['one_page_checkout_enabled'] as bool),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'order_id': order_id,
      'custom_order_number': custom_order_number,
      'one_page_checkout_enabled': one_page_checkout_enabled,
      'custom_properties': custom_properties,
    };
  }

  OpcCompleteRedirectionPaymentPostResponse copyWith({
    int? order_id,
    String? custom_order_number,
    bool? one_page_checkout_enabled,
    Map<String, dynamic>? custom_properties,
  }) {
    return OpcCompleteRedirectionPaymentPostResponse(
      order_id: order_id ?? this.order_id,
      custom_order_number: custom_order_number ?? this.custom_order_number,
      one_page_checkout_enabled:
          one_page_checkout_enabled ?? this.one_page_checkout_enabled,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      order_id,
      custom_order_number,
      one_page_checkout_enabled,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
