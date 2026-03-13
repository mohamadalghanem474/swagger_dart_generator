import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetDriverShipmentHistoryListGetRequest extends Equatable {
  const GetDriverShipmentHistoryListGetRequest({
    this.shipmentstatusid,
    this.dropofflocation,
    this.name,
    this.phonenumber,
    this.pageindex,
    this.pagesize,
  });

  final int? shipmentstatusid;

  final String? dropofflocation;

  final String? name;

  final String? phonenumber;

  final int? pageindex;

  final int? pagesize;

  static GetDriverShipmentHistoryListGetRequest fromJson(
      Map<String, dynamic> json) {
    return GetDriverShipmentHistoryListGetRequest(
      shipmentstatusid: json['shipmentstatusid'] == null
          ? null
          : (json['shipmentstatusid'] as int),
      dropofflocation: json['dropofflocation'] == null
          ? null
          : (json['dropofflocation'] as String),
      name: json['name'] == null ? null : (json['name'] as String),
      phonenumber:
          json['phonenumber'] == null ? null : (json['phonenumber'] as String),
      pageindex: json['pageindex'] == null ? null : (json['pageindex'] as int),
      pagesize: json['pagesize'] == null ? null : (json['pagesize'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'shipmentstatusid': shipmentstatusid,
      'dropofflocation': dropofflocation,
      'name': name,
      'phonenumber': phonenumber,
      'pageindex': pageindex,
      'pagesize': pagesize,
    };
  }

  GetDriverShipmentHistoryListGetRequest copyWith({
    int? shipmentstatusid,
    String? dropofflocation,
    String? name,
    String? phonenumber,
    int? pageindex,
    int? pagesize,
  }) {
    return GetDriverShipmentHistoryListGetRequest(
      shipmentstatusid: shipmentstatusid ?? this.shipmentstatusid,
      dropofflocation: dropofflocation ?? this.dropofflocation,
      name: name ?? this.name,
      phonenumber: phonenumber ?? this.phonenumber,
      pageindex: pageindex ?? this.pageindex,
      pagesize: pagesize ?? this.pagesize,
    );
  }

  @override
  List<Object?> get props {
    return [
      shipmentstatusid,
      dropofflocation,
      name,
      phonenumber,
      pageindex,
      pagesize,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
