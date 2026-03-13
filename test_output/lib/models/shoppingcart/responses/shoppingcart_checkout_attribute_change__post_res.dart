import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CheckoutAttributeChangePostResponse extends Equatable {
  const CheckoutAttributeChangePostResponse({
    this.order_totals_model,
    this.formatted_attributes,
    this.enabled_attribute_ids,
    this.disabled_attribute_ids,
  });

  final String? order_totals_model;

  final String? formatted_attributes;

  final List<int>? enabled_attribute_ids;

  final List<int>? disabled_attribute_ids;

  static CheckoutAttributeChangePostResponse fromJson(
      Map<String, dynamic> json) {
    return CheckoutAttributeChangePostResponse(
      order_totals_model: json['order_totals_model'] == null
          ? null
          : (json['order_totals_model'] as String),
      formatted_attributes: json['formatted_attributes'] == null
          ? null
          : (json['formatted_attributes'] as String),
      enabled_attribute_ids: json['enabled_attribute_ids'] == null
          ? null
          : json['enabled_attribute_ids'],
      disabled_attribute_ids: json['disabled_attribute_ids'] == null
          ? null
          : json['disabled_attribute_ids'],
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'order_totals_model': order_totals_model,
      'formatted_attributes': formatted_attributes,
      'enabled_attribute_ids': enabled_attribute_ids,
      'disabled_attribute_ids': disabled_attribute_ids,
    };
  }

  CheckoutAttributeChangePostResponse copyWith({
    String? order_totals_model,
    String? formatted_attributes,
    List<int>? enabled_attribute_ids,
    List<int>? disabled_attribute_ids,
  }) {
    return CheckoutAttributeChangePostResponse(
      order_totals_model: order_totals_model ?? this.order_totals_model,
      formatted_attributes: formatted_attributes ?? this.formatted_attributes,
      enabled_attribute_ids:
          enabled_attribute_ids ?? this.enabled_attribute_ids,
      disabled_attribute_ids:
          disabled_attribute_ids ?? this.disabled_attribute_ids,
    );
  }

  @override
  List<Object?> get props {
    return [
      order_totals_model,
      formatted_attributes,
      enabled_attribute_ids,
      disabled_attribute_ids,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
