import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ListGetRequest extends Equatable {
  const ListGetRequest({this.shipmentid});

  final int? shipmentid;

  static ListGetRequest fromJson(Map<String, dynamic> json) {
    return ListGetRequest(
        shipmentid:
            json['shipmentid'] == null ? null : (json['shipmentid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'shipmentid': shipmentid};
  }

  ListGetRequest copyWith({int? shipmentid}) {
    return ListGetRequest(shipmentid: shipmentid ?? this.shipmentid);
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
