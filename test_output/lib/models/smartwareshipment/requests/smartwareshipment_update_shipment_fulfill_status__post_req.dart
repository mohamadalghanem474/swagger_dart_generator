import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class UpdateShipmentFulfillStatusPostRequest extends Equatable {
  const UpdateShipmentFulfillStatusPostRequest({
    this.fulfillstatus,
    this.shipmentid,
  });

  final String? fulfillstatus;

  final int? shipmentid;

  static UpdateShipmentFulfillStatusPostRequest fromJson(
      Map<String, dynamic> json) {
    return UpdateShipmentFulfillStatusPostRequest(
      fulfillstatus: json['fulfillstatus'] == null
          ? null
          : (json['fulfillstatus'] as String),
      shipmentid:
          json['shipmentid'] == null ? null : (json['shipmentid'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'fulfillstatus': fulfillstatus,
      'shipmentid': shipmentid,
    };
  }

  UpdateShipmentFulfillStatusPostRequest copyWith({
    String? fulfillstatus,
    int? shipmentid,
  }) {
    return UpdateShipmentFulfillStatusPostRequest(
      fulfillstatus: fulfillstatus ?? this.fulfillstatus,
      shipmentid: shipmentid ?? this.shipmentid,
    );
  }

  @override
  List<Object?> get props {
    return [
      fulfillstatus,
      shipmentid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
