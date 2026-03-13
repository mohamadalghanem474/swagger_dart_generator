import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetShipmentsByStationIdGetRequest extends Equatable {
  const GetShipmentsByStationIdGetRequest({
    this.stationid,
    this.trackingnumber,
    this.shipmentstatus,
    this.createdfromutc,
    this.createdtoutc,
  });

  final int? stationid;

  final String? trackingnumber;

  final String? shipmentstatus;

  final String? createdfromutc;

  final String? createdtoutc;

  static GetShipmentsByStationIdGetRequest fromJson(Map<String, dynamic> json) {
    return GetShipmentsByStationIdGetRequest(
      stationid: json['stationid'] == null ? null : (json['stationid'] as int),
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
      'stationid': stationid,
      'trackingnumber': trackingnumber,
      'shipmentstatus': shipmentstatus,
      'createdfromutc': createdfromutc,
      'createdtoutc': createdtoutc,
    };
  }

  GetShipmentsByStationIdGetRequest copyWith({
    int? stationid,
    String? trackingnumber,
    String? shipmentstatus,
    String? createdfromutc,
    String? createdtoutc,
  }) {
    return GetShipmentsByStationIdGetRequest(
      stationid: stationid ?? this.stationid,
      trackingnumber: trackingnumber ?? this.trackingnumber,
      shipmentstatus: shipmentstatus ?? this.shipmentstatus,
      createdfromutc: createdfromutc ?? this.createdfromutc,
      createdtoutc: createdtoutc ?? this.createdtoutc,
    );
  }

  @override
  List<Object?> get props {
    return [
      stationid,
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
