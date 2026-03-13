import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class VendorSubscriptionCustomAttrBySystemNameGetResponse extends Equatable {
  const VendorSubscriptionCustomAttrBySystemNameGetResponse({
    this.Id,
    this.SystemName,
    this.Name,
    this.Values,
  });

  final int? Id;

  final String? SystemName;

  final String? Name;

  final List<String>? Values;

  static VendorSubscriptionCustomAttrBySystemNameGetResponse fromJson(
      Map<String, dynamic> json) {
    return VendorSubscriptionCustomAttrBySystemNameGetResponse(
      Id: json['Id'] == null ? null : (json['Id'] as int),
      SystemName:
          json['SystemName'] == null ? null : (json['SystemName'] as String),
      Name: json['Name'] == null ? null : (json['Name'] as String),
      Values: json['Values'] == null ? null : json['Values'],
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'Id': Id,
      'SystemName': SystemName,
      'Name': Name,
      'Values': Values,
    };
  }

  VendorSubscriptionCustomAttrBySystemNameGetResponse copyWith({
    int? Id,
    String? SystemName,
    String? Name,
    List<String>? Values,
  }) {
    return VendorSubscriptionCustomAttrBySystemNameGetResponse(
      Id: Id ?? this.Id,
      SystemName: SystemName ?? this.SystemName,
      Name: Name ?? this.Name,
      Values: Values ?? this.Values,
    );
  }

  @override
  List<Object?> get props {
    return [
      Id,
      SystemName,
      Name,
      Values,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
