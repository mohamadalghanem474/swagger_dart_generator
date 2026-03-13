import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class DetailsGetResponse extends Equatable {
  const DetailsGetResponse({
    this.service_type,
    this.vehicle_plate_number,
    this.vendor_name,
    this.driver_name,
    this.create_on,
    this.odo_meter,
    this.cost,
    this.cost_text,
    this.driver_id,
    this.vehicle_drivers,
    this.vehicle_id,
    this.avaliable_vehicle,
    this.service_type_id,
    this.avaliable_service_type,
    this.vendor_id,
    this.avaliable_vendor,
    this.note,
    this.time,
    this.created_on,
    this.vehicle_type,
    this.vehicle_address,
    this.vehicle_model,
    this.attachments,
    this.currency_code,
    this.id,
    this.custom_properties,
  });

  final String? service_type;

  final String? vehicle_plate_number;

  final String? vendor_name;

  final String? driver_name;

  final String? create_on;

  final double? odo_meter;

  final double? cost;

  final String? cost_text;

  final int? driver_id;

  final List<String>? vehicle_drivers;

  final int? vehicle_id;

  final List<String>? avaliable_vehicle;

  final int? service_type_id;

  final List<String>? avaliable_service_type;

  final int? vendor_id;

  final List<String>? avaliable_vendor;

  final String? note;

  final DateTime? time;

  final String? created_on;

  final String? vehicle_type;

  final String? vehicle_address;

  final String? vehicle_model;

  final List<String>? attachments;

  final String? currency_code;

  final int? id;

  final Map<String, dynamic>? custom_properties;

  static DetailsGetResponse fromJson(Map<String, dynamic> json) {
    return DetailsGetResponse(
      service_type: json['service_type'] == null
          ? null
          : (json['service_type'] as String),
      vehicle_plate_number: json['vehicle_plate_number'] == null
          ? null
          : (json['vehicle_plate_number'] as String),
      vendor_name:
          json['vendor_name'] == null ? null : (json['vendor_name'] as String),
      driver_name:
          json['driver_name'] == null ? null : (json['driver_name'] as String),
      create_on:
          json['create_on'] == null ? null : (json['create_on'] as String),
      odo_meter:
          json['odo_meter'] == null ? null : (json['odo_meter'] as double),
      cost: json['cost'] == null ? null : (json['cost'] as double),
      cost_text:
          json['cost_text'] == null ? null : (json['cost_text'] as String),
      driver_id: json['driver_id'] == null ? null : (json['driver_id'] as int),
      vehicle_drivers:
          json['vehicle_drivers'] == null ? null : json['vehicle_drivers'],
      vehicle_id:
          json['vehicle_id'] == null ? null : (json['vehicle_id'] as int),
      avaliable_vehicle:
          json['avaliable_vehicle'] == null ? null : json['avaliable_vehicle'],
      service_type_id: json['service_type_id'] == null
          ? null
          : (json['service_type_id'] as int),
      avaliable_service_type: json['avaliable_service_type'] == null
          ? null
          : json['avaliable_service_type'],
      vendor_id: json['vendor_id'] == null ? null : (json['vendor_id'] as int),
      avaliable_vendor:
          json['avaliable_vendor'] == null ? null : json['avaliable_vendor'],
      note: json['note'] == null ? null : (json['note'] as String),
      time: json['time'] == null
          ? null
          : DateTime.parse((json['time'] as String)),
      created_on:
          json['created_on'] == null ? null : (json['created_on'] as String),
      vehicle_type: json['vehicle_type'] == null
          ? null
          : (json['vehicle_type'] as String),
      vehicle_address: json['vehicle_address'] == null
          ? null
          : (json['vehicle_address'] as String),
      vehicle_model: json['vehicle_model'] == null
          ? null
          : (json['vehicle_model'] as String),
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
      'service_type': service_type,
      'vehicle_plate_number': vehicle_plate_number,
      'vendor_name': vendor_name,
      'driver_name': driver_name,
      'create_on': create_on,
      'odo_meter': odo_meter,
      'cost': cost,
      'cost_text': cost_text,
      'driver_id': driver_id,
      'vehicle_drivers': vehicle_drivers,
      'vehicle_id': vehicle_id,
      'avaliable_vehicle': avaliable_vehicle,
      'service_type_id': service_type_id,
      'avaliable_service_type': avaliable_service_type,
      'vendor_id': vendor_id,
      'avaliable_vendor': avaliable_vendor,
      'note': note,
      'time': time?.toIso8601String(),
      'created_on': created_on,
      'vehicle_type': vehicle_type,
      'vehicle_address': vehicle_address,
      'vehicle_model': vehicle_model,
      'attachments': attachments,
      'currency_code': currency_code,
      'id': id,
      'custom_properties': custom_properties,
    };
  }

  DetailsGetResponse copyWith({
    String? service_type,
    String? vehicle_plate_number,
    String? vendor_name,
    String? driver_name,
    String? create_on,
    double? odo_meter,
    double? cost,
    String? cost_text,
    int? driver_id,
    List<String>? vehicle_drivers,
    int? vehicle_id,
    List<String>? avaliable_vehicle,
    int? service_type_id,
    List<String>? avaliable_service_type,
    int? vendor_id,
    List<String>? avaliable_vendor,
    String? note,
    DateTime? time,
    String? created_on,
    String? vehicle_type,
    String? vehicle_address,
    String? vehicle_model,
    List<String>? attachments,
    String? currency_code,
    int? id,
    Map<String, dynamic>? custom_properties,
  }) {
    return DetailsGetResponse(
      service_type: service_type ?? this.service_type,
      vehicle_plate_number: vehicle_plate_number ?? this.vehicle_plate_number,
      vendor_name: vendor_name ?? this.vendor_name,
      driver_name: driver_name ?? this.driver_name,
      create_on: create_on ?? this.create_on,
      odo_meter: odo_meter ?? this.odo_meter,
      cost: cost ?? this.cost,
      cost_text: cost_text ?? this.cost_text,
      driver_id: driver_id ?? this.driver_id,
      vehicle_drivers: vehicle_drivers ?? this.vehicle_drivers,
      vehicle_id: vehicle_id ?? this.vehicle_id,
      avaliable_vehicle: avaliable_vehicle ?? this.avaliable_vehicle,
      service_type_id: service_type_id ?? this.service_type_id,
      avaliable_service_type:
          avaliable_service_type ?? this.avaliable_service_type,
      vendor_id: vendor_id ?? this.vendor_id,
      avaliable_vendor: avaliable_vendor ?? this.avaliable_vendor,
      note: note ?? this.note,
      time: time ?? this.time,
      created_on: created_on ?? this.created_on,
      vehicle_type: vehicle_type ?? this.vehicle_type,
      vehicle_address: vehicle_address ?? this.vehicle_address,
      vehicle_model: vehicle_model ?? this.vehicle_model,
      attachments: attachments ?? this.attachments,
      currency_code: currency_code ?? this.currency_code,
      id: id ?? this.id,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      service_type,
      vehicle_plate_number,
      vendor_name,
      driver_name,
      create_on,
      odo_meter,
      cost,
      cost_text,
      driver_id,
      vehicle_drivers,
      vehicle_id,
      avaliable_vehicle,
      service_type_id,
      avaliable_service_type,
      vendor_id,
      avaliable_vendor,
      note,
      time,
      created_on,
      vehicle_type,
      vehicle_address,
      vehicle_model,
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
