import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class FailedConnectorsRequestsGetRequest extends Equatable {
  const FailedConnectorsRequestsGetRequest({
    this.carrierid,
    this.carriersystemname,
    this.externalid,
    this.receiventname,
    this.receiventphone,
    this.warehousename,
    this.countryid,
    this.stateprovinceid,
    this.createdfromutc,
    this.createdtoutc,
    this.pageindex,
    this.pagesize,
  });

  final int? carrierid;

  final String? carriersystemname;

  final String? externalid;

  final String? receiventname;

  final String? receiventphone;

  final String? warehousename;

  final int? countryid;

  final int? stateprovinceid;

  final String? createdfromutc;

  final String? createdtoutc;

  final int? pageindex;

  final int? pagesize;

  static FailedConnectorsRequestsGetRequest fromJson(
      Map<String, dynamic> json) {
    return FailedConnectorsRequestsGetRequest(
      carrierid: json['carrierid'] == null ? null : (json['carrierid'] as int),
      carriersystemname: json['carriersystemname'] == null
          ? null
          : (json['carriersystemname'] as String),
      externalid:
          json['externalid'] == null ? null : (json['externalid'] as String),
      receiventname: json['receiventname'] == null
          ? null
          : (json['receiventname'] as String),
      receiventphone: json['receiventphone'] == null
          ? null
          : (json['receiventphone'] as String),
      warehousename: json['warehousename'] == null
          ? null
          : (json['warehousename'] as String),
      countryid: json['countryid'] == null ? null : (json['countryid'] as int),
      stateprovinceid: json['stateprovinceid'] == null
          ? null
          : (json['stateprovinceid'] as int),
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
      'carrierid': carrierid,
      'carriersystemname': carriersystemname,
      'externalid': externalid,
      'receiventname': receiventname,
      'receiventphone': receiventphone,
      'warehousename': warehousename,
      'countryid': countryid,
      'stateprovinceid': stateprovinceid,
      'createdfromutc': createdfromutc,
      'createdtoutc': createdtoutc,
      'pageindex': pageindex,
      'pagesize': pagesize,
    };
  }

  FailedConnectorsRequestsGetRequest copyWith({
    int? carrierid,
    String? carriersystemname,
    String? externalid,
    String? receiventname,
    String? receiventphone,
    String? warehousename,
    int? countryid,
    int? stateprovinceid,
    String? createdfromutc,
    String? createdtoutc,
    int? pageindex,
    int? pagesize,
  }) {
    return FailedConnectorsRequestsGetRequest(
      carrierid: carrierid ?? this.carrierid,
      carriersystemname: carriersystemname ?? this.carriersystemname,
      externalid: externalid ?? this.externalid,
      receiventname: receiventname ?? this.receiventname,
      receiventphone: receiventphone ?? this.receiventphone,
      warehousename: warehousename ?? this.warehousename,
      countryid: countryid ?? this.countryid,
      stateprovinceid: stateprovinceid ?? this.stateprovinceid,
      createdfromutc: createdfromutc ?? this.createdfromutc,
      createdtoutc: createdtoutc ?? this.createdtoutc,
      pageindex: pageindex ?? this.pageindex,
      pagesize: pagesize ?? this.pagesize,
    );
  }

  @override
  List<Object?> get props {
    return [
      carrierid,
      carriersystemname,
      externalid,
      receiventname,
      receiventphone,
      warehousename,
      countryid,
      stateprovinceid,
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
