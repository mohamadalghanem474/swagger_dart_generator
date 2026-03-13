import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SmartwareOpcSubscriptionConfirmAndPayOrderPostRequest extends Equatable {
  const SmartwareOpcSubscriptionConfirmAndPayOrderPostRequest({
    this.StoreId,
    this.CustomerId,
    this.OrderGuid,
    this.OrderDescription,
    this.IsRecurring,
    this.CurrencyCode,
    this.OrderGuidGeneratedOnUtc,
    this.OrderTotal,
    this.OrderType,
    this.OrderTypeId,
    this.PaymentMethodSystemName,
    this.PurchaseOrderNumber,
    this.CreditCardType,
    this.CreditCardName,
    this.CreditCardNumber,
    this.CreditCardExpireYear,
    this.CreditCardExpireMonth,
    this.CreditCardCvv2,
    this.ICarryRedirectUrl,
    this.InitialOrder,
    this.RecurringCycleLength,
    this.RecurringCyclePeriod,
    this.RecurringTotalCycles,
    this.CustomValues,
    this.redirectto,
    this.selectedmethod,
    this.tovendorid,
    this.ponumber,
  });

  final int? StoreId;

  final int? CustomerId;

  final String? OrderGuid;

  final String? OrderDescription;

  final bool? IsRecurring;

  final String? CurrencyCode;

  final String? OrderGuidGeneratedOnUtc;

  final double? OrderTotal;

  final String? OrderType;

  final int? OrderTypeId;

  final String? PaymentMethodSystemName;

  final String? PurchaseOrderNumber;

  final String? CreditCardType;

  final String? CreditCardName;

  final String? CreditCardNumber;

  final int? CreditCardExpireYear;

  final int? CreditCardExpireMonth;

  final String? CreditCardCvv2;

  final String? ICarryRedirectUrl;

  final Map<String, dynamic>? InitialOrder;

  final int? RecurringCycleLength;

  final String? RecurringCyclePeriod;

  final int? RecurringTotalCycles;

  final Map<String, dynamic>? CustomValues;

  final String? redirectto;

  final String? selectedmethod;

  final int? tovendorid;

  final int? ponumber;

  static SmartwareOpcSubscriptionConfirmAndPayOrderPostRequest fromJson(
      Map<String, dynamic> json) {
    return SmartwareOpcSubscriptionConfirmAndPayOrderPostRequest(
      StoreId: json['StoreId'] == null ? null : (json['StoreId'] as int),
      CustomerId:
          json['CustomerId'] == null ? null : (json['CustomerId'] as int),
      OrderGuid:
          json['OrderGuid'] == null ? null : (json['OrderGuid'] as String),
      OrderDescription: json['OrderDescription'] == null
          ? null
          : (json['OrderDescription'] as String),
      IsRecurring:
          json['IsRecurring'] == null ? null : (json['IsRecurring'] as bool),
      CurrencyCode: json['CurrencyCode'] == null
          ? null
          : (json['CurrencyCode'] as String),
      OrderGuidGeneratedOnUtc: json['OrderGuidGeneratedOnUtc'] == null
          ? null
          : (json['OrderGuidGeneratedOnUtc'] as String),
      OrderTotal:
          json['OrderTotal'] == null ? null : (json['OrderTotal'] as double),
      OrderType:
          json['OrderType'] == null ? null : (json['OrderType'] as String),
      OrderTypeId:
          json['OrderTypeId'] == null ? null : (json['OrderTypeId'] as int),
      PaymentMethodSystemName: json['PaymentMethodSystemName'] == null
          ? null
          : (json['PaymentMethodSystemName'] as String),
      PurchaseOrderNumber: json['PurchaseOrderNumber'] == null
          ? null
          : (json['PurchaseOrderNumber'] as String),
      CreditCardType: json['CreditCardType'] == null
          ? null
          : (json['CreditCardType'] as String),
      CreditCardName: json['CreditCardName'] == null
          ? null
          : (json['CreditCardName'] as String),
      CreditCardNumber: json['CreditCardNumber'] == null
          ? null
          : (json['CreditCardNumber'] as String),
      CreditCardExpireYear: json['CreditCardExpireYear'] == null
          ? null
          : (json['CreditCardExpireYear'] as int),
      CreditCardExpireMonth: json['CreditCardExpireMonth'] == null
          ? null
          : (json['CreditCardExpireMonth'] as int),
      CreditCardCvv2: json['CreditCardCvv2'] == null
          ? null
          : (json['CreditCardCvv2'] as String),
      ICarryRedirectUrl: json['ICarryRedirectUrl'] == null
          ? null
          : (json['ICarryRedirectUrl'] as String),
      InitialOrder: json['InitialOrder'] == null
          ? null
          : (json['InitialOrder'] as Map<String, dynamic>),
      RecurringCycleLength: json['RecurringCycleLength'] == null
          ? null
          : (json['RecurringCycleLength'] as int),
      RecurringCyclePeriod: json['RecurringCyclePeriod'] == null
          ? null
          : (json['RecurringCyclePeriod'] as String),
      RecurringTotalCycles: json['RecurringTotalCycles'] == null
          ? null
          : (json['RecurringTotalCycles'] as int),
      CustomValues: json['CustomValues'] == null
          ? null
          : (json['CustomValues'] as Map<String, dynamic>),
      redirectto:
          json['redirectto'] == null ? null : (json['redirectto'] as String),
      selectedmethod: json['selectedmethod'] == null
          ? null
          : (json['selectedmethod'] as String),
      tovendorid:
          json['tovendorid'] == null ? null : (json['tovendorid'] as int),
      ponumber: json['ponumber'] == null ? null : (json['ponumber'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'StoreId': StoreId,
      'CustomerId': CustomerId,
      'OrderGuid': OrderGuid,
      'OrderDescription': OrderDescription,
      'IsRecurring': IsRecurring,
      'CurrencyCode': CurrencyCode,
      'OrderGuidGeneratedOnUtc': OrderGuidGeneratedOnUtc,
      'OrderTotal': OrderTotal,
      'OrderType': OrderType,
      'OrderTypeId': OrderTypeId,
      'PaymentMethodSystemName': PaymentMethodSystemName,
      'PurchaseOrderNumber': PurchaseOrderNumber,
      'CreditCardType': CreditCardType,
      'CreditCardName': CreditCardName,
      'CreditCardNumber': CreditCardNumber,
      'CreditCardExpireYear': CreditCardExpireYear,
      'CreditCardExpireMonth': CreditCardExpireMonth,
      'CreditCardCvv2': CreditCardCvv2,
      'ICarryRedirectUrl': ICarryRedirectUrl,
      'InitialOrder': InitialOrder,
      'RecurringCycleLength': RecurringCycleLength,
      'RecurringCyclePeriod': RecurringCyclePeriod,
      'RecurringTotalCycles': RecurringTotalCycles,
      'CustomValues': CustomValues,
      'redirectto': redirectto,
      'selectedmethod': selectedmethod,
      'tovendorid': tovendorid,
      'ponumber': ponumber,
    };
  }

  SmartwareOpcSubscriptionConfirmAndPayOrderPostRequest copyWith({
    int? StoreId,
    int? CustomerId,
    String? OrderGuid,
    String? OrderDescription,
    bool? IsRecurring,
    String? CurrencyCode,
    String? OrderGuidGeneratedOnUtc,
    double? OrderTotal,
    String? OrderType,
    int? OrderTypeId,
    String? PaymentMethodSystemName,
    String? PurchaseOrderNumber,
    String? CreditCardType,
    String? CreditCardName,
    String? CreditCardNumber,
    int? CreditCardExpireYear,
    int? CreditCardExpireMonth,
    String? CreditCardCvv2,
    String? ICarryRedirectUrl,
    Map<String, dynamic>? InitialOrder,
    int? RecurringCycleLength,
    String? RecurringCyclePeriod,
    int? RecurringTotalCycles,
    Map<String, dynamic>? CustomValues,
    String? redirectto,
    String? selectedmethod,
    int? tovendorid,
    int? ponumber,
  }) {
    return SmartwareOpcSubscriptionConfirmAndPayOrderPostRequest(
      StoreId: StoreId ?? this.StoreId,
      CustomerId: CustomerId ?? this.CustomerId,
      OrderGuid: OrderGuid ?? this.OrderGuid,
      OrderDescription: OrderDescription ?? this.OrderDescription,
      IsRecurring: IsRecurring ?? this.IsRecurring,
      CurrencyCode: CurrencyCode ?? this.CurrencyCode,
      OrderGuidGeneratedOnUtc:
          OrderGuidGeneratedOnUtc ?? this.OrderGuidGeneratedOnUtc,
      OrderTotal: OrderTotal ?? this.OrderTotal,
      OrderType: OrderType ?? this.OrderType,
      OrderTypeId: OrderTypeId ?? this.OrderTypeId,
      PaymentMethodSystemName:
          PaymentMethodSystemName ?? this.PaymentMethodSystemName,
      PurchaseOrderNumber: PurchaseOrderNumber ?? this.PurchaseOrderNumber,
      CreditCardType: CreditCardType ?? this.CreditCardType,
      CreditCardName: CreditCardName ?? this.CreditCardName,
      CreditCardNumber: CreditCardNumber ?? this.CreditCardNumber,
      CreditCardExpireYear: CreditCardExpireYear ?? this.CreditCardExpireYear,
      CreditCardExpireMonth:
          CreditCardExpireMonth ?? this.CreditCardExpireMonth,
      CreditCardCvv2: CreditCardCvv2 ?? this.CreditCardCvv2,
      ICarryRedirectUrl: ICarryRedirectUrl ?? this.ICarryRedirectUrl,
      InitialOrder: InitialOrder ?? this.InitialOrder,
      RecurringCycleLength: RecurringCycleLength ?? this.RecurringCycleLength,
      RecurringCyclePeriod: RecurringCyclePeriod ?? this.RecurringCyclePeriod,
      RecurringTotalCycles: RecurringTotalCycles ?? this.RecurringTotalCycles,
      CustomValues: CustomValues ?? this.CustomValues,
      redirectto: redirectto ?? this.redirectto,
      selectedmethod: selectedmethod ?? this.selectedmethod,
      tovendorid: tovendorid ?? this.tovendorid,
      ponumber: ponumber ?? this.ponumber,
    );
  }

  @override
  List<Object?> get props {
    return [
      StoreId,
      CustomerId,
      OrderGuid,
      OrderDescription,
      IsRecurring,
      CurrencyCode,
      OrderGuidGeneratedOnUtc,
      OrderTotal,
      OrderType,
      OrderTypeId,
      PaymentMethodSystemName,
      PurchaseOrderNumber,
      CreditCardType,
      CreditCardName,
      CreditCardNumber,
      CreditCardExpireYear,
      CreditCardExpireMonth,
      CreditCardCvv2,
      ICarryRedirectUrl,
      InitialOrder,
      RecurringCycleLength,
      RecurringCyclePeriod,
      RecurringTotalCycles,
      CustomValues,
      redirectto,
      selectedmethod,
      tovendorid,
      ponumber,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
