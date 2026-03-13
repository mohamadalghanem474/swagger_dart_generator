import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CreateBusinessShipmentCarrierPostResponse extends Equatable {
  const CreateBusinessShipmentCarrierPostResponse({
    this.shipment_id,
    this.system_shipment_provider,
    this.method_name,
    this.shipping_method_id,
    this.method_description,
    this.price,
    this.formatted_price,
    this.is_cod_paid_by_coupon,
    this.coupon_quantity,
    this.id,
  });

  final int? shipment_id;

  final String? system_shipment_provider;

  final String? method_name;

  final String? shipping_method_id;

  final String? method_description;

  final double? price;

  final String? formatted_price;

  final bool? is_cod_paid_by_coupon;

  final int? coupon_quantity;

  final int? id;

  static CreateBusinessShipmentCarrierPostResponse fromJson(
      Map<String, dynamic> json) {
    return CreateBusinessShipmentCarrierPostResponse(
      shipment_id:
          json['shipment_id'] == null ? null : (json['shipment_id'] as int),
      system_shipment_provider: json['system_shipment_provider'] == null
          ? null
          : (json['system_shipment_provider'] as String),
      method_name:
          json['method_name'] == null ? null : (json['method_name'] as String),
      shipping_method_id: json['shipping_method_id'] == null
          ? null
          : (json['shipping_method_id'] as String),
      method_description: json['method_description'] == null
          ? null
          : (json['method_description'] as String),
      price: json['price'] == null ? null : (json['price'] as double),
      formatted_price: json['formatted_price'] == null
          ? null
          : (json['formatted_price'] as String),
      is_cod_paid_by_coupon: json['is_cod_paid_by_coupon'] == null
          ? null
          : (json['is_cod_paid_by_coupon'] as bool),
      coupon_quantity: json['coupon_quantity'] == null
          ? null
          : (json['coupon_quantity'] as int),
      id: json['id'] == null ? null : (json['id'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'shipment_id': shipment_id,
      'system_shipment_provider': system_shipment_provider,
      'method_name': method_name,
      'shipping_method_id': shipping_method_id,
      'method_description': method_description,
      'price': price,
      'formatted_price': formatted_price,
      'is_cod_paid_by_coupon': is_cod_paid_by_coupon,
      'coupon_quantity': coupon_quantity,
      'id': id,
    };
  }

  CreateBusinessShipmentCarrierPostResponse copyWith({
    int? shipment_id,
    String? system_shipment_provider,
    String? method_name,
    String? shipping_method_id,
    String? method_description,
    double? price,
    String? formatted_price,
    bool? is_cod_paid_by_coupon,
    int? coupon_quantity,
    int? id,
  }) {
    return CreateBusinessShipmentCarrierPostResponse(
      shipment_id: shipment_id ?? this.shipment_id,
      system_shipment_provider:
          system_shipment_provider ?? this.system_shipment_provider,
      method_name: method_name ?? this.method_name,
      shipping_method_id: shipping_method_id ?? this.shipping_method_id,
      method_description: method_description ?? this.method_description,
      price: price ?? this.price,
      formatted_price: formatted_price ?? this.formatted_price,
      is_cod_paid_by_coupon:
          is_cod_paid_by_coupon ?? this.is_cod_paid_by_coupon,
      coupon_quantity: coupon_quantity ?? this.coupon_quantity,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props {
    return [
      shipment_id,
      system_shipment_provider,
      method_name,
      shipping_method_id,
      method_description,
      price,
      formatted_price,
      is_cod_paid_by_coupon,
      coupon_quantity,
      id,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
