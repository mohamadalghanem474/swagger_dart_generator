import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class UpdateDeviceTokenPostRequest extends Equatable {
  const UpdateDeviceTokenPostRequest({
    this.customerid,
    this.devicetoken,
  });

  final int? customerid;

  final String? devicetoken;

  static UpdateDeviceTokenPostRequest fromJson(Map<String, dynamic> json) {
    return UpdateDeviceTokenPostRequest(
      customerid:
          json['customerid'] == null ? null : (json['customerid'] as int),
      devicetoken:
          json['devicetoken'] == null ? null : (json['devicetoken'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'customerid': customerid,
      'devicetoken': devicetoken,
    };
  }

  UpdateDeviceTokenPostRequest copyWith({
    int? customerid,
    String? devicetoken,
  }) {
    return UpdateDeviceTokenPostRequest(
      customerid: customerid ?? this.customerid,
      devicetoken: devicetoken ?? this.devicetoken,
    );
  }

  @override
  List<Object?> get props {
    return [
      customerid,
      devicetoken,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
