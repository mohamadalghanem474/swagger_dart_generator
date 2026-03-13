import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ServiceLogsListGetRequest extends Equatable {
  const ServiceLogsListGetRequest({
    this.vehicleid,
    this.servicetypeid,
    this.vendorid,
    this.platenumber,
    this.pageindex,
    this.pagesize,
  });

  final int? vehicleid;

  final int? servicetypeid;

  final int? vendorid;

  final String? platenumber;

  final int? pageindex;

  final int? pagesize;

  static ServiceLogsListGetRequest fromJson(Map<String, dynamic> json) {
    return ServiceLogsListGetRequest(
      vehicleid: json['vehicleid'] == null ? null : (json['vehicleid'] as int),
      servicetypeid:
          json['servicetypeid'] == null ? null : (json['servicetypeid'] as int),
      vendorid: json['vendorid'] == null ? null : (json['vendorid'] as int),
      platenumber:
          json['platenumber'] == null ? null : (json['platenumber'] as String),
      pageindex: json['pageindex'] == null ? null : (json['pageindex'] as int),
      pagesize: json['pagesize'] == null ? null : (json['pagesize'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'vehicleid': vehicleid,
      'servicetypeid': servicetypeid,
      'vendorid': vendorid,
      'platenumber': platenumber,
      'pageindex': pageindex,
      'pagesize': pagesize,
    };
  }

  ServiceLogsListGetRequest copyWith({
    int? vehicleid,
    int? servicetypeid,
    int? vendorid,
    String? platenumber,
    int? pageindex,
    int? pagesize,
  }) {
    return ServiceLogsListGetRequest(
      vehicleid: vehicleid ?? this.vehicleid,
      servicetypeid: servicetypeid ?? this.servicetypeid,
      vendorid: vendorid ?? this.vendorid,
      platenumber: platenumber ?? this.platenumber,
      pageindex: pageindex ?? this.pageindex,
      pagesize: pagesize ?? this.pagesize,
    );
  }

  @override
  List<Object?> get props {
    return [
      vehicleid,
      servicetypeid,
      vendorid,
      platenumber,
      pageindex,
      pagesize,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
