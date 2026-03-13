import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class UpdateWishlistPostResponse extends Equatable {
  const UpdateWishlistPostResponse({
    this.customer_guid,
    this.customer_fullname,
    this.email_wishlist_enabled,
    this.show_sku,
    this.show_product_images,
    this.is_editable,
    this.display_add_to_cart,
    this.display_tax_shipping_info,
    this.items,
    this.warnings,
    this.custom_properties,
  });

  final String? customer_guid;

  final String? customer_fullname;

  final bool? email_wishlist_enabled;

  final bool? show_sku;

  final bool? show_product_images;

  final bool? is_editable;

  final bool? display_add_to_cart;

  final bool? display_tax_shipping_info;

  final List<String>? items;

  final List<String>? warnings;

  final Map<String, dynamic>? custom_properties;

  static UpdateWishlistPostResponse fromJson(Map<String, dynamic> json) {
    return UpdateWishlistPostResponse(
      customer_guid: json['customer_guid'] == null
          ? null
          : (json['customer_guid'] as String),
      customer_fullname: json['customer_fullname'] == null
          ? null
          : (json['customer_fullname'] as String),
      email_wishlist_enabled: json['email_wishlist_enabled'] == null
          ? null
          : (json['email_wishlist_enabled'] as bool),
      show_sku: json['show_sku'] == null ? null : (json['show_sku'] as bool),
      show_product_images: json['show_product_images'] == null
          ? null
          : (json['show_product_images'] as bool),
      is_editable:
          json['is_editable'] == null ? null : (json['is_editable'] as bool),
      display_add_to_cart: json['display_add_to_cart'] == null
          ? null
          : (json['display_add_to_cart'] as bool),
      display_tax_shipping_info: json['display_tax_shipping_info'] == null
          ? null
          : (json['display_tax_shipping_info'] as bool),
      items: json['items'] == null ? null : json['items'],
      warnings: json['warnings'] == null ? null : json['warnings'],
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'customer_guid': customer_guid,
      'customer_fullname': customer_fullname,
      'email_wishlist_enabled': email_wishlist_enabled,
      'show_sku': show_sku,
      'show_product_images': show_product_images,
      'is_editable': is_editable,
      'display_add_to_cart': display_add_to_cart,
      'display_tax_shipping_info': display_tax_shipping_info,
      'items': items,
      'warnings': warnings,
      'custom_properties': custom_properties,
    };
  }

  UpdateWishlistPostResponse copyWith({
    String? customer_guid,
    String? customer_fullname,
    bool? email_wishlist_enabled,
    bool? show_sku,
    bool? show_product_images,
    bool? is_editable,
    bool? display_add_to_cart,
    bool? display_tax_shipping_info,
    List<String>? items,
    List<String>? warnings,
    Map<String, dynamic>? custom_properties,
  }) {
    return UpdateWishlistPostResponse(
      customer_guid: customer_guid ?? this.customer_guid,
      customer_fullname: customer_fullname ?? this.customer_fullname,
      email_wishlist_enabled:
          email_wishlist_enabled ?? this.email_wishlist_enabled,
      show_sku: show_sku ?? this.show_sku,
      show_product_images: show_product_images ?? this.show_product_images,
      is_editable: is_editable ?? this.is_editable,
      display_add_to_cart: display_add_to_cart ?? this.display_add_to_cart,
      display_tax_shipping_info:
          display_tax_shipping_info ?? this.display_tax_shipping_info,
      items: items ?? this.items,
      warnings: warnings ?? this.warnings,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      customer_guid,
      customer_fullname,
      email_wishlist_enabled,
      show_sku,
      show_product_images,
      is_editable,
      display_add_to_cart,
      display_tax_shipping_info,
      items,
      warnings,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
