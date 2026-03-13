import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class VendorAccountListGetRequest extends Equatable {
  const VendorAccountListGetRequest({
    this.pageindex,
    this.pagesize,
    this.searchcustomerid,
    this.searchvendorid,
    this.walletid,
  });

  final int? pageindex;

  final int? pagesize;

  final int? searchcustomerid;

  final int? searchvendorid;

  final int? walletid;

  static VendorAccountListGetRequest fromJson(Map<String, dynamic> json) {
    return VendorAccountListGetRequest(
      pageindex: json['pageindex'] == null ? null : (json['pageindex'] as int),
      pagesize: json['pagesize'] == null ? null : (json['pagesize'] as int),
      searchcustomerid: json['searchcustomerid'] == null
          ? null
          : (json['searchcustomerid'] as int),
      searchvendorid: json['searchvendorid'] == null
          ? null
          : (json['searchvendorid'] as int),
      walletid: json['walletid'] == null ? null : (json['walletid'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'pageindex': pageindex,
      'pagesize': pagesize,
      'searchcustomerid': searchcustomerid,
      'searchvendorid': searchvendorid,
      'walletid': walletid,
    };
  }

  VendorAccountListGetRequest copyWith({
    int? pageindex,
    int? pagesize,
    int? searchcustomerid,
    int? searchvendorid,
    int? walletid,
  }) {
    return VendorAccountListGetRequest(
      pageindex: pageindex ?? this.pageindex,
      pagesize: pagesize ?? this.pagesize,
      searchcustomerid: searchcustomerid ?? this.searchcustomerid,
      searchvendorid: searchvendorid ?? this.searchvendorid,
      walletid: walletid ?? this.walletid,
    );
  }

  @override
  List<Object?> get props {
    return [
      pageindex,
      pagesize,
      searchcustomerid,
      searchvendorid,
      walletid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
