import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CreateBusinessShipmentOrderPostRequest extends Equatable {
  const CreateBusinessShipmentOrderPostRequest({this.shipmentid});

  final int? shipmentid;

  static CreateBusinessShipmentOrderPostRequest fromJson(
      Map<String, dynamic> json) {
    return CreateBusinessShipmentOrderPostRequest(
        shipmentid:
            json['shipmentid'] == null ? null : (json['shipmentid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'shipmentid': shipmentid};
  }

  CreateBusinessShipmentOrderPostRequest copyWith({int? shipmentid}) {
    return CreateBusinessShipmentOrderPostRequest(
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
