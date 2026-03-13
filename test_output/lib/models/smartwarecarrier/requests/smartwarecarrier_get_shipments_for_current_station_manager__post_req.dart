import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetShipmentsForCurrentStationManagerPostRequest extends Equatable {
  const GetShipmentsForCurrentStationManagerPostRequest({
    this.trackingnumber,
    this.shipmentstatus,
    this.createdfromutc,
    this.createdtoutc,
  });

  final String? trackingnumber;

  final String? shipmentstatus;

  final String? createdfromutc;

  final String? createdtoutc;

  static GetShipmentsForCurrentStationManagerPostRequest fromJson(
      Map<String, dynamic> json) {
    return GetShipmentsForCurrentStationManagerPostRequest(
      trackingnumber: json['trackingnumber'] == null
          ? null
          : (json['trackingnumber'] as String),
      shipmentstatus: json['shipmentstatus'] == null
          ? null
          : (json['shipmentstatus'] as String),
      createdfromutc: json['createdfromutc'] == null
          ? null
          : (json['createdfromutc'] as String),
      createdtoutc: json['createdtoutc'] == null
          ? null
          : (json['createdtoutc'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'trackingnumber': trackingnumber,
      'shipmentstatus': shipmentstatus,
      'createdfromutc': createdfromutc,
      'createdtoutc': createdtoutc,
    };
  }

  GetShipmentsForCurrentStationManagerPostRequest copyWith({
    String? trackingnumber,
    String? shipmentstatus,
    String? createdfromutc,
    String? createdtoutc,
  }) {
    return GetShipmentsForCurrentStationManagerPostRequest(
      trackingnumber: trackingnumber ?? this.trackingnumber,
      shipmentstatus: shipmentstatus ?? this.shipmentstatus,
      createdfromutc: createdfromutc ?? this.createdfromutc,
      createdtoutc: createdtoutc ?? this.createdtoutc,
    );
  }

  @override
  List<Object?> get props {
    return [
      trackingnumber,
      shipmentstatus,
      createdfromutc,
      createdtoutc,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
