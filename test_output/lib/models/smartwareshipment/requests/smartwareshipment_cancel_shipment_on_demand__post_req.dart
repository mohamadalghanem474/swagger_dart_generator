import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CancelShipmentOnDemandPostRequest extends Equatable {
  const CancelShipmentOnDemandPostRequest({this.shipmentid});

  final int? shipmentid;

  static CancelShipmentOnDemandPostRequest fromJson(Map<String, dynamic> json) {
    return CancelShipmentOnDemandPostRequest(
        shipmentid:
            json['shipmentid'] == null ? null : (json['shipmentid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'shipmentid': shipmentid};
  }

  CancelShipmentOnDemandPostRequest copyWith({int? shipmentid}) {
    return CancelShipmentOnDemandPostRequest(
        shipmentid: shipmentid ?? this.shipmentid);
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
