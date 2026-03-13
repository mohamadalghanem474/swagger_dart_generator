import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CostReportsListGetRequest extends Equatable {
  const CostReportsListGetRequest({
    this.vehicleid,
    this.platenumber,
    this.cost,
    this.pageindex,
    this.pagesize,
  });

  final int? vehicleid;

  final String? platenumber;

  final String? cost;

  final int? pageindex;

  final int? pagesize;

  static CostReportsListGetRequest fromJson(Map<String, dynamic> json) {
    return CostReportsListGetRequest(
      vehicleid: json['vehicleid'] == null ? null : (json['vehicleid'] as int),
      platenumber:
          json['platenumber'] == null ? null : (json['platenumber'] as String),
      cost: json['cost'] == null ? null : (json['cost'] as String),
      pageindex: json['pageindex'] == null ? null : (json['pageindex'] as int),
      pagesize: json['pagesize'] == null ? null : (json['pagesize'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'vehicleid': vehicleid,
      'platenumber': platenumber,
      'cost': cost,
      'pageindex': pageindex,
      'pagesize': pagesize,
    };
  }

  CostReportsListGetRequest copyWith({
    int? vehicleid,
    String? platenumber,
    String? cost,
    int? pageindex,
    int? pagesize,
  }) {
    return CostReportsListGetRequest(
      vehicleid: vehicleid ?? this.vehicleid,
      platenumber: platenumber ?? this.platenumber,
      cost: cost ?? this.cost,
      pageindex: pageindex ?? this.pageindex,
      pagesize: pagesize ?? this.pagesize,
    );
  }

  @override
  List<Object?> get props {
    return [
      vehicleid,
      platenumber,
      cost,
      pageindex,
      pagesize,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
