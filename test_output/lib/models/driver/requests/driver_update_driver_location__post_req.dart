import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class UpdateDriverLocationPostRequest extends Equatable {
  const UpdateDriverLocationPostRequest({
    this.VehicleId,
    this.Latitude,
    this.Longitude,
  });

  final int? VehicleId;

  final double? Latitude;

  final double? Longitude;

  static UpdateDriverLocationPostRequest fromJson(Map<String, dynamic> json) {
    return UpdateDriverLocationPostRequest(
      VehicleId: json['VehicleId'] == null ? null : (json['VehicleId'] as int),
      Latitude: json['Latitude'] == null ? null : (json['Latitude'] as double),
      Longitude:
          json['Longitude'] == null ? null : (json['Longitude'] as double),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'VehicleId': VehicleId,
      'Latitude': Latitude,
      'Longitude': Longitude,
    };
  }

  UpdateDriverLocationPostRequest copyWith({
    int? VehicleId,
    double? Latitude,
    double? Longitude,
  }) {
    return UpdateDriverLocationPostRequest(
      VehicleId: VehicleId ?? this.VehicleId,
      Latitude: Latitude ?? this.Latitude,
      Longitude: Longitude ?? this.Longitude,
    );
  }

  @override
  List<Object?> get props {
    return [
      VehicleId,
      Latitude,
      Longitude,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
