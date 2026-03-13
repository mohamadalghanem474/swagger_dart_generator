import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class MiniCartGetResponse extends Equatable {
  const MiniCartGetResponse({
    this.items,
    this.total_products,
    this.sub_total,
    this.sub_total_value,
    this.display_shopping_cart_button,
    this.display_checkout_button,
    this.current_customer_is_guest,
    this.anonymous_checkout_allowed,
    this.show_product_images,
    this.custom_properties,
  });

  final List<String>? items;

  final int? total_products;

  final String? sub_total;

  final double? sub_total_value;

  final bool? display_shopping_cart_button;

  final bool? display_checkout_button;

  final bool? current_customer_is_guest;

  final bool? anonymous_checkout_allowed;

  final bool? show_product_images;

  final Map<String, dynamic>? custom_properties;

  static MiniCartGetResponse fromJson(Map<String, dynamic> json) {
    return MiniCartGetResponse(
      items: json['items'] == null ? null : json['items'],
      total_products: json['total_products'] == null
          ? null
          : (json['total_products'] as int),
      sub_total:
          json['sub_total'] == null ? null : (json['sub_total'] as String),
      sub_total_value: json['sub_total_value'] == null
          ? null
          : (json['sub_total_value'] as double),
      display_shopping_cart_button: json['display_shopping_cart_button'] == null
          ? null
          : (json['display_shopping_cart_button'] as bool),
      display_checkout_button: json['display_checkout_button'] == null
          ? null
          : (json['display_checkout_button'] as bool),
      current_customer_is_guest: json['current_customer_is_guest'] == null
          ? null
          : (json['current_customer_is_guest'] as bool),
      anonymous_checkout_allowed: json['anonymous_checkout_allowed'] == null
          ? null
          : (json['anonymous_checkout_allowed'] as bool),
      show_product_images: json['show_product_images'] == null
          ? null
          : (json['show_product_images'] as bool),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'items': items,
      'total_products': total_products,
      'sub_total': sub_total,
      'sub_total_value': sub_total_value,
      'display_shopping_cart_button': display_shopping_cart_button,
      'display_checkout_button': display_checkout_button,
      'current_customer_is_guest': current_customer_is_guest,
      'anonymous_checkout_allowed': anonymous_checkout_allowed,
      'show_product_images': show_product_images,
      'custom_properties': custom_properties,
    };
  }

  MiniCartGetResponse copyWith({
    List<String>? items,
    int? total_products,
    String? sub_total,
    double? sub_total_value,
    bool? display_shopping_cart_button,
    bool? display_checkout_button,
    bool? current_customer_is_guest,
    bool? anonymous_checkout_allowed,
    bool? show_product_images,
    Map<String, dynamic>? custom_properties,
  }) {
    return MiniCartGetResponse(
      items: items ?? this.items,
      total_products: total_products ?? this.total_products,
      sub_total: sub_total ?? this.sub_total,
      sub_total_value: sub_total_value ?? this.sub_total_value,
      display_shopping_cart_button:
          display_shopping_cart_button ?? this.display_shopping_cart_button,
      display_checkout_button:
          display_checkout_button ?? this.display_checkout_button,
      current_customer_is_guest:
          current_customer_is_guest ?? this.current_customer_is_guest,
      anonymous_checkout_allowed:
          anonymous_checkout_allowed ?? this.anonymous_checkout_allowed,
      show_product_images: show_product_images ?? this.show_product_images,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      items,
      total_products,
      sub_total,
      sub_total_value,
      display_shopping_cart_button,
      display_checkout_button,
      current_customer_is_guest,
      anonymous_checkout_allowed,
      show_product_images,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
