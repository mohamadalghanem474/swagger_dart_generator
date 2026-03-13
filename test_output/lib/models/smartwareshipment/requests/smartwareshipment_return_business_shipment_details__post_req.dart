import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ReturnBusinessShipmentDetailsPostRequest extends Equatable {
  const ReturnBusinessShipmentDetailsPostRequest({
    this.productDtos,
    this.ShipmentId,
    this.FromID,
    this.ToID,
  });

  final List<String>? productDtos;

  final int? ShipmentId;

  final int? FromID;

  final int? ToID;

  static ReturnBusinessShipmentDetailsPostRequest fromJson(
      Map<String, dynamic> json) {
    return ReturnBusinessShipmentDetailsPostRequest(
      productDtos: json['productDtos'] == null ? null : json['productDtos'],
      ShipmentId:
          json['ShipmentId'] == null ? null : (json['ShipmentId'] as int),
      FromID: json['FromID'] == null ? null : (json['FromID'] as int),
      ToID: json['ToID'] == null ? null : (json['ToID'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'productDtos': productDtos,
      'ShipmentId': ShipmentId,
      'FromID': FromID,
      'ToID': ToID,
    };
  }

  ReturnBusinessShipmentDetailsPostRequest copyWith({
    List<String>? productDtos,
    int? ShipmentId,
    int? FromID,
    int? ToID,
  }) {
    return ReturnBusinessShipmentDetailsPostRequest(
      productDtos: productDtos ?? this.productDtos,
      ShipmentId: ShipmentId ?? this.ShipmentId,
      FromID: FromID ?? this.FromID,
      ToID: ToID ?? this.ToID,
    );
  }

  @override
  List<Object?> get props {
    return [
      productDtos,
      ShipmentId,
      FromID,
      ToID,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
