import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ApplyDiscountCouponPostResponse extends Equatable {
  const ApplyDiscountCouponPostResponse({
    this.one_page_checkout_enabled,
    this.show_sku,
    this.show_product_images,
    this.is_editable,
    this.items,
    this.checkout_attributes,
    this.warnings,
    this.min_order_subtotal_warning,
    this.display_tax_shipping_info,
    this.terms_of_service_on_shopping_cart_page,
    this.terms_of_service_on_order_confirm_page,
    this.terms_of_service_popup,
    this.discount_box,
    this.gift_card_box,
    this.order_review_data,
    this.button_payment_method_view_component_names,
    this.hide_checkout_button,
    this.show_vendor_name,
    this.custom_properties,
  });

  final bool? one_page_checkout_enabled;

  final bool? show_sku;

  final bool? show_product_images;

  final bool? is_editable;

  final List<String>? items;

  final List<String>? checkout_attributes;

  final List<String>? warnings;

  final String? min_order_subtotal_warning;

  final bool? display_tax_shipping_info;

  final bool? terms_of_service_on_shopping_cart_page;

  final bool? terms_of_service_on_order_confirm_page;

  final bool? terms_of_service_popup;

  final String? discount_box;

  final String? gift_card_box;

  final String? order_review_data;

  final List<String>? button_payment_method_view_component_names;

  final bool? hide_checkout_button;

  final bool? show_vendor_name;

  final Map<String, dynamic>? custom_properties;

  static ApplyDiscountCouponPostResponse fromJson(Map<String, dynamic> json) {
    return ApplyDiscountCouponPostResponse(
      one_page_checkout_enabled: json['one_page_checkout_enabled'] == null
          ? null
          : (json['one_page_checkout_enabled'] as bool),
      show_sku: json['show_sku'] == null ? null : (json['show_sku'] as bool),
      show_product_images: json['show_product_images'] == null
          ? null
          : (json['show_product_images'] as bool),
      is_editable:
          json['is_editable'] == null ? null : (json['is_editable'] as bool),
      items: json['items'] == null ? null : json['items'],
      checkout_attributes: json['checkout_attributes'] == null
          ? null
          : json['checkout_attributes'],
      warnings: json['warnings'] == null ? null : json['warnings'],
      min_order_subtotal_warning: json['min_order_subtotal_warning'] == null
          ? null
          : (json['min_order_subtotal_warning'] as String),
      display_tax_shipping_info: json['display_tax_shipping_info'] == null
          ? null
          : (json['display_tax_shipping_info'] as bool),
      terms_of_service_on_shopping_cart_page:
          json['terms_of_service_on_shopping_cart_page'] == null
              ? null
              : (json['terms_of_service_on_shopping_cart_page'] as bool),
      terms_of_service_on_order_confirm_page:
          json['terms_of_service_on_order_confirm_page'] == null
              ? null
              : (json['terms_of_service_on_order_confirm_page'] as bool),
      terms_of_service_popup: json['terms_of_service_popup'] == null
          ? null
          : (json['terms_of_service_popup'] as bool),
      discount_box: json['discount_box'] == null
          ? null
          : (json['discount_box'] as String),
      gift_card_box: json['gift_card_box'] == null
          ? null
          : (json['gift_card_box'] as String),
      order_review_data: json['order_review_data'] == null
          ? null
          : (json['order_review_data'] as String),
      button_payment_method_view_component_names:
          json['button_payment_method_view_component_names'] == null
              ? null
              : json['button_payment_method_view_component_names'],
      hide_checkout_button: json['hide_checkout_button'] == null
          ? null
          : (json['hide_checkout_button'] as bool),
      show_vendor_name: json['show_vendor_name'] == null
          ? null
          : (json['show_vendor_name'] as bool),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'one_page_checkout_enabled': one_page_checkout_enabled,
      'show_sku': show_sku,
      'show_product_images': show_product_images,
      'is_editable': is_editable,
      'items': items,
      'checkout_attributes': checkout_attributes,
      'warnings': warnings,
      'min_order_subtotal_warning': min_order_subtotal_warning,
      'display_tax_shipping_info': display_tax_shipping_info,
      'terms_of_service_on_shopping_cart_page':
          terms_of_service_on_shopping_cart_page,
      'terms_of_service_on_order_confirm_page':
          terms_of_service_on_order_confirm_page,
      'terms_of_service_popup': terms_of_service_popup,
      'discount_box': discount_box,
      'gift_card_box': gift_card_box,
      'order_review_data': order_review_data,
      'button_payment_method_view_component_names':
          button_payment_method_view_component_names,
      'hide_checkout_button': hide_checkout_button,
      'show_vendor_name': show_vendor_name,
      'custom_properties': custom_properties,
    };
  }

  ApplyDiscountCouponPostResponse copyWith({
    bool? one_page_checkout_enabled,
    bool? show_sku,
    bool? show_product_images,
    bool? is_editable,
    List<String>? items,
    List<String>? checkout_attributes,
    List<String>? warnings,
    String? min_order_subtotal_warning,
    bool? display_tax_shipping_info,
    bool? terms_of_service_on_shopping_cart_page,
    bool? terms_of_service_on_order_confirm_page,
    bool? terms_of_service_popup,
    String? discount_box,
    String? gift_card_box,
    String? order_review_data,
    List<String>? button_payment_method_view_component_names,
    bool? hide_checkout_button,
    bool? show_vendor_name,
    Map<String, dynamic>? custom_properties,
  }) {
    return ApplyDiscountCouponPostResponse(
      one_page_checkout_enabled:
          one_page_checkout_enabled ?? this.one_page_checkout_enabled,
      show_sku: show_sku ?? this.show_sku,
      show_product_images: show_product_images ?? this.show_product_images,
      is_editable: is_editable ?? this.is_editable,
      items: items ?? this.items,
      checkout_attributes: checkout_attributes ?? this.checkout_attributes,
      warnings: warnings ?? this.warnings,
      min_order_subtotal_warning:
          min_order_subtotal_warning ?? this.min_order_subtotal_warning,
      display_tax_shipping_info:
          display_tax_shipping_info ?? this.display_tax_shipping_info,
      terms_of_service_on_shopping_cart_page:
          terms_of_service_on_shopping_cart_page ??
              this.terms_of_service_on_shopping_cart_page,
      terms_of_service_on_order_confirm_page:
          terms_of_service_on_order_confirm_page ??
              this.terms_of_service_on_order_confirm_page,
      terms_of_service_popup:
          terms_of_service_popup ?? this.terms_of_service_popup,
      discount_box: discount_box ?? this.discount_box,
      gift_card_box: gift_card_box ?? this.gift_card_box,
      order_review_data: order_review_data ?? this.order_review_data,
      button_payment_method_view_component_names:
          button_payment_method_view_component_names ??
              this.button_payment_method_view_component_names,
      hide_checkout_button: hide_checkout_button ?? this.hide_checkout_button,
      show_vendor_name: show_vendor_name ?? this.show_vendor_name,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      one_page_checkout_enabled,
      show_sku,
      show_product_images,
      is_editable,
      items,
      checkout_attributes,
      warnings,
      min_order_subtotal_warning,
      display_tax_shipping_info,
      terms_of_service_on_shopping_cart_page,
      terms_of_service_on_order_confirm_page,
      terms_of_service_popup,
      discount_box,
      gift_card_box,
      order_review_data,
      button_payment_method_view_component_names,
      hide_checkout_button,
      show_vendor_name,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
