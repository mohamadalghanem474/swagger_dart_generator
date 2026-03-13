import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CreateServiceLogsPostResponse extends Equatable {
  const CreateServiceLogsPostResponse({
    this.odo_meter,
    this.cost,
    this.driver_id,
    this.vehicle_id,
    this.service_type_id,
    this.vendor_id,
    this.note,
    this.time,
    this.created_on,
    this.currency_code,
    this.custom_properties,
  });

  final double? odo_meter;

  final double? cost;

  final int? driver_id;

  final int? vehicle_id;

  final int? service_type_id;

  final int? vendor_id;

  final String? note;

  final DateTime? time;

  final String? created_on;

  final String? currency_code;

  final Map<String, dynamic>? custom_properties;

  static CreateServiceLogsPostResponse fromJson(Map<String, dynamic> json) {
    return CreateServiceLogsPostResponse(
      odo_meter:
          json['odo_meter'] == null ? null : (json['odo_meter'] as double),
      cost: json['cost'] == null ? null : (json['cost'] as double),
      driver_id: json['driver_id'] == null ? null : (json['driver_id'] as int),
      vehicle_id:
          json['vehicle_id'] == null ? null : (json['vehicle_id'] as int),
      service_type_id: json['service_type_id'] == null
          ? null
          : (json['service_type_id'] as int),
      vendor_id: json['vendor_id'] == null ? null : (json['vendor_id'] as int),
      note: json['note'] == null ? null : (json['note'] as String),
      time: json['time'] == null
          ? null
          : DateTime.parse((json['time'] as String)),
      created_on:
          json['created_on'] == null ? null : (json['created_on'] as String),
      currency_code: json['currency_code'] == null
          ? null
          : (json['currency_code'] as String),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'odo_meter': odo_meter,
      'cost': cost,
      'driver_id': driver_id,
      'vehicle_id': vehicle_id,
      'service_type_id': service_type_id,
      'vendor_id': vendor_id,
      'note': note,
      'time': time?.toIso8601String(),
      'created_on': created_on,
      'currency_code': currency_code,
      'custom_properties': custom_properties,
    };
  }

  CreateServiceLogsPostResponse copyWith({
    double? odo_meter,
    double? cost,
    int? driver_id,
    int? vehicle_id,
    int? service_type_id,
    int? vendor_id,
    String? note,
    DateTime? time,
    String? created_on,
    String? currency_code,
    Map<String, dynamic>? custom_properties,
  }) {
    return CreateServiceLogsPostResponse(
      odo_meter: odo_meter ?? this.odo_meter,
      cost: cost ?? this.cost,
      driver_id: driver_id ?? this.driver_id,
      vehicle_id: vehicle_id ?? this.vehicle_id,
      service_type_id: service_type_id ?? this.service_type_id,
      vendor_id: vendor_id ?? this.vendor_id,
      note: note ?? this.note,
      time: time ?? this.time,
      created_on: created_on ?? this.created_on,
      currency_code: currency_code ?? this.currency_code,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      odo_meter,
      cost,
      driver_id,
      vehicle_id,
      service_type_id,
      vendor_id,
      note,
      time,
      created_on,
      currency_code,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
