import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetShippingOptionsPostResponse extends Equatable {
  const GetShippingOptionsPostResponse({
    this.shipmentId,
    this.CODCurrency,
    this.COdCurrency2,
    this.CODAmount2,
    this.codSubAmount,
    this.additionalFees,
  });

  final int? shipmentId;

  final String? CODCurrency;

  final String? COdCurrency2;

  final double? CODAmount2;

  final double? codSubAmount;

  final double? additionalFees;

  static GetShippingOptionsPostResponse fromJson(Map<String, dynamic> json) {
    return GetShippingOptionsPostResponse(
      shipmentId:
          json['shipmentId'] == null ? null : (json['shipmentId'] as int),
      CODCurrency:
          json['CODCurrency'] == null ? null : (json['CODCurrency'] as String),
      COdCurrency2: json['COdCurrency2'] == null
          ? null
          : (json['COdCurrency2'] as String),
      CODAmount2:
          json['CODAmount2'] == null ? null : (json['CODAmount2'] as double),
      codSubAmount: json['codSubAmount'] == null
          ? null
          : (json['codSubAmount'] as double),
      additionalFees: json['additionalFees'] == null
          ? null
          : (json['additionalFees'] as double),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'shipmentId': shipmentId,
      'CODCurrency': CODCurrency,
      'COdCurrency2': COdCurrency2,
      'CODAmount2': CODAmount2,
      'codSubAmount': codSubAmount,
      'additionalFees': additionalFees,
    };
  }

  GetShippingOptionsPostResponse copyWith({
    int? shipmentId,
    String? CODCurrency,
    String? COdCurrency2,
    double? CODAmount2,
    double? codSubAmount,
    double? additionalFees,
  }) {
    return GetShippingOptionsPostResponse(
      shipmentId: shipmentId ?? this.shipmentId,
      CODCurrency: CODCurrency ?? this.CODCurrency,
      COdCurrency2: COdCurrency2 ?? this.COdCurrency2,
      CODAmount2: CODAmount2 ?? this.CODAmount2,
      codSubAmount: codSubAmount ?? this.codSubAmount,
      additionalFees: additionalFees ?? this.additionalFees,
    );
  }

  @override
  List<Object?> get props {
    return [
      shipmentId,
      CODCurrency,
      COdCurrency2,
      CODAmount2,
      codSubAmount,
      additionalFees,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
