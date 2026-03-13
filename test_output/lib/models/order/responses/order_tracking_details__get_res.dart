import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class TrackingDetailsGetResponse extends Equatable {
  const TrackingDetailsGetResponse({
    this.tracking_number,
    this.carrier,
    this.carrier_model,
    this.shipment_status_history,
    this.total_price,
    this.formatted_total_price,
    this.item_dimensions,
    this.package_type,
    this.shipment_status,
    this.shipment_status_id,
    this.total_weight,
    this.total_vw,
    this.from,
    this.to,
    this.from_addresslatitude,
    this.from_addresslongitude,
    this.to_addresslatitude,
    this.to_addresslongitude,
    this.receivent_id,
    this.sender,
    this.receivent,
    this.tracking_number_url,
    this.addational_info,
    this.shipped_date,
    this.ready_for_pickup_date,
    this.pickup_date_utc,
    this.delivery_date,
    this.created_on_date,
    this.shipment_status_events,
    this.shipment_notifications,
    this.show_sku,
    this.is_cod,
    this.cod_amount,
    this.cod_value,
    this.cod_currency,
    this.parcel_quantity,
    this.parcel_package_value,
    this.parcel_package_currency,
    this.parcel_description,
    this.notes,
    this.driver_collections,
    this.items,
    this.parent_items,
    this.order,
    this.proof_delivery_types,
    this.parcel_dimensions_list,
    this.record_total,
    this.fulfill_status,
    this.fulfilled_date_utc,
    this.fulfilled_creator_id,
    this.fulfillment_shipment,
    this.shipment_stickers,
    this.external_id,
    this.apply_multipiece,
    this.is_fresh_food,
    this.is_cod_paid_by_coupon,
    this.coupon_quantity,
    this.parent_tracking_number,
    this.is_forward,
    this.id,
    this.custom_properties,
  });

  final String? tracking_number;

  final String? carrier;

  final String? carrier_model;

  final List<String>? shipment_status_history;

  final double? total_price;

  final String? formatted_total_price;

  final String? item_dimensions;

  final String? package_type;

  final String? shipment_status;

  final int? shipment_status_id;

  final double? total_weight;

  final double? total_vw;

  final Map<String, dynamic>? from;

  final Map<String, dynamic>? to;

  final String? from_addresslatitude;

  final String? from_addresslongitude;

  final String? to_addresslatitude;

  final String? to_addresslongitude;

  final int? receivent_id;

  final String? sender;

  final String? receivent;

  final String? tracking_number_url;

  final String? addational_info;

  final DateTime? shipped_date;

  final DateTime? ready_for_pickup_date;

  final DateTime? pickup_date_utc;

  final DateTime? delivery_date;

  final DateTime? created_on_date;

  final List<String>? shipment_status_events;

  final List<String>? shipment_notifications;

  final bool? show_sku;

  final bool? is_cod;

  final String? cod_amount;

  final double? cod_value;

  final String? cod_currency;

  final int? parcel_quantity;

  final double? parcel_package_value;

  final String? parcel_package_currency;

  final String? parcel_description;

  final String? notes;

  final List<String>? driver_collections;

  final List<String>? items;

  final List<String>? parent_items;

  final String? order;

  final List<String>? proof_delivery_types;

  final List<String>? parcel_dimensions_list;

  final int? record_total;

  final String? fulfill_status;

  final DateTime? fulfilled_date_utc;

  final int? fulfilled_creator_id;

  final bool? fulfillment_shipment;

  final List<String>? shipment_stickers;

  final String? external_id;

  final bool? apply_multipiece;

  final bool? is_fresh_food;

  final bool? is_cod_paid_by_coupon;

  final int? coupon_quantity;

  final String? parent_tracking_number;

  final bool? is_forward;

  final int? id;

  final Map<String, dynamic>? custom_properties;

  static TrackingDetailsGetResponse fromJson(Map<String, dynamic> json) {
    return TrackingDetailsGetResponse(
      tracking_number: json['tracking_number'] == null
          ? null
          : (json['tracking_number'] as String),
      carrier: json['carrier'] == null ? null : (json['carrier'] as String),
      carrier_model: json['carrier_model'] == null
          ? null
          : (json['carrier_model'] as String),
      shipment_status_history: json['shipment_status_history'] == null
          ? null
          : json['shipment_status_history'],
      total_price:
          json['total_price'] == null ? null : (json['total_price'] as double),
      formatted_total_price: json['formatted_total_price'] == null
          ? null
          : (json['formatted_total_price'] as String),
      item_dimensions: json['item_dimensions'] == null
          ? null
          : (json['item_dimensions'] as String),
      package_type: json['package_type'] == null
          ? null
          : (json['package_type'] as String),
      shipment_status: json['shipment_status'] == null
          ? null
          : (json['shipment_status'] as String),
      shipment_status_id: json['shipment_status_id'] == null
          ? null
          : (json['shipment_status_id'] as int),
      total_weight: json['total_weight'] == null
          ? null
          : (json['total_weight'] as double),
      total_vw: json['total_vw'] == null ? null : (json['total_vw'] as double),
      from:
          json['from'] == null ? null : (json['from'] as Map<String, dynamic>),
      to: json['to'] == null ? null : (json['to'] as Map<String, dynamic>),
      from_addresslatitude: json['from_addresslatitude'] == null
          ? null
          : (json['from_addresslatitude'] as String),
      from_addresslongitude: json['from_addresslongitude'] == null
          ? null
          : (json['from_addresslongitude'] as String),
      to_addresslatitude: json['to_addresslatitude'] == null
          ? null
          : (json['to_addresslatitude'] as String),
      to_addresslongitude: json['to_addresslongitude'] == null
          ? null
          : (json['to_addresslongitude'] as String),
      receivent_id:
          json['receivent_id'] == null ? null : (json['receivent_id'] as int),
      sender: json['sender'] == null ? null : (json['sender'] as String),
      receivent:
          json['receivent'] == null ? null : (json['receivent'] as String),
      tracking_number_url: json['tracking_number_url'] == null
          ? null
          : (json['tracking_number_url'] as String),
      addational_info: json['addational_info'] == null
          ? null
          : (json['addational_info'] as String),
      shipped_date: json['shipped_date'] == null
          ? null
          : DateTime.parse((json['shipped_date'] as String)),
      ready_for_pickup_date: json['ready_for_pickup_date'] == null
          ? null
          : DateTime.parse((json['ready_for_pickup_date'] as String)),
      pickup_date_utc: json['pickup_date_utc'] == null
          ? null
          : DateTime.parse((json['pickup_date_utc'] as String)),
      delivery_date: json['delivery_date'] == null
          ? null
          : DateTime.parse((json['delivery_date'] as String)),
      created_on_date: json['created_on_date'] == null
          ? null
          : DateTime.parse((json['created_on_date'] as String)),
      shipment_status_events: json['shipment_status_events'] == null
          ? null
          : json['shipment_status_events'],
      shipment_notifications: json['shipment_notifications'] == null
          ? null
          : json['shipment_notifications'],
      show_sku: json['show_sku'] == null ? null : (json['show_sku'] as bool),
      is_cod: json['is_cod'] == null ? null : (json['is_cod'] as bool),
      cod_amount:
          json['cod_amount'] == null ? null : (json['cod_amount'] as String),
      cod_value:
          json['cod_value'] == null ? null : (json['cod_value'] as double),
      cod_currency: json['cod_currency'] == null
          ? null
          : (json['cod_currency'] as String),
      parcel_quantity: json['parcel_quantity'] == null
          ? null
          : (json['parcel_quantity'] as int),
      parcel_package_value: json['parcel_package_value'] == null
          ? null
          : (json['parcel_package_value'] as double),
      parcel_package_currency: json['parcel_package_currency'] == null
          ? null
          : (json['parcel_package_currency'] as String),
      parcel_description: json['parcel_description'] == null
          ? null
          : (json['parcel_description'] as String),
      notes: json['notes'] == null ? null : (json['notes'] as String),
      driver_collections: json['driver_collections'] == null
          ? null
          : json['driver_collections'],
      items: json['items'] == null ? null : json['items'],
      parent_items: json['parent_items'] == null ? null : json['parent_items'],
      order: json['order'] == null ? null : (json['order'] as String),
      proof_delivery_types: json['proof_delivery_types'] == null
          ? null
          : json['proof_delivery_types'],
      parcel_dimensions_list: json['parcel_dimensions_list'] == null
          ? null
          : json['parcel_dimensions_list'],
      record_total:
          json['record_total'] == null ? null : (json['record_total'] as int),
      fulfill_status: json['fulfill_status'] == null
          ? null
          : (json['fulfill_status'] as String),
      fulfilled_date_utc: json['fulfilled_date_utc'] == null
          ? null
          : DateTime.parse((json['fulfilled_date_utc'] as String)),
      fulfilled_creator_id: json['fulfilled_creator_id'] == null
          ? null
          : (json['fulfilled_creator_id'] as int),
      fulfillment_shipment: json['fulfillment_shipment'] == null
          ? null
          : (json['fulfillment_shipment'] as bool),
      shipment_stickers:
          json['shipment_stickers'] == null ? null : json['shipment_stickers'],
      external_id:
          json['external_id'] == null ? null : (json['external_id'] as String),
      apply_multipiece: json['apply_multipiece'] == null
          ? null
          : (json['apply_multipiece'] as bool),
      is_fresh_food: json['is_fresh_food'] == null
          ? null
          : (json['is_fresh_food'] as bool),
      is_cod_paid_by_coupon: json['is_cod_paid_by_coupon'] == null
          ? null
          : (json['is_cod_paid_by_coupon'] as bool),
      coupon_quantity: json['coupon_quantity'] == null
          ? null
          : (json['coupon_quantity'] as int),
      parent_tracking_number: json['parent_tracking_number'] == null
          ? null
          : (json['parent_tracking_number'] as String),
      is_forward:
          json['is_forward'] == null ? null : (json['is_forward'] as bool),
      id: json['id'] == null ? null : (json['id'] as int),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'tracking_number': tracking_number,
      'carrier': carrier,
      'carrier_model': carrier_model,
      'shipment_status_history': shipment_status_history,
      'total_price': total_price,
      'formatted_total_price': formatted_total_price,
      'item_dimensions': item_dimensions,
      'package_type': package_type,
      'shipment_status': shipment_status,
      'shipment_status_id': shipment_status_id,
      'total_weight': total_weight,
      'total_vw': total_vw,
      'from': from,
      'to': to,
      'from_addresslatitude': from_addresslatitude,
      'from_addresslongitude': from_addresslongitude,
      'to_addresslatitude': to_addresslatitude,
      'to_addresslongitude': to_addresslongitude,
      'receivent_id': receivent_id,
      'sender': sender,
      'receivent': receivent,
      'tracking_number_url': tracking_number_url,
      'addational_info': addational_info,
      'shipped_date': shipped_date?.toIso8601String(),
      'ready_for_pickup_date': ready_for_pickup_date?.toIso8601String(),
      'pickup_date_utc': pickup_date_utc?.toIso8601String(),
      'delivery_date': delivery_date?.toIso8601String(),
      'created_on_date': created_on_date?.toIso8601String(),
      'shipment_status_events': shipment_status_events,
      'shipment_notifications': shipment_notifications,
      'show_sku': show_sku,
      'is_cod': is_cod,
      'cod_amount': cod_amount,
      'cod_value': cod_value,
      'cod_currency': cod_currency,
      'parcel_quantity': parcel_quantity,
      'parcel_package_value': parcel_package_value,
      'parcel_package_currency': parcel_package_currency,
      'parcel_description': parcel_description,
      'notes': notes,
      'driver_collections': driver_collections,
      'items': items,
      'parent_items': parent_items,
      'order': order,
      'proof_delivery_types': proof_delivery_types,
      'parcel_dimensions_list': parcel_dimensions_list,
      'record_total': record_total,
      'fulfill_status': fulfill_status,
      'fulfilled_date_utc': fulfilled_date_utc?.toIso8601String(),
      'fulfilled_creator_id': fulfilled_creator_id,
      'fulfillment_shipment': fulfillment_shipment,
      'shipment_stickers': shipment_stickers,
      'external_id': external_id,
      'apply_multipiece': apply_multipiece,
      'is_fresh_food': is_fresh_food,
      'is_cod_paid_by_coupon': is_cod_paid_by_coupon,
      'coupon_quantity': coupon_quantity,
      'parent_tracking_number': parent_tracking_number,
      'is_forward': is_forward,
      'id': id,
      'custom_properties': custom_properties,
    };
  }

  TrackingDetailsGetResponse copyWith({
    String? tracking_number,
    String? carrier,
    String? carrier_model,
    List<String>? shipment_status_history,
    double? total_price,
    String? formatted_total_price,
    String? item_dimensions,
    String? package_type,
    String? shipment_status,
    int? shipment_status_id,
    double? total_weight,
    double? total_vw,
    Map<String, dynamic>? from,
    Map<String, dynamic>? to,
    String? from_addresslatitude,
    String? from_addresslongitude,
    String? to_addresslatitude,
    String? to_addresslongitude,
    int? receivent_id,
    String? sender,
    String? receivent,
    String? tracking_number_url,
    String? addational_info,
    DateTime? shipped_date,
    DateTime? ready_for_pickup_date,
    DateTime? pickup_date_utc,
    DateTime? delivery_date,
    DateTime? created_on_date,
    List<String>? shipment_status_events,
    List<String>? shipment_notifications,
    bool? show_sku,
    bool? is_cod,
    String? cod_amount,
    double? cod_value,
    String? cod_currency,
    int? parcel_quantity,
    double? parcel_package_value,
    String? parcel_package_currency,
    String? parcel_description,
    String? notes,
    List<String>? driver_collections,
    List<String>? items,
    List<String>? parent_items,
    String? order,
    List<String>? proof_delivery_types,
    List<String>? parcel_dimensions_list,
    int? record_total,
    String? fulfill_status,
    DateTime? fulfilled_date_utc,
    int? fulfilled_creator_id,
    bool? fulfillment_shipment,
    List<String>? shipment_stickers,
    String? external_id,
    bool? apply_multipiece,
    bool? is_fresh_food,
    bool? is_cod_paid_by_coupon,
    int? coupon_quantity,
    String? parent_tracking_number,
    bool? is_forward,
    int? id,
    Map<String, dynamic>? custom_properties,
  }) {
    return TrackingDetailsGetResponse(
      tracking_number: tracking_number ?? this.tracking_number,
      carrier: carrier ?? this.carrier,
      carrier_model: carrier_model ?? this.carrier_model,
      shipment_status_history:
          shipment_status_history ?? this.shipment_status_history,
      total_price: total_price ?? this.total_price,
      formatted_total_price:
          formatted_total_price ?? this.formatted_total_price,
      item_dimensions: item_dimensions ?? this.item_dimensions,
      package_type: package_type ?? this.package_type,
      shipment_status: shipment_status ?? this.shipment_status,
      shipment_status_id: shipment_status_id ?? this.shipment_status_id,
      total_weight: total_weight ?? this.total_weight,
      total_vw: total_vw ?? this.total_vw,
      from: from ?? this.from,
      to: to ?? this.to,
      from_addresslatitude: from_addresslatitude ?? this.from_addresslatitude,
      from_addresslongitude:
          from_addresslongitude ?? this.from_addresslongitude,
      to_addresslatitude: to_addresslatitude ?? this.to_addresslatitude,
      to_addresslongitude: to_addresslongitude ?? this.to_addresslongitude,
      receivent_id: receivent_id ?? this.receivent_id,
      sender: sender ?? this.sender,
      receivent: receivent ?? this.receivent,
      tracking_number_url: tracking_number_url ?? this.tracking_number_url,
      addational_info: addational_info ?? this.addational_info,
      shipped_date: shipped_date ?? this.shipped_date,
      ready_for_pickup_date:
          ready_for_pickup_date ?? this.ready_for_pickup_date,
      pickup_date_utc: pickup_date_utc ?? this.pickup_date_utc,
      delivery_date: delivery_date ?? this.delivery_date,
      created_on_date: created_on_date ?? this.created_on_date,
      shipment_status_events:
          shipment_status_events ?? this.shipment_status_events,
      shipment_notifications:
          shipment_notifications ?? this.shipment_notifications,
      show_sku: show_sku ?? this.show_sku,
      is_cod: is_cod ?? this.is_cod,
      cod_amount: cod_amount ?? this.cod_amount,
      cod_value: cod_value ?? this.cod_value,
      cod_currency: cod_currency ?? this.cod_currency,
      parcel_quantity: parcel_quantity ?? this.parcel_quantity,
      parcel_package_value: parcel_package_value ?? this.parcel_package_value,
      parcel_package_currency:
          parcel_package_currency ?? this.parcel_package_currency,
      parcel_description: parcel_description ?? this.parcel_description,
      notes: notes ?? this.notes,
      driver_collections: driver_collections ?? this.driver_collections,
      items: items ?? this.items,
      parent_items: parent_items ?? this.parent_items,
      order: order ?? this.order,
      proof_delivery_types: proof_delivery_types ?? this.proof_delivery_types,
      parcel_dimensions_list:
          parcel_dimensions_list ?? this.parcel_dimensions_list,
      record_total: record_total ?? this.record_total,
      fulfill_status: fulfill_status ?? this.fulfill_status,
      fulfilled_date_utc: fulfilled_date_utc ?? this.fulfilled_date_utc,
      fulfilled_creator_id: fulfilled_creator_id ?? this.fulfilled_creator_id,
      fulfillment_shipment: fulfillment_shipment ?? this.fulfillment_shipment,
      shipment_stickers: shipment_stickers ?? this.shipment_stickers,
      external_id: external_id ?? this.external_id,
      apply_multipiece: apply_multipiece ?? this.apply_multipiece,
      is_fresh_food: is_fresh_food ?? this.is_fresh_food,
      is_cod_paid_by_coupon:
          is_cod_paid_by_coupon ?? this.is_cod_paid_by_coupon,
      coupon_quantity: coupon_quantity ?? this.coupon_quantity,
      parent_tracking_number:
          parent_tracking_number ?? this.parent_tracking_number,
      is_forward: is_forward ?? this.is_forward,
      id: id ?? this.id,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      tracking_number,
      carrier,
      carrier_model,
      shipment_status_history,
      total_price,
      formatted_total_price,
      item_dimensions,
      package_type,
      shipment_status,
      shipment_status_id,
      total_weight,
      total_vw,
      from,
      to,
      from_addresslatitude,
      from_addresslongitude,
      to_addresslatitude,
      to_addresslongitude,
      receivent_id,
      sender,
      receivent,
      tracking_number_url,
      addational_info,
      shipped_date,
      ready_for_pickup_date,
      pickup_date_utc,
      delivery_date,
      created_on_date,
      shipment_status_events,
      shipment_notifications,
      show_sku,
      is_cod,
      cod_amount,
      cod_value,
      cod_currency,
      parcel_quantity,
      parcel_package_value,
      parcel_package_currency,
      parcel_description,
      notes,
      driver_collections,
      items,
      parent_items,
      order,
      proof_delivery_types,
      parcel_dimensions_list,
      record_total,
      fulfill_status,
      fulfilled_date_utc,
      fulfilled_creator_id,
      fulfillment_shipment,
      shipment_stickers,
      external_id,
      apply_multipiece,
      is_fresh_food,
      is_cod_paid_by_coupon,
      coupon_quantity,
      parent_tracking_number,
      is_forward,
      id,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
