import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class FuelListGetRequest extends Equatable {
  const FuelListGetRequest({
    this.vehicleid,
    this.vendorid,
    this.platenumber,
    this.pageindex,
    this.pagesize,
  });

  final int? vehicleid;

  final int? vendorid;

  final String? platenumber;

  final int? pageindex;

  final int? pagesize;

  static FuelListGetRequest fromJson(Map<String, dynamic> json) {
    return FuelListGetRequest(
      vehicleid: json['vehicleid'] == null ? null : (json['vehicleid'] as int),
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
      'vendorid': vendorid,
      'platenumber': platenumber,
      'pageindex': pageindex,
      'pagesize': pagesize,
    };
  }

  FuelListGetRequest copyWith({
    int? vehicleid,
    int? vendorid,
    String? platenumber,
    int? pageindex,
    int? pagesize,
  }) {
    return FuelListGetRequest(
      vehicleid: vehicleid ?? this.vehicleid,
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
