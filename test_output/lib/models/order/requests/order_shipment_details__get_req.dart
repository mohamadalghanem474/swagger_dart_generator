import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ShipmentDetailsGetRequest extends Equatable {
  const ShipmentDetailsGetRequest({
    this.shipmentid,
    this.trackingnumber,
  });

  final int? shipmentid;

  final String? trackingnumber;

  static ShipmentDetailsGetRequest fromJson(Map<String, dynamic> json) {
    return ShipmentDetailsGetRequest(
      shipmentid:
          json['shipmentid'] == null ? null : (json['shipmentid'] as int),
      trackingnumber: json['trackingnumber'] == null
          ? null
          : (json['trackingnumber'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'shipmentid': shipmentid,
      'trackingnumber': trackingnumber,
    };
  }

  ShipmentDetailsGetRequest copyWith({
    int? shipmentid,
    String? trackingnumber,
  }) {
    return ShipmentDetailsGetRequest(
      shipmentid: shipmentid ?? this.shipmentid,
      trackingnumber: trackingnumber ?? this.trackingnumber,
    );
  }

  @override
  List<Object?> get props {
    return [
      shipmentid,
      trackingnumber,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
