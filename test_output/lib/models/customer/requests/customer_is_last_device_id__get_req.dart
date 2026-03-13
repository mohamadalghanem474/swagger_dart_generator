import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class IsLastDeviceIdGetRequest extends Equatable {
  const IsLastDeviceIdGetRequest({this.deviceid});

  final String? deviceid;

  static IsLastDeviceIdGetRequest fromJson(Map<String, dynamic> json) {
    return IsLastDeviceIdGetRequest(
        deviceid:
            json['deviceid'] == null ? null : (json['deviceid'] as String));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'deviceid': deviceid};
  }

  IsLastDeviceIdGetRequest copyWith({String? deviceid}) {
    return IsLastDeviceIdGetRequest(deviceid: deviceid ?? this.deviceid);
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
