import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class UpdateCustomerBlockedNotificationPostRequest extends Equatable {
  const UpdateCustomerBlockedNotificationPostRequest({
    this.customerId,
    this.ShipmentStatusId,
  });

  final int? customerId;

  final int? ShipmentStatusId;

  static UpdateCustomerBlockedNotificationPostRequest fromJson(
      Map<String, dynamic> json) {
    return UpdateCustomerBlockedNotificationPostRequest(
      customerId:
          json['customerId'] == null ? null : (json['customerId'] as int),
      ShipmentStatusId: json['ShipmentStatusId'] == null
          ? null
          : (json['ShipmentStatusId'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'customerId': customerId,
      'ShipmentStatusId': ShipmentStatusId,
    };
  }

  UpdateCustomerBlockedNotificationPostRequest copyWith({
    int? customerId,
    int? ShipmentStatusId,
  }) {
    return UpdateCustomerBlockedNotificationPostRequest(
      customerId: customerId ?? this.customerId,
      ShipmentStatusId: ShipmentStatusId ?? this.ShipmentStatusId,
    );
  }

  @override
  List<Object?> get props {
    return [
      customerId,
      ShipmentStatusId,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
