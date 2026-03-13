import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class MontyPaySuccessReturnUrlPostRequest extends Equatable {
  const MontyPaySuccessReturnUrlPostRequest({
    this.orderguid,
    this.shipmentid,
  });

  final String? orderguid;

  final int? shipmentid;

  static MontyPaySuccessReturnUrlPostRequest fromJson(
      Map<String, dynamic> json) {
    return MontyPaySuccessReturnUrlPostRequest(
      orderguid:
          json['orderguid'] == null ? null : (json['orderguid'] as String),
      shipmentid:
          json['shipmentid'] == null ? null : (json['shipmentid'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'orderguid': orderguid,
      'shipmentid': shipmentid,
    };
  }

  MontyPaySuccessReturnUrlPostRequest copyWith({
    String? orderguid,
    int? shipmentid,
  }) {
    return MontyPaySuccessReturnUrlPostRequest(
      orderguid: orderguid ?? this.orderguid,
      shipmentid: shipmentid ?? this.shipmentid,
    );
  }

  @override
  List<Object?> get props {
    return [
      orderguid,
      shipmentid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
