import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class RescheduleShipmentBySubStatusIdPostRequest extends Equatable {
  const RescheduleShipmentBySubStatusIdPostRequest({
    this.carriersubstatusid,
    this.shipmentid,
    this.rescheduledatetime,
    this.note,
    this.ispickup,
    this.isdelivery,
  });

  final int? carriersubstatusid;

  final int? shipmentid;

  final DateTime? rescheduledatetime;

  final String? note;

  final bool? ispickup;

  final bool? isdelivery;

  static RescheduleShipmentBySubStatusIdPostRequest fromJson(
      Map<String, dynamic> json) {
    return RescheduleShipmentBySubStatusIdPostRequest(
      carriersubstatusid: json['carriersubstatusid'] == null
          ? null
          : (json['carriersubstatusid'] as int),
      shipmentid:
          json['shipmentid'] == null ? null : (json['shipmentid'] as int),
      rescheduledatetime: json['rescheduledatetime'] == null
          ? null
          : DateTime.parse((json['rescheduledatetime'] as String)),
      note: json['note'] == null ? null : (json['note'] as String),
      ispickup: json['ispickup'] == null ? null : (json['ispickup'] as bool),
      isdelivery:
          json['isdelivery'] == null ? null : (json['isdelivery'] as bool),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'carriersubstatusid': carriersubstatusid,
      'shipmentid': shipmentid,
      'rescheduledatetime': rescheduledatetime?.toIso8601String(),
      'note': note,
      'ispickup': ispickup,
      'isdelivery': isdelivery,
    };
  }

  RescheduleShipmentBySubStatusIdPostRequest copyWith({
    int? carriersubstatusid,
    int? shipmentid,
    DateTime? rescheduledatetime,
    String? note,
    bool? ispickup,
    bool? isdelivery,
  }) {
    return RescheduleShipmentBySubStatusIdPostRequest(
      carriersubstatusid: carriersubstatusid ?? this.carriersubstatusid,
      shipmentid: shipmentid ?? this.shipmentid,
      rescheduledatetime: rescheduledatetime ?? this.rescheduledatetime,
      note: note ?? this.note,
      ispickup: ispickup ?? this.ispickup,
      isdelivery: isdelivery ?? this.isdelivery,
    );
  }

  @override
  List<Object?> get props {
    return [
      carriersubstatusid,
      shipmentid,
      rescheduledatetime,
      note,
      ispickup,
      isdelivery,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
