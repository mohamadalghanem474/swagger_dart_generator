import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ReturnShipmentListGetRequest extends Equatable {
  const ReturnShipmentListGetRequest({
    this.vendorid,
    this.warehouseid,
    this.shipmentstatusid,
    this.packagetypeid,
    this.carrierid,
    this.shippingcountryid,
    this.shippingstateid,
    this.shippingcounty,
    this.shippingcity,
    this.trackingnumber,
    this.createdfromutc,
    this.createdtoutc,
    this.pageindex,
    this.pagesize,
  });

  final int? vendorid;

  final int? warehouseid;

  final int? shipmentstatusid;

  final int? packagetypeid;

  final int? carrierid;

  final int? shippingcountryid;

  final int? shippingstateid;

  final String? shippingcounty;

  final String? shippingcity;

  final String? trackingnumber;

  final String? createdfromutc;

  final String? createdtoutc;

  final int? pageindex;

  final int? pagesize;

  static ReturnShipmentListGetRequest fromJson(Map<String, dynamic> json) {
    return ReturnShipmentListGetRequest(
      vendorid: json['vendorid'] == null ? null : (json['vendorid'] as int),
      warehouseid:
          json['warehouseid'] == null ? null : (json['warehouseid'] as int),
      shipmentstatusid: json['shipmentstatusid'] == null
          ? null
          : (json['shipmentstatusid'] as int),
      packagetypeid:
          json['packagetypeid'] == null ? null : (json['packagetypeid'] as int),
      carrierid: json['carrierid'] == null ? null : (json['carrierid'] as int),
      shippingcountryid: json['shippingcountryid'] == null
          ? null
          : (json['shippingcountryid'] as int),
      shippingstateid: json['shippingstateid'] == null
          ? null
          : (json['shippingstateid'] as int),
      shippingcounty: json['shippingcounty'] == null
          ? null
          : (json['shippingcounty'] as String),
      shippingcity: json['shippingcity'] == null
          ? null
          : (json['shippingcity'] as String),
      trackingnumber: json['trackingnumber'] == null
          ? null
          : (json['trackingnumber'] as String),
      createdfromutc: json['createdfromutc'] == null
          ? null
          : (json['createdfromutc'] as String),
      createdtoutc: json['createdtoutc'] == null
          ? null
          : (json['createdtoutc'] as String),
      pageindex: json['pageindex'] == null ? null : (json['pageindex'] as int),
      pagesize: json['pagesize'] == null ? null : (json['pagesize'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'vendorid': vendorid,
      'warehouseid': warehouseid,
      'shipmentstatusid': shipmentstatusid,
      'packagetypeid': packagetypeid,
      'carrierid': carrierid,
      'shippingcountryid': shippingcountryid,
      'shippingstateid': shippingstateid,
      'shippingcounty': shippingcounty,
      'shippingcity': shippingcity,
      'trackingnumber': trackingnumber,
      'createdfromutc': createdfromutc,
      'createdtoutc': createdtoutc,
      'pageindex': pageindex,
      'pagesize': pagesize,
    };
  }

  ReturnShipmentListGetRequest copyWith({
    int? vendorid,
    int? warehouseid,
    int? shipmentstatusid,
    int? packagetypeid,
    int? carrierid,
    int? shippingcountryid,
    int? shippingstateid,
    String? shippingcounty,
    String? shippingcity,
    String? trackingnumber,
    String? createdfromutc,
    String? createdtoutc,
    int? pageindex,
    int? pagesize,
  }) {
    return ReturnShipmentListGetRequest(
      vendorid: vendorid ?? this.vendorid,
      warehouseid: warehouseid ?? this.warehouseid,
      shipmentstatusid: shipmentstatusid ?? this.shipmentstatusid,
      packagetypeid: packagetypeid ?? this.packagetypeid,
      carrierid: carrierid ?? this.carrierid,
      shippingcountryid: shippingcountryid ?? this.shippingcountryid,
      shippingstateid: shippingstateid ?? this.shippingstateid,
      shippingcounty: shippingcounty ?? this.shippingcounty,
      shippingcity: shippingcity ?? this.shippingcity,
      trackingnumber: trackingnumber ?? this.trackingnumber,
      createdfromutc: createdfromutc ?? this.createdfromutc,
      createdtoutc: createdtoutc ?? this.createdtoutc,
      pageindex: pageindex ?? this.pageindex,
      pagesize: pagesize ?? this.pagesize,
    );
  }

  @override
  List<Object?> get props {
    return [
      vendorid,
      warehouseid,
      shipmentstatusid,
      packagetypeid,
      carrierid,
      shippingcountryid,
      shippingstateid,
      shippingcounty,
      shippingcity,
      trackingnumber,
      createdfromutc,
      createdtoutc,
      pageindex,
      pagesize,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
