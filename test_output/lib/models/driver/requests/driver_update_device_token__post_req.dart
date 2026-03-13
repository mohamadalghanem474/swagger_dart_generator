import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class UpdateDeviceTokenPostRequest extends Equatable {
  const UpdateDeviceTokenPostRequest({
    this.driverid,
    this.devicetoken,
  });

  final int? driverid;

  final String? devicetoken;

  static UpdateDeviceTokenPostRequest fromJson(Map<String, dynamic> json) {
    return UpdateDeviceTokenPostRequest(
      driverid: json['driverid'] == null ? null : (json['driverid'] as int),
      devicetoken:
          json['devicetoken'] == null ? null : (json['devicetoken'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'driverid': driverid,
      'devicetoken': devicetoken,
    };
  }

  UpdateDeviceTokenPostRequest copyWith({
    int? driverid,
    String? devicetoken,
  }) {
    return UpdateDeviceTokenPostRequest(
      driverid: driverid ?? this.driverid,
      devicetoken: devicetoken ?? this.devicetoken,
    );
  }

  @override
  List<Object?> get props {
    return [
      driverid,
      devicetoken,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
