import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class UpdateM5AZNShipmentEventsPostRequest extends Equatable {
  const UpdateM5AZNShipmentEventsPostRequest({
    this.id,
    this.order_ref,
    this.tracking_id,
    this.current_status,
  });

  final int? id;

  final String? order_ref;

  final String? tracking_id;

  final Map<String, dynamic>? current_status;

  static UpdateM5AZNShipmentEventsPostRequest fromJson(
      Map<String, dynamic> json) {
    return UpdateM5AZNShipmentEventsPostRequest(
      id: json['id'] == null ? null : (json['id'] as int),
      order_ref:
          json['order_ref'] == null ? null : (json['order_ref'] as String),
      tracking_id:
          json['tracking_id'] == null ? null : (json['tracking_id'] as String),
      current_status: json['current_status'] == null
          ? null
          : (json['current_status'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'order_ref': order_ref,
      'tracking_id': tracking_id,
      'current_status': current_status,
    };
  }

  UpdateM5AZNShipmentEventsPostRequest copyWith({
    int? id,
    String? order_ref,
    String? tracking_id,
    Map<String, dynamic>? current_status,
  }) {
    return UpdateM5AZNShipmentEventsPostRequest(
      id: id ?? this.id,
      order_ref: order_ref ?? this.order_ref,
      tracking_id: tracking_id ?? this.tracking_id,
      current_status: current_status ?? this.current_status,
    );
  }

  @override
  List<Object?> get props {
    return [
      id,
      order_ref,
      tracking_id,
      current_status,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
