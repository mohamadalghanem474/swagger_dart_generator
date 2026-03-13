import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class DeleteShipmentPostRequest extends Equatable {
  const DeleteShipmentPostRequest({this.shipmentid});

  final int? shipmentid;

  static DeleteShipmentPostRequest fromJson(Map<String, dynamic> json) {
    return DeleteShipmentPostRequest(
        shipmentid:
            json['shipmentid'] == null ? null : (json['shipmentid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'shipmentid': shipmentid};
  }

  DeleteShipmentPostRequest copyWith({int? shipmentid}) {
    return DeleteShipmentPostRequest(shipmentid: shipmentid ?? this.shipmentid);
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
