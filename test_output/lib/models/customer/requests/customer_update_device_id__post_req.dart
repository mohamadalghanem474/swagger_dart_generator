import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class UpdateDeviceIdPostRequest extends Equatable {
  const UpdateDeviceIdPostRequest({this.deviceid});

  final String? deviceid;

  static UpdateDeviceIdPostRequest fromJson(Map<String, dynamic> json) {
    return UpdateDeviceIdPostRequest(
        deviceid:
            json['deviceid'] == null ? null : (json['deviceid'] as String));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'deviceid': deviceid};
  }

  UpdateDeviceIdPostRequest copyWith({String? deviceid}) {
    return UpdateDeviceIdPostRequest(deviceid: deviceid ?? this.deviceid);
  }

  @override
  List<Object?> get props {
    return [deviceid];
  }

  @override
  bool get stringify {
    return true;
  }
}
