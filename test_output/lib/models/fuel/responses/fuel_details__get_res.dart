import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class DetailsGetResponse extends Equatable {
  const DetailsGetResponse({
    this.vehicle,
    this.liters,
    this.vendor,
    this.driver,
    this.odometer,
    this.odometer_value,
    this.created_date,
    this.created_on,
    this.total_price,
    this.total_price_value,
    this.note,
    this.price_per_liter,
    this.vehicle_type,
    this.vehicle_address,
    this.vehicle_model,
    this.vehicle_id,
    this.attachments,
    this.currency_code,
    this.id,
    this.custom_properties,
  });

  final String? vehicle;

  final int? liters;

  final String? vendor;

  final String? driver;

  final String? odometer;

  final double? odometer_value;

  final DateTime? created_date;

  final String? created_on;

  final String? total_price;

  final double? total_price_value;

  final String? note;

  final double? price_per_liter;

  final String? vehicle_type;

  final String? vehicle_address;

  final String? vehicle_model;

  final int? vehicle_id;

  final List<String>? attachments;

  final String? currency_code;

  final int? id;

  final Map<String, dynamic>? custom_properties;

  static DetailsGetResponse fromJson(Map<String, dynamic> json) {
    return DetailsGetResponse(
      vehicle: json['vehicle'] == null ? null : (json['vehicle'] as String),
      liters: json['liters'] == null ? null : (json['liters'] as int),
      vendor: json['vendor'] == null ? null : (json['vendor'] as String),
      driver: json['driver'] == null ? null : (json['driver'] as String),
      odometer: json['odometer'] == null ? null : (json['odometer'] as String),
      odometer_value: json['odometer_value'] == null
          ? null
          : (json['odometer_value'] as double),
      created_date: json['created_date'] == null
          ? null
          : DateTime.parse((json['created_date'] as String)),
      created_on:
          json['created_on'] == null ? null : (json['created_on'] as String),
      total_price:
          json['total_price'] == null ? null : (json['total_price'] as String),
      total_price_value: json['total_price_value'] == null
          ? null
          : (json['total_price_value'] as double),
      note: json['note'] == null ? null : (json['note'] as String),
      price_per_liter: json['price_per_liter'] == null
          ? null
          : (json['price_per_liter'] as double),
      vehicle_type: json['vehicle_type'] == null
          ? null
          : (json['vehicle_type'] as String),
      vehicle_address: json['vehicle_address'] == null
          ? null
          : (json['vehicle_address'] as String),
      vehicle_model: json['vehicle_model'] == null
          ? null
          : (json['vehicle_model'] as String),
      vehicle_id:
          json['vehicle_id'] == null ? null : (json['vehicle_id'] as int),
      attachments: json['attachments'] == null ? null : json['attachments'],
      currency_code: json['currency_code'] == null
          ? null
          : (json['currency_code'] as String),
      id: json['id'] == null ? null : (json['id'] as int),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'vehicle': vehicle,
      'liters': liters,
      'vendor': vendor,
      'driver': driver,
      'odometer': odometer,
      'odometer_value': odometer_value,
      'created_date': created_date?.toIso8601String(),
      'created_on': created_on,
      'total_price': total_price,
      'total_price_value': total_price_value,
      'note': note,
      'price_per_liter': price_per_liter,
      'vehicle_type': vehicle_type,
      'vehicle_address': vehicle_address,
      'vehicle_model': vehicle_model,
      'vehicle_id': vehicle_id,
      'attachments': attachments,
      'currency_code': currency_code,
      'id': id,
      'custom_properties': custom_properties,
    };
  }

  DetailsGetResponse copyWith({
    String? vehicle,
    int? liters,
    String? vendor,
    String? driver,
    String? odometer,
    double? odometer_value,
    DateTime? created_date,
    String? created_on,
    String? total_price,
    double? total_price_value,
    String? note,
    double? price_per_liter,
    String? vehicle_type,
    String? vehicle_address,
    String? vehicle_model,
    int? vehicle_id,
    List<String>? attachments,
    String? currency_code,
    int? id,
    Map<String, dynamic>? custom_properties,
  }) {
    return DetailsGetResponse(
      vehicle: vehicle ?? this.vehicle,
      liters: liters ?? this.liters,
      vendor: vendor ?? this.vendor,
      driver: driver ?? this.driver,
      odometer: odometer ?? this.odometer,
      odometer_value: odometer_value ?? this.odometer_value,
      created_date: created_date ?? this.created_date,
      created_on: created_on ?? this.created_on,
      total_price: total_price ?? this.total_price,
      total_price_value: total_price_value ?? this.total_price_value,
      note: note ?? this.note,
      price_per_liter: price_per_liter ?? this.price_per_liter,
      vehicle_type: vehicle_type ?? this.vehicle_type,
      vehicle_address: vehicle_address ?? this.vehicle_address,
      vehicle_model: vehicle_model ?? this.vehicle_model,
      vehicle_id: vehicle_id ?? this.vehicle_id,
      attachments: attachments ?? this.attachments,
      currency_code: currency_code ?? this.currency_code,
      id: id ?? this.id,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      vehicle,
      liters,
      vendor,
      driver,
      odometer,
      odometer_value,
      created_date,
      created_on,
      total_price,
      total_price_value,
      note,
      price_per_liter,
      vehicle_type,
      vehicle_address,
      vehicle_model,
      vehicle_id,
      attachments,
      currency_code,
      id,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
