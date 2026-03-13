import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class UpdateFuelPutRequest extends Equatable {
  const UpdateFuelPutRequest({
    this.vehicle_id,
    this.driver_id,
    this.vendor_id,
    this.liter,
    this.price_per_liter,
    this.note,
    this.created_date,
    this.created_time,
    this.total_price,
    this.currency_code,
    this.custom_properties,
    this.id,
  });

  final int? vehicle_id;

  final int? driver_id;

  final int? vendor_id;

  final int? liter;

  final double? price_per_liter;

  final String? note;

  final DateTime? created_date;

  final DateTime? created_time;

  final double? total_price;

  final String? currency_code;

  final Map<String, dynamic>? custom_properties;

  final int? id;

  static UpdateFuelPutRequest fromJson(Map<String, dynamic> json) {
    return UpdateFuelPutRequest(
      vehicle_id:
          json['vehicle_id'] == null ? null : (json['vehicle_id'] as int),
      driver_id: json['driver_id'] == null ? null : (json['driver_id'] as int),
      vendor_id: json['vendor_id'] == null ? null : (json['vendor_id'] as int),
      liter: json['liter'] == null ? null : (json['liter'] as int),
      price_per_liter: json['price_per_liter'] == null
          ? null
          : (json['price_per_liter'] as double),
      note: json['note'] == null ? null : (json['note'] as String),
      created_date: json['created_date'] == null
          ? null
          : DateTime.parse((json['created_date'] as String)),
      created_time: json['created_time'] == null
          ? null
          : DateTime.parse((json['created_time'] as String)),
      total_price:
          json['total_price'] == null ? null : (json['total_price'] as double),
      currency_code: json['currency_code'] == null
          ? null
          : (json['currency_code'] as String),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
      id: json['id'] == null ? null : (json['id'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'vehicle_id': vehicle_id,
      'driver_id': driver_id,
      'vendor_id': vendor_id,
      'liter': liter,
      'price_per_liter': price_per_liter,
      'note': note,
      'created_date': created_date?.toIso8601String(),
      'created_time': created_time?.toIso8601String(),
      'total_price': total_price,
      'currency_code': currency_code,
      'custom_properties': custom_properties,
      'id': id,
    };
  }

  UpdateFuelPutRequest copyWith({
    int? vehicle_id,
    int? driver_id,
    int? vendor_id,
    int? liter,
    double? price_per_liter,
    String? note,
    DateTime? created_date,
    DateTime? created_time,
    double? total_price,
    String? currency_code,
    Map<String, dynamic>? custom_properties,
    int? id,
  }) {
    return UpdateFuelPutRequest(
      vehicle_id: vehicle_id ?? this.vehicle_id,
      driver_id: driver_id ?? this.driver_id,
      vendor_id: vendor_id ?? this.vendor_id,
      liter: liter ?? this.liter,
      price_per_liter: price_per_liter ?? this.price_per_liter,
      note: note ?? this.note,
      created_date: created_date ?? this.created_date,
      created_time: created_time ?? this.created_time,
      total_price: total_price ?? this.total_price,
      currency_code: currency_code ?? this.currency_code,
      custom_properties: custom_properties ?? this.custom_properties,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props {
    return [
      vehicle_id,
      driver_id,
      vendor_id,
      liter,
      price_per_liter,
      note,
      created_date,
      created_time,
      total_price,
      currency_code,
      custom_properties,
      id,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
