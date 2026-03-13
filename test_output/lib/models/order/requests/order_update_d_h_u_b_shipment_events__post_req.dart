import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class UpdateDHUBShipmentEventsPostRequest extends Equatable {
  const UpdateDHUBShipmentEventsPostRequest({
    this.OrderId,
    this.DeliveryFees,
    this.OrderStatus,
    this.OrderStatusCode,
    this.Data,
  });

  final int? OrderId;

  final double? DeliveryFees;

  final String? OrderStatus;

  final String? OrderStatusCode;

  final Map<String, dynamic>? Data;

  static UpdateDHUBShipmentEventsPostRequest fromJson(
      Map<String, dynamic> json) {
    return UpdateDHUBShipmentEventsPostRequest(
      OrderId: json['OrderId'] == null ? null : (json['OrderId'] as int),
      DeliveryFees: json['DeliveryFees'] == null
          ? null
          : (json['DeliveryFees'] as double),
      OrderStatus:
          json['OrderStatus'] == null ? null : (json['OrderStatus'] as String),
      OrderStatusCode: json['OrderStatusCode'] == null
          ? null
          : (json['OrderStatusCode'] as String),
      Data:
          json['Data'] == null ? null : (json['Data'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'OrderId': OrderId,
      'DeliveryFees': DeliveryFees,
      'OrderStatus': OrderStatus,
      'OrderStatusCode': OrderStatusCode,
      'Data': Data,
    };
  }

  UpdateDHUBShipmentEventsPostRequest copyWith({
    int? OrderId,
    double? DeliveryFees,
    String? OrderStatus,
    String? OrderStatusCode,
    Map<String, dynamic>? Data,
  }) {
    return UpdateDHUBShipmentEventsPostRequest(
      OrderId: OrderId ?? this.OrderId,
      DeliveryFees: DeliveryFees ?? this.DeliveryFees,
      OrderStatus: OrderStatus ?? this.OrderStatus,
      OrderStatusCode: OrderStatusCode ?? this.OrderStatusCode,
      Data: Data ?? this.Data,
    );
  }

  @override
  List<Object?> get props {
    return [
      OrderId,
      DeliveryFees,
      OrderStatus,
      OrderStatusCode,
      Data,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
