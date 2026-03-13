import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetStatesByCountryIdGetRequest extends Equatable {
  const GetStatesByCountryIdGetRequest({
    this.addselectstateitem,
    this.countryid,
  });

  final bool? addselectstateitem;

  final int? countryid;

  static GetStatesByCountryIdGetRequest fromJson(Map<String, dynamic> json) {
    return GetStatesByCountryIdGetRequest(
      addselectstateitem: json['addselectstateitem'] == null
          ? null
          : (json['addselectstateitem'] as bool),
      countryid: json['countryid'] == null ? null : (json['countryid'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'addselectstateitem': addselectstateitem,
      'countryid': countryid,
    };
  }

  GetStatesByCountryIdGetRequest copyWith({
    bool? addselectstateitem,
    int? countryid,
  }) {
    return GetStatesByCountryIdGetRequest(
      addselectstateitem: addselectstateitem ?? this.addselectstateitem,
      countryid: countryid ?? this.countryid,
    );
  }

  @override
  List<Object?> get props {
    return [
      addselectstateitem,
      countryid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
