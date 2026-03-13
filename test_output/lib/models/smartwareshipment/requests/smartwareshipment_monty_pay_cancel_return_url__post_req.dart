import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class MontyPayCancelReturnUrlPostRequest extends Equatable {
  const MontyPayCancelReturnUrlPostRequest({
    this.orderguid,
    this.shipmentid,
  });

  final String? orderguid;

  final int? shipmentid;

  static MontyPayCancelReturnUrlPostRequest fromJson(
      Map<String, dynamic> json) {
    return MontyPayCancelReturnUrlPostRequest(
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

  MontyPayCancelReturnUrlPostRequest copyWith({
    String? orderguid,
    int? shipmentid,
  }) {
    return MontyPayCancelReturnUrlPostRequest(
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
