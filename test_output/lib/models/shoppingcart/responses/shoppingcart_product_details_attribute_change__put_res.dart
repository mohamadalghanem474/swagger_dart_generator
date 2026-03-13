import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ProductDetailsAttributeChangePutResponse extends Equatable {
  const ProductDetailsAttributeChangePutResponse({
    this.product_id,
    this.gtin,
    this.mpn,
    this.sku,
    this.price,
    this.base_price_pangv,
    this.stock_availability,
    this.enabledattributemappingids,
    this.disabledattributemappingids,
    this.picture_full_size_url,
    this.picture_default_size_url,
    this.is_free_shipping,
    this.message,
  });

  final int? product_id;

  final String? gtin;

  final String? mpn;

  final String? sku;

  final String? price;

  final String? base_price_pangv;

  final String? stock_availability;

  final List<int>? enabledattributemappingids;

  final List<int>? disabledattributemappingids;

  final String? picture_full_size_url;

  final String? picture_default_size_url;

  final bool? is_free_shipping;

  final List<String>? message;

  static ProductDetailsAttributeChangePutResponse fromJson(
      Map<String, dynamic> json) {
    return ProductDetailsAttributeChangePutResponse(
      product_id:
          json['product_id'] == null ? null : (json['product_id'] as int),
      gtin: json['gtin'] == null ? null : (json['gtin'] as String),
      mpn: json['mpn'] == null ? null : (json['mpn'] as String),
      sku: json['sku'] == null ? null : (json['sku'] as String),
      price: json['price'] == null ? null : (json['price'] as String),
      base_price_pangv: json['base_price_pangv'] == null
          ? null
          : (json['base_price_pangv'] as String),
      stock_availability: json['stock_availability'] == null
          ? null
          : (json['stock_availability'] as String),
      enabledattributemappingids: json['enabledattributemappingids'] == null
          ? null
          : json['enabledattributemappingids'],
      disabledattributemappingids: json['disabledattributemappingids'] == null
          ? null
          : json['disabledattributemappingids'],
      picture_full_size_url: json['picture_full_size_url'] == null
          ? null
          : (json['picture_full_size_url'] as String),
      picture_default_size_url: json['picture_default_size_url'] == null
          ? null
          : (json['picture_default_size_url'] as String),
      is_free_shipping: json['is_free_shipping'] == null
          ? null
          : (json['is_free_shipping'] as bool),
      message: json['message'] == null ? null : json['message'],
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'product_id': product_id,
      'gtin': gtin,
      'mpn': mpn,
      'sku': sku,
      'price': price,
      'base_price_pangv': base_price_pangv,
      'stock_availability': stock_availability,
      'enabledattributemappingids': enabledattributemappingids,
      'disabledattributemappingids': disabledattributemappingids,
      'picture_full_size_url': picture_full_size_url,
      'picture_default_size_url': picture_default_size_url,
      'is_free_shipping': is_free_shipping,
      'message': message,
    };
  }

  ProductDetailsAttributeChangePutResponse copyWith({
    int? product_id,
    String? gtin,
    String? mpn,
    String? sku,
    String? price,
    String? base_price_pangv,
    String? stock_availability,
    List<int>? enabledattributemappingids,
    List<int>? disabledattributemappingids,
    String? picture_full_size_url,
    String? picture_default_size_url,
    bool? is_free_shipping,
    List<String>? message,
  }) {
    return ProductDetailsAttributeChangePutResponse(
      product_id: product_id ?? this.product_id,
      gtin: gtin ?? this.gtin,
      mpn: mpn ?? this.mpn,
      sku: sku ?? this.sku,
      price: price ?? this.price,
      base_price_pangv: base_price_pangv ?? this.base_price_pangv,
      stock_availability: stock_availability ?? this.stock_availability,
      enabledattributemappingids:
          enabledattributemappingids ?? this.enabledattributemappingids,
      disabledattributemappingids:
          disabledattributemappingids ?? this.disabledattributemappingids,
      picture_full_size_url:
          picture_full_size_url ?? this.picture_full_size_url,
      picture_default_size_url:
          picture_default_size_url ?? this.picture_default_size_url,
      is_free_shipping: is_free_shipping ?? this.is_free_shipping,
      message: message ?? this.message,
    );
  }

  @override
  List<Object?> get props {
    return [
      product_id,
      gtin,
      mpn,
      sku,
      price,
      base_price_pangv,
      stock_availability,
      enabledattributemappingids,
      disabledattributemappingids,
      picture_full_size_url,
      picture_default_size_url,
      is_free_shipping,
      message,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
