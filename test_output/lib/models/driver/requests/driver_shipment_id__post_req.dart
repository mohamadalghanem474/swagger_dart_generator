import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ShipmentIdPostRequest extends Equatable {
  const ShipmentIdPostRequest({
    this.shipmentid,
    this.notes,
  });

  final int? shipmentid;

  final String? notes;

  static ShipmentIdPostRequest fromJson(Map<String, dynamic> json) {
    return ShipmentIdPostRequest(
      shipmentid:
          json['shipmentid'] == null ? null : (json['shipmentid'] as int),
      notes: json['notes'] == null ? null : (json['notes'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'shipmentid': shipmentid,
      'notes': notes,
    };
  }

  ShipmentIdPostRequest copyWith({
    int? shipmentid,
    String? notes,
  }) {
    return ShipmentIdPostRequest(
      shipmentid: shipmentid ?? this.shipmentid,
      notes: notes ?? this.notes,
    );
  }

  @override
  List<Object?> get props {
    return [
      shipmentid,
      notes,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
