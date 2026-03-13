import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CancelShipmentPostRequest extends Equatable {
  const CancelShipmentPostRequest({this.shipmentid});

  final int? shipmentid;

  static CancelShipmentPostRequest fromJson(Map<String, dynamic> json) {
    return CancelShipmentPostRequest(
        shipmentid:
            json['shipmentid'] == null ? null : (json['shipmentid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'shipmentid': shipmentid};
  }

  CancelShipmentPostRequest copyWith({int? shipmentid}) {
    return CancelShipmentPostRequest(shipmentid: shipmentid ?? this.shipmentid);
  }

  @override
  List<Object?> get props {
    return [shipmentid];
  }

  @override
  bool get stringify {
    return true;
  }
}
