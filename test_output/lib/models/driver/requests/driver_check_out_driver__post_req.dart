import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CheckOutDriverPostRequest extends Equatable {
  const CheckOutDriverPostRequest({
    this.vehicleid,
    this.driverid,
  });

  final int? vehicleid;

  final int? driverid;

  static CheckOutDriverPostRequest fromJson(Map<String, dynamic> json) {
    return CheckOutDriverPostRequest(
      vehicleid: json['vehicleid'] == null ? null : (json['vehicleid'] as int),
      driverid: json['driverid'] == null ? null : (json['driverid'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'vehicleid': vehicleid,
      'driverid': driverid,
    };
  }

  CheckOutDriverPostRequest copyWith({
    int? vehicleid,
    int? driverid,
  }) {
    return CheckOutDriverPostRequest(
      vehicleid: vehicleid ?? this.vehicleid,
      driverid: driverid ?? this.driverid,
    );
  }

  @override
  List<Object?> get props {
    return [
      vehicleid,
      driverid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
