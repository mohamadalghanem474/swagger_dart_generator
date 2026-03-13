import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CreateShipmentCodCollectionPostRequest extends Equatable {
  const CreateShipmentCodCollectionPostRequest({
    this.NotCllectedNote,
    this.CollectedAmount,
    this.CollectingType,
    this.shipmentid,
  });

  final String? NotCllectedNote;

  final double? CollectedAmount;

  final String? CollectingType;

  final int? shipmentid;

  static CreateShipmentCodCollectionPostRequest fromJson(
      Map<String, dynamic> json) {
    return CreateShipmentCodCollectionPostRequest(
      NotCllectedNote: json['NotCllectedNote'] == null
          ? null
          : (json['NotCllectedNote'] as String),
      CollectedAmount: json['CollectedAmount'] == null
          ? null
          : (json['CollectedAmount'] as double),
      CollectingType: json['CollectingType'] == null
          ? null
          : (json['CollectingType'] as String),
      shipmentid:
          json['shipmentid'] == null ? null : (json['shipmentid'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'NotCllectedNote': NotCllectedNote,
      'CollectedAmount': CollectedAmount,
      'CollectingType': CollectingType,
      'shipmentid': shipmentid,
    };
  }

  CreateShipmentCodCollectionPostRequest copyWith({
    String? NotCllectedNote,
    double? CollectedAmount,
    String? CollectingType,
    int? shipmentid,
  }) {
    return CreateShipmentCodCollectionPostRequest(
      NotCllectedNote: NotCllectedNote ?? this.NotCllectedNote,
      CollectedAmount: CollectedAmount ?? this.CollectedAmount,
      CollectingType: CollectingType ?? this.CollectingType,
      shipmentid: shipmentid ?? this.shipmentid,
    );
  }

  @override
  List<Object?> get props {
    return [
      NotCllectedNote,
      CollectedAmount,
      CollectingType,
      shipmentid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
