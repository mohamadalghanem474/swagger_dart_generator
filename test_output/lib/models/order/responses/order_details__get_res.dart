import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class DetailsGetResponse extends Equatable {
  const DetailsGetResponse({
    this.print_mode,
    this.delivery_charge,
    this.cod_charge,
    this.pdf_invoice_disabled,
    this.custom_order_number,
    this.created_on,
    this.order_status,
    this.order_status_id,
    this.order_type,
    this.is_re_order_allowed,
    this.is_return_request_allowed,
    this.is_shippable,
    this.pickup_in_store,
    this.pickup_address,
    this.shipping_status,
    this.shipping_address,
    this.shipping_method,
    this.shipment,
    this.billing_address,
    this.vat_number,
    this.payment_method,
    this.payment_method_status,
    this.can_re_post_process_payment,
    this.custom_values,
    this.order_total_cost,
    this.order_subtotal,
    this.order_subtotal_value,
    this.order_sub_total_discount,
    this.order_sub_total_discount_value,
    this.order_shipping,
    this.order_shipping_value,
    this.payment_method_additional_fee,
    this.payment_method_additional_fee_value,
    this.checkout_attribute_info,
    this.prices_include_tax,
    this.display_tax_shipping_info,
    this.tax,
    this.tax_rates,
    this.display_tax,
    this.display_tax_rates,
    this.order_total_discount,
    this.order_total_discount_value,
    this.redeemed_reward_points,
    this.redeemed_reward_points_amount,
    this.order_total,
    this.order_total_value,
    this.gift_cards,
    this.show_sku,
    this.items,
    this.order_notes,
    this.show_vendor_name,
    this.id,
    this.custom_properties,
  });

  final bool? print_mode;

  final double? delivery_charge;

  final double? cod_charge;

  final bool? pdf_invoice_disabled;

  final String? custom_order_number;

  final String? created_on;

  final String? order_status;

  final int? order_status_id;

  final String? order_type;

  final bool? is_re_order_allowed;

  final bool? is_return_request_allowed;

  final bool? is_shippable;

  final bool? pickup_in_store;

  final String? pickup_address;

  final String? shipping_status;

  final String? shipping_address;

  final String? shipping_method;

  final String? shipment;

  final String? billing_address;

  final String? vat_number;

  final String? payment_method;

  final String? payment_method_status;

  final bool? can_re_post_process_payment;

  final Map<String, dynamic>? custom_values;

  final double? order_total_cost;

  final String? order_subtotal;

  final double? order_subtotal_value;

  final String? order_sub_total_discount;

  final double? order_sub_total_discount_value;

  final String? order_shipping;

  final double? order_shipping_value;

  final String? payment_method_additional_fee;

  final double? payment_method_additional_fee_value;

  final String? checkout_attribute_info;

  final bool? prices_include_tax;

  final bool? display_tax_shipping_info;

  final String? tax;

  final List<String>? tax_rates;

  final bool? display_tax;

  final bool? display_tax_rates;

  final String? order_total_discount;

  final double? order_total_discount_value;

  final int? redeemed_reward_points;

  final String? redeemed_reward_points_amount;

  final String? order_total;

  final double? order_total_value;

  final List<String>? gift_cards;

  final bool? show_sku;

  final List<String>? items;

  final List<String>? order_notes;

  final bool? show_vendor_name;

  final int? id;

  final Map<String, dynamic>? custom_properties;

  static DetailsGetResponse fromJson(Map<String, dynamic> json) {
    return DetailsGetResponse(
      print_mode:
          json['print_mode'] == null ? null : (json['print_mode'] as bool),
      delivery_charge: json['delivery_charge'] == null
          ? null
          : (json['delivery_charge'] as double),
      cod_charge:
          json['cod_charge'] == null ? null : (json['cod_charge'] as double),
      pdf_invoice_disabled: json['pdf_invoice_disabled'] == null
          ? null
          : (json['pdf_invoice_disabled'] as bool),
      custom_order_number: json['custom_order_number'] == null
          ? null
          : (json['custom_order_number'] as String),
      created_on:
          json['created_on'] == null ? null : (json['created_on'] as String),
      order_status: json['order_status'] == null
          ? null
          : (json['order_status'] as String),
      order_status_id: json['order_status_id'] == null
          ? null
          : (json['order_status_id'] as int),
      order_type:
          json['order_type'] == null ? null : (json['order_type'] as String),
      is_re_order_allowed: json['is_re_order_allowed'] == null
          ? null
          : (json['is_re_order_allowed'] as bool),
      is_return_request_allowed: json['is_return_request_allowed'] == null
          ? null
          : (json['is_return_request_allowed'] as bool),
      is_shippable:
          json['is_shippable'] == null ? null : (json['is_shippable'] as bool),
      pickup_in_store: json['pickup_in_store'] == null
          ? null
          : (json['pickup_in_store'] as bool),
      pickup_address: json['pickup_address'] == null
          ? null
          : (json['pickup_address'] as String),
      shipping_status: json['shipping_status'] == null
          ? null
          : (json['shipping_status'] as String),
      shipping_address: json['shipping_address'] == null
          ? null
          : (json['shipping_address'] as String),
      shipping_method: json['shipping_method'] == null
          ? null
          : (json['shipping_method'] as String),
      shipment: json['shipment'] == null ? null : (json['shipment'] as String),
      billing_address: json['billing_address'] == null
          ? null
          : (json['billing_address'] as String),
      vat_number:
          json['vat_number'] == null ? null : (json['vat_number'] as String),
      payment_method: json['payment_method'] == null
          ? null
          : (json['payment_method'] as String),
      payment_method_status: json['payment_method_status'] == null
          ? null
          : (json['payment_method_status'] as String),
      can_re_post_process_payment: json['can_re_post_process_payment'] == null
          ? null
          : (json['can_re_post_process_payment'] as bool),
      custom_values: json['custom_values'] == null
          ? null
          : (json['custom_values'] as Map<String, dynamic>),
      order_total_cost: json['order_total_cost'] == null
          ? null
          : (json['order_total_cost'] as double),
      order_subtotal: json['order_subtotal'] == null
          ? null
          : (json['order_subtotal'] as String),
      order_subtotal_value: json['order_subtotal_value'] == null
          ? null
          : (json['order_subtotal_value'] as double),
      order_sub_total_discount: json['order_sub_total_discount'] == null
          ? null
          : (json['order_sub_total_discount'] as String),
      order_sub_total_discount_value:
          json['order_sub_total_discount_value'] == null
              ? null
              : (json['order_sub_total_discount_value'] as double),
      order_shipping: json['order_shipping'] == null
          ? null
          : (json['order_shipping'] as String),
      order_shipping_value: json['order_shipping_value'] == null
          ? null
          : (json['order_shipping_value'] as double),
      payment_method_additional_fee:
          json['payment_method_additional_fee'] == null
              ? null
              : (json['payment_method_additional_fee'] as String),
      payment_method_additional_fee_value:
          json['payment_method_additional_fee_value'] == null
              ? null
              : (json['payment_method_additional_fee_value'] as double),
      checkout_attribute_info: json['checkout_attribute_info'] == null
          ? null
          : (json['checkout_attribute_info'] as String),
      prices_include_tax: json['prices_include_tax'] == null
          ? null
          : (json['prices_include_tax'] as bool),
      display_tax_shipping_info: json['display_tax_shipping_info'] == null
          ? null
          : (json['display_tax_shipping_info'] as bool),
      tax: json['tax'] == null ? null : (json['tax'] as String),
      tax_rates: json['tax_rates'] == null ? null : json['tax_rates'],
      display_tax:
          json['display_tax'] == null ? null : (json['display_tax'] as bool),
      display_tax_rates: json['display_tax_rates'] == null
          ? null
          : (json['display_tax_rates'] as bool),
      order_total_discount: json['order_total_discount'] == null
          ? null
          : (json['order_total_discount'] as String),
      order_total_discount_value: json['order_total_discount_value'] == null
          ? null
          : (json['order_total_discount_value'] as double),
      redeemed_reward_points: json['redeemed_reward_points'] == null
          ? null
          : (json['redeemed_reward_points'] as int),
      redeemed_reward_points_amount:
          json['redeemed_reward_points_amount'] == null
              ? null
              : (json['redeemed_reward_points_amount'] as String),
      order_total:
          json['order_total'] == null ? null : (json['order_total'] as String),
      order_total_value: json['order_total_value'] == null
          ? null
          : (json['order_total_value'] as double),
      gift_cards: json['gift_cards'] == null ? null : json['gift_cards'],
      show_sku: json['show_sku'] == null ? null : (json['show_sku'] as bool),
      items: json['items'] == null ? null : json['items'],
      order_notes: json['order_notes'] == null ? null : json['order_notes'],
      show_vendor_name: json['show_vendor_name'] == null
          ? null
          : (json['show_vendor_name'] as bool),
      id: json['id'] == null ? null : (json['id'] as int),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'print_mode': print_mode,
      'delivery_charge': delivery_charge,
      'cod_charge': cod_charge,
      'pdf_invoice_disabled': pdf_invoice_disabled,
      'custom_order_number': custom_order_number,
      'created_on': created_on,
      'order_status': order_status,
      'order_status_id': order_status_id,
      'order_type': order_type,
      'is_re_order_allowed': is_re_order_allowed,
      'is_return_request_allowed': is_return_request_allowed,
      'is_shippable': is_shippable,
      'pickup_in_store': pickup_in_store,
      'pickup_address': pickup_address,
      'shipping_status': shipping_status,
      'shipping_address': shipping_address,
      'shipping_method': shipping_method,
      'shipment': shipment,
      'billing_address': billing_address,
      'vat_number': vat_number,
      'payment_method': payment_method,
      'payment_method_status': payment_method_status,
      'can_re_post_process_payment': can_re_post_process_payment,
      'custom_values': custom_values,
      'order_total_cost': order_total_cost,
      'order_subtotal': order_subtotal,
      'order_subtotal_value': order_subtotal_value,
      'order_sub_total_discount': order_sub_total_discount,
      'order_sub_total_discount_value': order_sub_total_discount_value,
      'order_shipping': order_shipping,
      'order_shipping_value': order_shipping_value,
      'payment_method_additional_fee': payment_method_additional_fee,
      'payment_method_additional_fee_value':
          payment_method_additional_fee_value,
      'checkout_attribute_info': checkout_attribute_info,
      'prices_include_tax': prices_include_tax,
      'display_tax_shipping_info': display_tax_shipping_info,
      'tax': tax,
      'tax_rates': tax_rates,
      'display_tax': display_tax,
      'display_tax_rates': display_tax_rates,
      'order_total_discount': order_total_discount,
      'order_total_discount_value': order_total_discount_value,
      'redeemed_reward_points': redeemed_reward_points,
      'redeemed_reward_points_amount': redeemed_reward_points_amount,
      'order_total': order_total,
      'order_total_value': order_total_value,
      'gift_cards': gift_cards,
      'show_sku': show_sku,
      'items': items,
      'order_notes': order_notes,
      'show_vendor_name': show_vendor_name,
      'id': id,
      'custom_properties': custom_properties,
    };
  }

  DetailsGetResponse copyWith({
    bool? print_mode,
    double? delivery_charge,
    double? cod_charge,
    bool? pdf_invoice_disabled,
    String? custom_order_number,
    String? created_on,
    String? order_status,
    int? order_status_id,
    String? order_type,
    bool? is_re_order_allowed,
    bool? is_return_request_allowed,
    bool? is_shippable,
    bool? pickup_in_store,
    String? pickup_address,
    String? shipping_status,
    String? shipping_address,
    String? shipping_method,
    String? shipment,
    String? billing_address,
    String? vat_number,
    String? payment_method,
    String? payment_method_status,
    bool? can_re_post_process_payment,
    Map<String, dynamic>? custom_values,
    double? order_total_cost,
    String? order_subtotal,
    double? order_subtotal_value,
    String? order_sub_total_discount,
    double? order_sub_total_discount_value,
    String? order_shipping,
    double? order_shipping_value,
    String? payment_method_additional_fee,
    double? payment_method_additional_fee_value,
    String? checkout_attribute_info,
    bool? prices_include_tax,
    bool? display_tax_shipping_info,
    String? tax,
    List<String>? tax_rates,
    bool? display_tax,
    bool? display_tax_rates,
    String? order_total_discount,
    double? order_total_discount_value,
    int? redeemed_reward_points,
    String? redeemed_reward_points_amount,
    String? order_total,
    double? order_total_value,
    List<String>? gift_cards,
    bool? show_sku,
    List<String>? items,
    List<String>? order_notes,
    bool? show_vendor_name,
    int? id,
    Map<String, dynamic>? custom_properties,
  }) {
    return DetailsGetResponse(
      print_mode: print_mode ?? this.print_mode,
      delivery_charge: delivery_charge ?? this.delivery_charge,
      cod_charge: cod_charge ?? this.cod_charge,
      pdf_invoice_disabled: pdf_invoice_disabled ?? this.pdf_invoice_disabled,
      custom_order_number: custom_order_number ?? this.custom_order_number,
      created_on: created_on ?? this.created_on,
      order_status: order_status ?? this.order_status,
      order_status_id: order_status_id ?? this.order_status_id,
      order_type: order_type ?? this.order_type,
      is_re_order_allowed: is_re_order_allowed ?? this.is_re_order_allowed,
      is_return_request_allowed:
          is_return_request_allowed ?? this.is_return_request_allowed,
      is_shippable: is_shippable ?? this.is_shippable,
      pickup_in_store: pickup_in_store ?? this.pickup_in_store,
      pickup_address: pickup_address ?? this.pickup_address,
      shipping_status: shipping_status ?? this.shipping_status,
      shipping_address: shipping_address ?? this.shipping_address,
      shipping_method: shipping_method ?? this.shipping_method,
      shipment: shipment ?? this.shipment,
      billing_address: billing_address ?? this.billing_address,
      vat_number: vat_number ?? this.vat_number,
      payment_method: payment_method ?? this.payment_method,
      payment_method_status:
          payment_method_status ?? this.payment_method_status,
      can_re_post_process_payment:
          can_re_post_process_payment ?? this.can_re_post_process_payment,
      custom_values: custom_values ?? this.custom_values,
      order_total_cost: order_total_cost ?? this.order_total_cost,
      order_subtotal: order_subtotal ?? this.order_subtotal,
      order_subtotal_value: order_subtotal_value ?? this.order_subtotal_value,
      order_sub_total_discount:
          order_sub_total_discount ?? this.order_sub_total_discount,
      order_sub_total_discount_value:
          order_sub_total_discount_value ?? this.order_sub_total_discount_value,
      order_shipping: order_shipping ?? this.order_shipping,
      order_shipping_value: order_shipping_value ?? this.order_shipping_value,
      payment_method_additional_fee:
          payment_method_additional_fee ?? this.payment_method_additional_fee,
      payment_method_additional_fee_value:
          payment_method_additional_fee_value ??
              this.payment_method_additional_fee_value,
      checkout_attribute_info:
          checkout_attribute_info ?? this.checkout_attribute_info,
      prices_include_tax: prices_include_tax ?? this.prices_include_tax,
      display_tax_shipping_info:
          display_tax_shipping_info ?? this.display_tax_shipping_info,
      tax: tax ?? this.tax,
      tax_rates: tax_rates ?? this.tax_rates,
      display_tax: display_tax ?? this.display_tax,
      display_tax_rates: display_tax_rates ?? this.display_tax_rates,
      order_total_discount: order_total_discount ?? this.order_total_discount,
      order_total_discount_value:
          order_total_discount_value ?? this.order_total_discount_value,
      redeemed_reward_points:
          redeemed_reward_points ?? this.redeemed_reward_points,
      redeemed_reward_points_amount:
          redeemed_reward_points_amount ?? this.redeemed_reward_points_amount,
      order_total: order_total ?? this.order_total,
      order_total_value: order_total_value ?? this.order_total_value,
      gift_cards: gift_cards ?? this.gift_cards,
      show_sku: show_sku ?? this.show_sku,
      items: items ?? this.items,
      order_notes: order_notes ?? this.order_notes,
      show_vendor_name: show_vendor_name ?? this.show_vendor_name,
      id: id ?? this.id,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      print_mode,
      delivery_charge,
      cod_charge,
      pdf_invoice_disabled,
      custom_order_number,
      created_on,
      order_status,
      order_status_id,
      order_type,
      is_re_order_allowed,
      is_return_request_allowed,
      is_shippable,
      pickup_in_store,
      pickup_address,
      shipping_status,
      shipping_address,
      shipping_method,
      shipment,
      billing_address,
      vat_number,
      payment_method,
      payment_method_status,
      can_re_post_process_payment,
      custom_values,
      order_total_cost,
      order_subtotal,
      order_subtotal_value,
      order_sub_total_discount,
      order_sub_total_discount_value,
      order_shipping,
      order_shipping_value,
      payment_method_additional_fee,
      payment_method_additional_fee_value,
      checkout_attribute_info,
      prices_include_tax,
      display_tax_shipping_info,
      tax,
      tax_rates,
      display_tax,
      display_tax_rates,
      order_total_discount,
      order_total_discount_value,
      redeemed_reward_points,
      redeemed_reward_points_amount,
      order_total,
      order_total_value,
      gift_cards,
      show_sku,
      items,
      order_notes,
      show_vendor_name,
      id,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
