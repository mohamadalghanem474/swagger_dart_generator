import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class VendorSubscriptionCustomAttrBySystemNameGetRequest extends Equatable {
  const VendorSubscriptionCustomAttrBySystemNameGetRequest({this.systemname});

  final String? systemname;

  static VendorSubscriptionCustomAttrBySystemNameGetRequest fromJson(
      Map<String, dynamic> json) {
    return VendorSubscriptionCustomAttrBySystemNameGetRequest(
        systemname:
            json['systemname'] == null ? null : (json['systemname'] as String));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'systemname': systemname};
  }

  VendorSubscriptionCustomAttrBySystemNameGetRequest copyWith(
      {String? systemname}) {
    return VendorSubscriptionCustomAttrBySystemNameGetRequest(
        systemname: systemname ?? this.systemname);
  }

  @override
  List<Object?> get props {
    return [systemname];
  }

  @override
  bool get stringify {
    return true;
  }
}
