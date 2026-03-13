import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class DriverInfoPostResponse extends Equatable {
  const DriverInfoPostResponse({
    this.id,
    this.email,
    this.first_name,
    this.last_name,
    this.full_name,
    this.phone,
    this.driverstatus,
    this.plate_number,
    this.model_year,
    this.custom_properties,
  });

  final int? id;

  final String? email;

  final String? first_name;

  final String? last_name;

  final String? full_name;

  final String? phone;

  final String? driverstatus;

  final String? plate_number;

  final String? model_year;

  final Map<String, dynamic>? custom_properties;

  static DriverInfoPostResponse fromJson(Map<String, dynamic> json) {
    return DriverInfoPostResponse(
      id: json['id'] == null ? null : (json['id'] as int),
      email: json['email'] == null ? null : (json['email'] as String),
      first_name:
          json['first_name'] == null ? null : (json['first_name'] as String),
      last_name:
          json['last_name'] == null ? null : (json['last_name'] as String),
      full_name:
          json['full_name'] == null ? null : (json['full_name'] as String),
      phone: json['phone'] == null ? null : (json['phone'] as String),
      driverstatus: json['driverstatus'] == null
          ? null
          : (json['driverstatus'] as String),
      plate_number: json['plate_number'] == null
          ? null
          : (json['plate_number'] as String),
      model_year:
          json['model_year'] == null ? null : (json['model_year'] as String),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'email': email,
      'first_name': first_name,
      'last_name': last_name,
      'full_name': full_name,
      'phone': phone,
      'driverstatus': driverstatus,
      'plate_number': plate_number,
      'model_year': model_year,
      'custom_properties': custom_properties,
    };
  }

  DriverInfoPostResponse copyWith({
    int? id,
    String? email,
    String? first_name,
    String? last_name,
    String? full_name,
    String? phone,
    String? driverstatus,
    String? plate_number,
    String? model_year,
    Map<String, dynamic>? custom_properties,
  }) {
    return DriverInfoPostResponse(
      id: id ?? this.id,
      email: email ?? this.email,
      first_name: first_name ?? this.first_name,
      last_name: last_name ?? this.last_name,
      full_name: full_name ?? this.full_name,
      phone: phone ?? this.phone,
      driverstatus: driverstatus ?? this.driverstatus,
      plate_number: plate_number ?? this.plate_number,
      model_year: model_year ?? this.model_year,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      id,
      email,
      first_name,
      last_name,
      full_name,
      phone,
      driverstatus,
      plate_number,
      model_year,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
