import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class DriverInfoGetRequest extends Equatable {
  const DriverInfoGetRequest({this.driverid});

  final int? driverid;

  static DriverInfoGetRequest fromJson(Map<String, dynamic> json) {
    return DriverInfoGetRequest(
        driverid: json['driverid'] == null ? null : (json['driverid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'driverid': driverid};
  }

  DriverInfoGetRequest copyWith({int? driverid}) {
    return DriverInfoGetRequest(driverid: driverid ?? this.driverid);
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
