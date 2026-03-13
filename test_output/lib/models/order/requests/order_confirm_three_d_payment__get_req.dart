import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ConfirmThreeDPaymentGetRequest extends Equatable {
  const ConfirmThreeDPaymentGetRequest({
    this.shipmentid,
    this.orderguid,
  });

  final int? shipmentid;

  final String? orderguid;

  static ConfirmThreeDPaymentGetRequest fromJson(Map<String, dynamic> json) {
    return ConfirmThreeDPaymentGetRequest(
      shipmentid:
          json['shipmentid'] == null ? null : (json['shipmentid'] as int),
      orderguid:
          json['orderguid'] == null ? null : (json['orderguid'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'shipmentid': shipmentid,
      'orderguid': orderguid,
    };
  }

  ConfirmThreeDPaymentGetRequest copyWith({
    int? shipmentid,
    String? orderguid,
  }) {
    return ConfirmThreeDPaymentGetRequest(
      shipmentid: shipmentid ?? this.shipmentid,
      orderguid: orderguid ?? this.orderguid,
    );
  }

  @override
  List<Object?> get props {
    return [
      shipmentid,
      orderguid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
