import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CostReportDetailsGetResponse extends Equatable {
  const CostReportDetailsGetResponse({
    this.vehicle_plate_number,
    this.driver_name,
    this.create_on,
    this.cost,
    this.cost_type,
    this.service_type,
    this.vehicle_type,
    this.vehicle_address,
    this.vehicle_model,
    this.odometer,
    this.created_date,
    this.vendor,
    this.note,
    this.id,
    this.custom_properties,
  });

  final String? vehicle_plate_number;

  final String? driver_name;

  final String? create_on;

  final String? cost;

  final String? cost_type;

  final String? service_type;

  final String? vehicle_type;

  final String? vehicle_address;

  final String? vehicle_model;

  final double? odometer;

  final DateTime? created_date;

  final String? vendor;

  final String? note;

  final int? id;

  final Map<String, dynamic>? custom_properties;

  static CostReportDetailsGetResponse fromJson(Map<String, dynamic> json) {
    return CostReportDetailsGetResponse(
      vehicle_plate_number: json['vehicle_plate_number'] == null
          ? null
          : (json['vehicle_plate_number'] as String),
      driver_name:
          json['driver_name'] == null ? null : (json['driver_name'] as String),
      create_on:
          json['create_on'] == null ? null : (json['create_on'] as String),
      cost: json['cost'] == null ? null : (json['cost'] as String),
      cost_type:
          json['cost_type'] == null ? null : (json['cost_type'] as String),
      service_type: json['service_type'] == null
          ? null
          : (json['service_type'] as String),
      vehicle_type: json['vehicle_type'] == null
          ? null
          : (json['vehicle_type'] as String),
      vehicle_address: json['vehicle_address'] == null
          ? null
          : (json['vehicle_address'] as String),
      vehicle_model: json['vehicle_model'] == null
          ? null
          : (json['vehicle_model'] as String),
      odometer: json['odometer'] == null ? null : (json['odometer'] as double),
      created_date: json['created_date'] == null
          ? null
          : DateTime.parse((json['created_date'] as String)),
      vendor: json['vendor'] == null ? null : (json['vendor'] as String),
      note: json['note'] == null ? null : (json['note'] as String),
      id: json['id'] == null ? null : (json['id'] as int),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'vehicle_plate_number': vehicle_plate_number,
      'driver_name': driver_name,
      'create_on': create_on,
      'cost': cost,
      'cost_type': cost_type,
      'service_type': service_type,
      'vehicle_type': vehicle_type,
      'vehicle_address': vehicle_address,
      'vehicle_model': vehicle_model,
      'odometer': odometer,
      'created_date': created_date?.toIso8601String(),
      'vendor': vendor,
      'note': note,
      'id': id,
      'custom_properties': custom_properties,
    };
  }

  CostReportDetailsGetResponse copyWith({
    String? vehicle_plate_number,
    String? driver_name,
    String? create_on,
    String? cost,
    String? cost_type,
    String? service_type,
    String? vehicle_type,
    String? vehicle_address,
    String? vehicle_model,
    double? odometer,
    DateTime? created_date,
    String? vendor,
    String? note,
    int? id,
    Map<String, dynamic>? custom_properties,
  }) {
    return CostReportDetailsGetResponse(
      vehicle_plate_number: vehicle_plate_number ?? this.vehicle_plate_number,
      driver_name: driver_name ?? this.driver_name,
      create_on: create_on ?? this.create_on,
      cost: cost ?? this.cost,
      cost_type: cost_type ?? this.cost_type,
      service_type: service_type ?? this.service_type,
      vehicle_type: vehicle_type ?? this.vehicle_type,
      vehicle_address: vehicle_address ?? this.vehicle_address,
      vehicle_model: vehicle_model ?? this.vehicle_model,
      odometer: odometer ?? this.odometer,
      created_date: created_date ?? this.created_date,
      vendor: vendor ?? this.vendor,
      note: note ?? this.note,
      id: id ?? this.id,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      vehicle_plate_number,
      driver_name,
      create_on,
      cost,
      cost_type,
      service_type,
      vehicle_type,
      vehicle_address,
      vehicle_model,
      odometer,
      created_date,
      vendor,
      note,
      id,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
