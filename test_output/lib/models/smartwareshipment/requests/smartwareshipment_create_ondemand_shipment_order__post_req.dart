import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CreateOndemandShipmentOrderPostRequest extends Equatable {
  const CreateOndemandShipmentOrderPostRequest({
    this.CardNumber,
    this.CardCVV,
    this.CardType,
    this.CardName,
    this.CardExpirationMonth,
    this.CardExpirationYear,
    this.RedirectUrl,
    this.SuccessUrl,
    this.CancelUrl,
    this.PaymentMethodSystemName,
    this.shipmentid,
  });

  final String? CardNumber;

  final String? CardCVV;

  final String? CardType;

  final String? CardName;

  final int? CardExpirationMonth;

  final int? CardExpirationYear;

  final String? RedirectUrl;

  final String? SuccessUrl;

  final String? CancelUrl;

  final String? PaymentMethodSystemName;

  final int? shipmentid;

  static CreateOndemandShipmentOrderPostRequest fromJson(
      Map<String, dynamic> json) {
    return CreateOndemandShipmentOrderPostRequest(
      CardNumber:
          json['CardNumber'] == null ? null : (json['CardNumber'] as String),
      CardCVV: json['CardCVV'] == null ? null : (json['CardCVV'] as String),
      CardType: json['CardType'] == null ? null : (json['CardType'] as String),
      CardName: json['CardName'] == null ? null : (json['CardName'] as String),
      CardExpirationMonth: json['CardExpirationMonth'] == null
          ? null
          : (json['CardExpirationMonth'] as int),
      CardExpirationYear: json['CardExpirationYear'] == null
          ? null
          : (json['CardExpirationYear'] as int),
      RedirectUrl:
          json['RedirectUrl'] == null ? null : (json['RedirectUrl'] as String),
      SuccessUrl:
          json['SuccessUrl'] == null ? null : (json['SuccessUrl'] as String),
      CancelUrl:
          json['CancelUrl'] == null ? null : (json['CancelUrl'] as String),
      PaymentMethodSystemName: json['PaymentMethodSystemName'] == null
          ? null
          : (json['PaymentMethodSystemName'] as String),
      shipmentid:
          json['shipmentid'] == null ? null : (json['shipmentid'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'CardNumber': CardNumber,
      'CardCVV': CardCVV,
      'CardType': CardType,
      'CardName': CardName,
      'CardExpirationMonth': CardExpirationMonth,
      'CardExpirationYear': CardExpirationYear,
      'RedirectUrl': RedirectUrl,
      'SuccessUrl': SuccessUrl,
      'CancelUrl': CancelUrl,
      'PaymentMethodSystemName': PaymentMethodSystemName,
      'shipmentid': shipmentid,
    };
  }

  CreateOndemandShipmentOrderPostRequest copyWith({
    String? CardNumber,
    String? CardCVV,
    String? CardType,
    String? CardName,
    int? CardExpirationMonth,
    int? CardExpirationYear,
    String? RedirectUrl,
    String? SuccessUrl,
    String? CancelUrl,
    String? PaymentMethodSystemName,
    int? shipmentid,
  }) {
    return CreateOndemandShipmentOrderPostRequest(
      CardNumber: CardNumber ?? this.CardNumber,
      CardCVV: CardCVV ?? this.CardCVV,
      CardType: CardType ?? this.CardType,
      CardName: CardName ?? this.CardName,
      CardExpirationMonth: CardExpirationMonth ?? this.CardExpirationMonth,
      CardExpirationYear: CardExpirationYear ?? this.CardExpirationYear,
      RedirectUrl: RedirectUrl ?? this.RedirectUrl,
      SuccessUrl: SuccessUrl ?? this.SuccessUrl,
      CancelUrl: CancelUrl ?? this.CancelUrl,
      PaymentMethodSystemName:
          PaymentMethodSystemName ?? this.PaymentMethodSystemName,
      shipmentid: shipmentid ?? this.shipmentid,
    );
  }

  @override
  List<Object?> get props {
    return [
      CardNumber,
      CardCVV,
      CardType,
      CardName,
      CardExpirationMonth,
      CardExpirationYear,
      RedirectUrl,
      SuccessUrl,
      CancelUrl,
      PaymentMethodSystemName,
      shipmentid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
