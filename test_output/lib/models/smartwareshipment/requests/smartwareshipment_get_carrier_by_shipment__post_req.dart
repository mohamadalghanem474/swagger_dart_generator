import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetCarrierByShipmentPostRequest extends Equatable {
  const GetCarrierByShipmentPostRequest({this.shipmentid});

  final int? shipmentid;

  static GetCarrierByShipmentPostRequest fromJson(Map<String, dynamic> json) {
    return GetCarrierByShipmentPostRequest(
        shipmentid:
            json['shipmentid'] == null ? null : (json['shipmentid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'shipmentid': shipmentid};
  }

  GetCarrierByShipmentPostRequest copyWith({int? shipmentid}) {
    return GetCarrierByShipmentPostRequest(
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
