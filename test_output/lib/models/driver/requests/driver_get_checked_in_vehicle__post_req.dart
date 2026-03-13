import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetCheckedInVehiclePostRequest extends Equatable {
  const GetCheckedInVehiclePostRequest({this.driverid});

  final int? driverid;

  static GetCheckedInVehiclePostRequest fromJson(Map<String, dynamic> json) {
    return GetCheckedInVehiclePostRequest(
        driverid: json['driverid'] == null ? null : (json['driverid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'driverid': driverid};
  }

  GetCheckedInVehiclePostRequest copyWith({int? driverid}) {
    return GetCheckedInVehiclePostRequest(driverid: driverid ?? this.driverid);
  }

  @override
  List<Object?> get props {
    return [driverid];
  }

  @override
  bool get stringify {
    return true;
  }
}
