import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ConfirmPaymentPostRequest extends Equatable {
  const ConfirmPaymentPostRequest({
    this.IsSettled,
    this.SettledTimeStamp,
    this.ParcelDescription,
    this.ParcelQuantity,
    this.IsCOD,
    this.IsPaidByLink,
    this.PaidByLinkAmount,
    this.IsCODPaidByCoupon,
    this.CouponQuantity,
    this.CODAmount,
    this.CODAmount2,
    this.CODSubAmount,
    this.PackageValue,
    this.PackageCurrency,
    this.AdditionalFees,
    this.COdCurrency,
    this.COdCurrency2,
    this.PONumber,
    this.OrderGuid,
    this.StoreId,
    this.CustomerId,
    this.VendorId,
    this.BillingAddressId,
    this.ShippingAddressId,
    this.PickupAddressId,
    this.PickupInStore,
    this.OrderStatusId,
    this.OrderTypeId,
    this.ShippingStatusId,
    this.PaymentStatusId,
    this.PaymentMethodSystemName,
    this.CustomerCurrencyCode,
    this.CurrencyRate,
    this.CustomerTaxDisplayTypeId,
    this.VatNumber,
    this.OrderSubtotalInclTax,
    this.OrderSubtotalExclTax,
    this.OrderSubTotalDiscountInclTax,
    this.OrderSubTotalDiscountExclTax,
    this.OrderShippingInclTax,
    this.OrderShippingExclTax,
    this.PaymentMethodAdditionalFeeInclTax,
    this.PaymentMethodAdditionalFeeExclTax,
    this.TaxRates,
    this.OrderTax,
    this.OrderDiscount,
    this.OrderTotal,
    this.RefundedAmount,
    this.RewardPointsHistoryEntryId,
    this.CheckoutAttributeDescription,
    this.CheckoutAttributesXml,
    this.CustomerLanguageId,
    this.AffiliateId,
    this.CustomerIp,
    this.AllowStoringCreditCardNumber,
    this.CardType,
    this.CardName,
    this.CardNumber,
    this.MaskedCreditCardNumber,
    this.CardCvv2,
    this.CardExpirationMonth,
    this.CardExpirationYear,
    this.AuthorizationTransactionId,
    this.AuthorizationTransactionCode,
    this.AuthorizationTransactionResult,
    this.CaptureTransactionId,
    this.CaptureTransactionResult,
    this.SubscriptionTransactionId,
    this.PaidDateUtc,
    this.ShippingMethod,
    this.ShippingMethodDescription,
    this.ShippingRateComputationMethodSystemName,
    this.CustomValuesXml,
    this.Deleted,
    this.CreatedOnUtc,
    this.CustomOrderNumber,
    this.RedeemedRewardPointsEntryId,
    this.WeightDiscrepancyWeight,
    this.WeightDiscrepancyLength,
    this.WeightDiscrepancyWidth,
    this.WeightDiscrepancyHeight,
    this.WeightDiscrepancyVolumetricWeight,
    this.AdditionalChargeReason,
    this.AdditionalChargeDescription,
    this.WarehousingDescription,
    this.DeclarationFeeVAT,
    this.DeclarationFee,
    this.CustomsDuty,
    this.DecalredValueVAT,
    this.FinanceStatusId,
    this.BillingDate,
    this.PostPaidInvoiceNumber,
    this.OrderStatus,
    this.OrderType,
    this.PaymentStatus,
    this.ShippingStatus,
    this.CustomerTaxDisplayType,
    this.FinanceStatus,
    this.Id,
    this.shipmentid,
  });

  final bool? IsSettled;

  final DateTime? SettledTimeStamp;

  final String? ParcelDescription;

  final int? ParcelQuantity;

  final bool? IsCOD;

  final bool? IsPaidByLink;

  final double? PaidByLinkAmount;

  final bool? IsCODPaidByCoupon;

  final int? CouponQuantity;

  final double? CODAmount;

  final double? CODAmount2;

  final double? CODSubAmount;

  final double? PackageValue;

  final String? PackageCurrency;

  final double? AdditionalFees;

  final String? COdCurrency;

  final String? COdCurrency2;

  final String? PONumber;

  final String? OrderGuid;

  final int? StoreId;

  final int? CustomerId;

  final int? VendorId;

  final int? BillingAddressId;

  final int? ShippingAddressId;

  final int? PickupAddressId;

  final bool? PickupInStore;

  final int? OrderStatusId;

  final int? OrderTypeId;

  final int? ShippingStatusId;

  final int? PaymentStatusId;

  final String? PaymentMethodSystemName;

  final String? CustomerCurrencyCode;

  final double? CurrencyRate;

  final int? CustomerTaxDisplayTypeId;

  final String? VatNumber;

  final double? OrderSubtotalInclTax;

  final double? OrderSubtotalExclTax;

  final double? OrderSubTotalDiscountInclTax;

  final double? OrderSubTotalDiscountExclTax;

  final double? OrderShippingInclTax;

  final double? OrderShippingExclTax;

  final double? PaymentMethodAdditionalFeeInclTax;

  final double? PaymentMethodAdditionalFeeExclTax;

  final String? TaxRates;

  final double? OrderTax;

  final double? OrderDiscount;

  final double? OrderTotal;

  final double? RefundedAmount;

  final int? RewardPointsHistoryEntryId;

  final String? CheckoutAttributeDescription;

  final String? CheckoutAttributesXml;

  final int? CustomerLanguageId;

  final int? AffiliateId;

  final String? CustomerIp;

  final bool? AllowStoringCreditCardNumber;

  final String? CardType;

  final String? CardName;

  final String? CardNumber;

  final String? MaskedCreditCardNumber;

  final String? CardCvv2;

  final String? CardExpirationMonth;

  final String? CardExpirationYear;

  final String? AuthorizationTransactionId;

  final String? AuthorizationTransactionCode;

  final String? AuthorizationTransactionResult;

  final String? CaptureTransactionId;

  final String? CaptureTransactionResult;

  final String? SubscriptionTransactionId;

  final DateTime? PaidDateUtc;

  final String? ShippingMethod;

  final String? ShippingMethodDescription;

  final String? ShippingRateComputationMethodSystemName;

  final String? CustomValuesXml;

  final bool? Deleted;

  final String? CreatedOnUtc;

  final String? CustomOrderNumber;

  final int? RedeemedRewardPointsEntryId;

  final double? WeightDiscrepancyWeight;

  final double? WeightDiscrepancyLength;

  final double? WeightDiscrepancyWidth;

  final double? WeightDiscrepancyHeight;

  final double? WeightDiscrepancyVolumetricWeight;

  final String? AdditionalChargeReason;

  final String? AdditionalChargeDescription;

  final String? WarehousingDescription;

  final double? DeclarationFeeVAT;

  final double? DeclarationFee;

  final double? CustomsDuty;

  final double? DecalredValueVAT;

  final int? FinanceStatusId;

  final DateTime? BillingDate;

  final String? PostPaidInvoiceNumber;

  final String? OrderStatus;

  final String? OrderType;

  final String? PaymentStatus;

  final String? ShippingStatus;

  final String? CustomerTaxDisplayType;

  final String? FinanceStatus;

  final int? Id;

  final int? shipmentid;

  static ConfirmPaymentPostRequest fromJson(Map<String, dynamic> json) {
    return ConfirmPaymentPostRequest(
      IsSettled: json['IsSettled'] == null ? null : (json['IsSettled'] as bool),
      SettledTimeStamp: json['SettledTimeStamp'] == null
          ? null
          : DateTime.parse((json['SettledTimeStamp'] as String)),
      ParcelDescription: json['ParcelDescription'] == null
          ? null
          : (json['ParcelDescription'] as String),
      ParcelQuantity: json['ParcelQuantity'] == null
          ? null
          : (json['ParcelQuantity'] as int),
      IsCOD: json['IsCOD'] == null ? null : (json['IsCOD'] as bool),
      IsPaidByLink:
          json['IsPaidByLink'] == null ? null : (json['IsPaidByLink'] as bool),
      PaidByLinkAmount: json['PaidByLinkAmount'] == null
          ? null
          : (json['PaidByLinkAmount'] as double),
      IsCODPaidByCoupon: json['IsCODPaidByCoupon'] == null
          ? null
          : (json['IsCODPaidByCoupon'] as bool),
      CouponQuantity: json['CouponQuantity'] == null
          ? null
          : (json['CouponQuantity'] as int),
      CODAmount:
          json['CODAmount'] == null ? null : (json['CODAmount'] as double),
      CODAmount2:
          json['CODAmount2'] == null ? null : (json['CODAmount2'] as double),
      CODSubAmount: json['CODSubAmount'] == null
          ? null
          : (json['CODSubAmount'] as double),
      PackageValue: json['PackageValue'] == null
          ? null
          : (json['PackageValue'] as double),
      PackageCurrency: json['PackageCurrency'] == null
          ? null
          : (json['PackageCurrency'] as String),
      AdditionalFees: json['AdditionalFees'] == null
          ? null
          : (json['AdditionalFees'] as double),
      COdCurrency:
          json['COdCurrency'] == null ? null : (json['COdCurrency'] as String),
      COdCurrency2: json['COdCurrency2'] == null
          ? null
          : (json['COdCurrency2'] as String),
      PONumber: json['PONumber'] == null ? null : (json['PONumber'] as String),
      OrderGuid:
          json['OrderGuid'] == null ? null : (json['OrderGuid'] as String),
      StoreId: json['StoreId'] == null ? null : (json['StoreId'] as int),
      CustomerId:
          json['CustomerId'] == null ? null : (json['CustomerId'] as int),
      VendorId: json['VendorId'] == null ? null : (json['VendorId'] as int),
      BillingAddressId: json['BillingAddressId'] == null
          ? null
          : (json['BillingAddressId'] as int),
      ShippingAddressId: json['ShippingAddressId'] == null
          ? null
          : (json['ShippingAddressId'] as int),
      PickupAddressId: json['PickupAddressId'] == null
          ? null
          : (json['PickupAddressId'] as int),
      PickupInStore: json['PickupInStore'] == null
          ? null
          : (json['PickupInStore'] as bool),
      OrderStatusId:
          json['OrderStatusId'] == null ? null : (json['OrderStatusId'] as int),
      OrderTypeId:
          json['OrderTypeId'] == null ? null : (json['OrderTypeId'] as int),
      ShippingStatusId: json['ShippingStatusId'] == null
          ? null
          : (json['ShippingStatusId'] as int),
      PaymentStatusId: json['PaymentStatusId'] == null
          ? null
          : (json['PaymentStatusId'] as int),
      PaymentMethodSystemName: json['PaymentMethodSystemName'] == null
          ? null
          : (json['PaymentMethodSystemName'] as String),
      CustomerCurrencyCode: json['CustomerCurrencyCode'] == null
          ? null
          : (json['CustomerCurrencyCode'] as String),
      CurrencyRate: json['CurrencyRate'] == null
          ? null
          : (json['CurrencyRate'] as double),
      CustomerTaxDisplayTypeId: json['CustomerTaxDisplayTypeId'] == null
          ? null
          : (json['CustomerTaxDisplayTypeId'] as int),
      VatNumber:
          json['VatNumber'] == null ? null : (json['VatNumber'] as String),
      OrderSubtotalInclTax: json['OrderSubtotalInclTax'] == null
          ? null
          : (json['OrderSubtotalInclTax'] as double),
      OrderSubtotalExclTax: json['OrderSubtotalExclTax'] == null
          ? null
          : (json['OrderSubtotalExclTax'] as double),
      OrderSubTotalDiscountInclTax: json['OrderSubTotalDiscountInclTax'] == null
          ? null
          : (json['OrderSubTotalDiscountInclTax'] as double),
      OrderSubTotalDiscountExclTax: json['OrderSubTotalDiscountExclTax'] == null
          ? null
          : (json['OrderSubTotalDiscountExclTax'] as double),
      OrderShippingInclTax: json['OrderShippingInclTax'] == null
          ? null
          : (json['OrderShippingInclTax'] as double),
      OrderShippingExclTax: json['OrderShippingExclTax'] == null
          ? null
          : (json['OrderShippingExclTax'] as double),
      PaymentMethodAdditionalFeeInclTax:
          json['PaymentMethodAdditionalFeeInclTax'] == null
              ? null
              : (json['PaymentMethodAdditionalFeeInclTax'] as double),
      PaymentMethodAdditionalFeeExclTax:
          json['PaymentMethodAdditionalFeeExclTax'] == null
              ? null
              : (json['PaymentMethodAdditionalFeeExclTax'] as double),
      TaxRates: json['TaxRates'] == null ? null : (json['TaxRates'] as String),
      OrderTax: json['OrderTax'] == null ? null : (json['OrderTax'] as double),
      OrderDiscount: json['OrderDiscount'] == null
          ? null
          : (json['OrderDiscount'] as double),
      OrderTotal:
          json['OrderTotal'] == null ? null : (json['OrderTotal'] as double),
      RefundedAmount: json['RefundedAmount'] == null
          ? null
          : (json['RefundedAmount'] as double),
      RewardPointsHistoryEntryId: json['RewardPointsHistoryEntryId'] == null
          ? null
          : (json['RewardPointsHistoryEntryId'] as int),
      CheckoutAttributeDescription: json['CheckoutAttributeDescription'] == null
          ? null
          : (json['CheckoutAttributeDescription'] as String),
      CheckoutAttributesXml: json['CheckoutAttributesXml'] == null
          ? null
          : (json['CheckoutAttributesXml'] as String),
      CustomerLanguageId: json['CustomerLanguageId'] == null
          ? null
          : (json['CustomerLanguageId'] as int),
      AffiliateId:
          json['AffiliateId'] == null ? null : (json['AffiliateId'] as int),
      CustomerIp:
          json['CustomerIp'] == null ? null : (json['CustomerIp'] as String),
      AllowStoringCreditCardNumber: json['AllowStoringCreditCardNumber'] == null
          ? null
          : (json['AllowStoringCreditCardNumber'] as bool),
      CardType: json['CardType'] == null ? null : (json['CardType'] as String),
      CardName: json['CardName'] == null ? null : (json['CardName'] as String),
      CardNumber:
          json['CardNumber'] == null ? null : (json['CardNumber'] as String),
      MaskedCreditCardNumber: json['MaskedCreditCardNumber'] == null
          ? null
          : (json['MaskedCreditCardNumber'] as String),
      CardCvv2: json['CardCvv2'] == null ? null : (json['CardCvv2'] as String),
      CardExpirationMonth: json['CardExpirationMonth'] == null
          ? null
          : (json['CardExpirationMonth'] as String),
      CardExpirationYear: json['CardExpirationYear'] == null
          ? null
          : (json['CardExpirationYear'] as String),
      AuthorizationTransactionId: json['AuthorizationTransactionId'] == null
          ? null
          : (json['AuthorizationTransactionId'] as String),
      AuthorizationTransactionCode: json['AuthorizationTransactionCode'] == null
          ? null
          : (json['AuthorizationTransactionCode'] as String),
      AuthorizationTransactionResult:
          json['AuthorizationTransactionResult'] == null
              ? null
              : (json['AuthorizationTransactionResult'] as String),
      CaptureTransactionId: json['CaptureTransactionId'] == null
          ? null
          : (json['CaptureTransactionId'] as String),
      CaptureTransactionResult: json['CaptureTransactionResult'] == null
          ? null
          : (json['CaptureTransactionResult'] as String),
      SubscriptionTransactionId: json['SubscriptionTransactionId'] == null
          ? null
          : (json['SubscriptionTransactionId'] as String),
      PaidDateUtc: json['PaidDateUtc'] == null
          ? null
          : DateTime.parse((json['PaidDateUtc'] as String)),
      ShippingMethod: json['ShippingMethod'] == null
          ? null
          : (json['ShippingMethod'] as String),
      ShippingMethodDescription: json['ShippingMethodDescription'] == null
          ? null
          : (json['ShippingMethodDescription'] as String),
      ShippingRateComputationMethodSystemName:
          json['ShippingRateComputationMethodSystemName'] == null
              ? null
              : (json['ShippingRateComputationMethodSystemName'] as String),
      CustomValuesXml: json['CustomValuesXml'] == null
          ? null
          : (json['CustomValuesXml'] as String),
      Deleted: json['Deleted'] == null ? null : (json['Deleted'] as bool),
      CreatedOnUtc: json['CreatedOnUtc'] == null
          ? null
          : (json['CreatedOnUtc'] as String),
      CustomOrderNumber: json['CustomOrderNumber'] == null
          ? null
          : (json['CustomOrderNumber'] as String),
      RedeemedRewardPointsEntryId: json['RedeemedRewardPointsEntryId'] == null
          ? null
          : (json['RedeemedRewardPointsEntryId'] as int),
      WeightDiscrepancyWeight: json['WeightDiscrepancyWeight'] == null
          ? null
          : (json['WeightDiscrepancyWeight'] as double),
      WeightDiscrepancyLength: json['WeightDiscrepancyLength'] == null
          ? null
          : (json['WeightDiscrepancyLength'] as double),
      WeightDiscrepancyWidth: json['WeightDiscrepancyWidth'] == null
          ? null
          : (json['WeightDiscrepancyWidth'] as double),
      WeightDiscrepancyHeight: json['WeightDiscrepancyHeight'] == null
          ? null
          : (json['WeightDiscrepancyHeight'] as double),
      WeightDiscrepancyVolumetricWeight:
          json['WeightDiscrepancyVolumetricWeight'] == null
              ? null
              : (json['WeightDiscrepancyVolumetricWeight'] as double),
      AdditionalChargeReason: json['AdditionalChargeReason'] == null
          ? null
          : (json['AdditionalChargeReason'] as String),
      AdditionalChargeDescription: json['AdditionalChargeDescription'] == null
          ? null
          : (json['AdditionalChargeDescription'] as String),
      WarehousingDescription: json['WarehousingDescription'] == null
          ? null
          : (json['WarehousingDescription'] as String),
      DeclarationFeeVAT: json['DeclarationFeeVAT'] == null
          ? null
          : (json['DeclarationFeeVAT'] as double),
      DeclarationFee: json['DeclarationFee'] == null
          ? null
          : (json['DeclarationFee'] as double),
      CustomsDuty:
          json['CustomsDuty'] == null ? null : (json['CustomsDuty'] as double),
      DecalredValueVAT: json['DecalredValueVAT'] == null
          ? null
          : (json['DecalredValueVAT'] as double),
      FinanceStatusId: json['FinanceStatusId'] == null
          ? null
          : (json['FinanceStatusId'] as int),
      BillingDate: json['BillingDate'] == null
          ? null
          : DateTime.parse((json['BillingDate'] as String)),
      PostPaidInvoiceNumber: json['PostPaidInvoiceNumber'] == null
          ? null
          : (json['PostPaidInvoiceNumber'] as String),
      OrderStatus:
          json['OrderStatus'] == null ? null : (json['OrderStatus'] as String),
      OrderType:
          json['OrderType'] == null ? null : (json['OrderType'] as String),
      PaymentStatus: json['PaymentStatus'] == null
          ? null
          : (json['PaymentStatus'] as String),
      ShippingStatus: json['ShippingStatus'] == null
          ? null
          : (json['ShippingStatus'] as String),
      CustomerTaxDisplayType: json['CustomerTaxDisplayType'] == null
          ? null
          : (json['CustomerTaxDisplayType'] as String),
      FinanceStatus: json['FinanceStatus'] == null
          ? null
          : (json['FinanceStatus'] as String),
      Id: json['Id'] == null ? null : (json['Id'] as int),
      shipmentid:
          json['shipmentid'] == null ? null : (json['shipmentid'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'IsSettled': IsSettled,
      'SettledTimeStamp': SettledTimeStamp?.toIso8601String(),
      'ParcelDescription': ParcelDescription,
      'ParcelQuantity': ParcelQuantity,
      'IsCOD': IsCOD,
      'IsPaidByLink': IsPaidByLink,
      'PaidByLinkAmount': PaidByLinkAmount,
      'IsCODPaidByCoupon': IsCODPaidByCoupon,
      'CouponQuantity': CouponQuantity,
      'CODAmount': CODAmount,
      'CODAmount2': CODAmount2,
      'CODSubAmount': CODSubAmount,
      'PackageValue': PackageValue,
      'PackageCurrency': PackageCurrency,
      'AdditionalFees': AdditionalFees,
      'COdCurrency': COdCurrency,
      'COdCurrency2': COdCurrency2,
      'PONumber': PONumber,
      'OrderGuid': OrderGuid,
      'StoreId': StoreId,
      'CustomerId': CustomerId,
      'VendorId': VendorId,
      'BillingAddressId': BillingAddressId,
      'ShippingAddressId': ShippingAddressId,
      'PickupAddressId': PickupAddressId,
      'PickupInStore': PickupInStore,
      'OrderStatusId': OrderStatusId,
      'OrderTypeId': OrderTypeId,
      'ShippingStatusId': ShippingStatusId,
      'PaymentStatusId': PaymentStatusId,
      'PaymentMethodSystemName': PaymentMethodSystemName,
      'CustomerCurrencyCode': CustomerCurrencyCode,
      'CurrencyRate': CurrencyRate,
      'CustomerTaxDisplayTypeId': CustomerTaxDisplayTypeId,
      'VatNumber': VatNumber,
      'OrderSubtotalInclTax': OrderSubtotalInclTax,
      'OrderSubtotalExclTax': OrderSubtotalExclTax,
      'OrderSubTotalDiscountInclTax': OrderSubTotalDiscountInclTax,
      'OrderSubTotalDiscountExclTax': OrderSubTotalDiscountExclTax,
      'OrderShippingInclTax': OrderShippingInclTax,
      'OrderShippingExclTax': OrderShippingExclTax,
      'PaymentMethodAdditionalFeeInclTax': PaymentMethodAdditionalFeeInclTax,
      'PaymentMethodAdditionalFeeExclTax': PaymentMethodAdditionalFeeExclTax,
      'TaxRates': TaxRates,
      'OrderTax': OrderTax,
      'OrderDiscount': OrderDiscount,
      'OrderTotal': OrderTotal,
      'RefundedAmount': RefundedAmount,
      'RewardPointsHistoryEntryId': RewardPointsHistoryEntryId,
      'CheckoutAttributeDescription': CheckoutAttributeDescription,
      'CheckoutAttributesXml': CheckoutAttributesXml,
      'CustomerLanguageId': CustomerLanguageId,
      'AffiliateId': AffiliateId,
      'CustomerIp': CustomerIp,
      'AllowStoringCreditCardNumber': AllowStoringCreditCardNumber,
      'CardType': CardType,
      'CardName': CardName,
      'CardNumber': CardNumber,
      'MaskedCreditCardNumber': MaskedCreditCardNumber,
      'CardCvv2': CardCvv2,
      'CardExpirationMonth': CardExpirationMonth,
      'CardExpirationYear': CardExpirationYear,
      'AuthorizationTransactionId': AuthorizationTransactionId,
      'AuthorizationTransactionCode': AuthorizationTransactionCode,
      'AuthorizationTransactionResult': AuthorizationTransactionResult,
      'CaptureTransactionId': CaptureTransactionId,
      'CaptureTransactionResult': CaptureTransactionResult,
      'SubscriptionTransactionId': SubscriptionTransactionId,
      'PaidDateUtc': PaidDateUtc?.toIso8601String(),
      'ShippingMethod': ShippingMethod,
      'ShippingMethodDescription': ShippingMethodDescription,
      'ShippingRateComputationMethodSystemName':
          ShippingRateComputationMethodSystemName,
      'CustomValuesXml': CustomValuesXml,
      'Deleted': Deleted,
      'CreatedOnUtc': CreatedOnUtc,
      'CustomOrderNumber': CustomOrderNumber,
      'RedeemedRewardPointsEntryId': RedeemedRewardPointsEntryId,
      'WeightDiscrepancyWeight': WeightDiscrepancyWeight,
      'WeightDiscrepancyLength': WeightDiscrepancyLength,
      'WeightDiscrepancyWidth': WeightDiscrepancyWidth,
      'WeightDiscrepancyHeight': WeightDiscrepancyHeight,
      'WeightDiscrepancyVolumetricWeight': WeightDiscrepancyVolumetricWeight,
      'AdditionalChargeReason': AdditionalChargeReason,
      'AdditionalChargeDescription': AdditionalChargeDescription,
      'WarehousingDescription': WarehousingDescription,
      'DeclarationFeeVAT': DeclarationFeeVAT,
      'DeclarationFee': DeclarationFee,
      'CustomsDuty': CustomsDuty,
      'DecalredValueVAT': DecalredValueVAT,
      'FinanceStatusId': FinanceStatusId,
      'BillingDate': BillingDate?.toIso8601String(),
      'PostPaidInvoiceNumber': PostPaidInvoiceNumber,
      'OrderStatus': OrderStatus,
      'OrderType': OrderType,
      'PaymentStatus': PaymentStatus,
      'ShippingStatus': ShippingStatus,
      'CustomerTaxDisplayType': CustomerTaxDisplayType,
      'FinanceStatus': FinanceStatus,
      'Id': Id,
      'shipmentid': shipmentid,
    };
  }

  ConfirmPaymentPostRequest copyWith({
    bool? IsSettled,
    DateTime? SettledTimeStamp,
    String? ParcelDescription,
    int? ParcelQuantity,
    bool? IsCOD,
    bool? IsPaidByLink,
    double? PaidByLinkAmount,
    bool? IsCODPaidByCoupon,
    int? CouponQuantity,
    double? CODAmount,
    double? CODAmount2,
    double? CODSubAmount,
    double? PackageValue,
    String? PackageCurrency,
    double? AdditionalFees,
    String? COdCurrency,
    String? COdCurrency2,
    String? PONumber,
    String? OrderGuid,
    int? StoreId,
    int? CustomerId,
    int? VendorId,
    int? BillingAddressId,
    int? ShippingAddressId,
    int? PickupAddressId,
    bool? PickupInStore,
    int? OrderStatusId,
    int? OrderTypeId,
    int? ShippingStatusId,
    int? PaymentStatusId,
    String? PaymentMethodSystemName,
    String? CustomerCurrencyCode,
    double? CurrencyRate,
    int? CustomerTaxDisplayTypeId,
    String? VatNumber,
    double? OrderSubtotalInclTax,
    double? OrderSubtotalExclTax,
    double? OrderSubTotalDiscountInclTax,
    double? OrderSubTotalDiscountExclTax,
    double? OrderShippingInclTax,
    double? OrderShippingExclTax,
    double? PaymentMethodAdditionalFeeInclTax,
    double? PaymentMethodAdditionalFeeExclTax,
    String? TaxRates,
    double? OrderTax,
    double? OrderDiscount,
    double? OrderTotal,
    double? RefundedAmount,
    int? RewardPointsHistoryEntryId,
    String? CheckoutAttributeDescription,
    String? CheckoutAttributesXml,
    int? CustomerLanguageId,
    int? AffiliateId,
    String? CustomerIp,
    bool? AllowStoringCreditCardNumber,
    String? CardType,
    String? CardName,
    String? CardNumber,
    String? MaskedCreditCardNumber,
    String? CardCvv2,
    String? CardExpirationMonth,
    String? CardExpirationYear,
    String? AuthorizationTransactionId,
    String? AuthorizationTransactionCode,
    String? AuthorizationTransactionResult,
    String? CaptureTransactionId,
    String? CaptureTransactionResult,
    String? SubscriptionTransactionId,
    DateTime? PaidDateUtc,
    String? ShippingMethod,
    String? ShippingMethodDescription,
    String? ShippingRateComputationMethodSystemName,
    String? CustomValuesXml,
    bool? Deleted,
    String? CreatedOnUtc,
    String? CustomOrderNumber,
    int? RedeemedRewardPointsEntryId,
    double? WeightDiscrepancyWeight,
    double? WeightDiscrepancyLength,
    double? WeightDiscrepancyWidth,
    double? WeightDiscrepancyHeight,
    double? WeightDiscrepancyVolumetricWeight,
    String? AdditionalChargeReason,
    String? AdditionalChargeDescription,
    String? WarehousingDescription,
    double? DeclarationFeeVAT,
    double? DeclarationFee,
    double? CustomsDuty,
    double? DecalredValueVAT,
    int? FinanceStatusId,
    DateTime? BillingDate,
    String? PostPaidInvoiceNumber,
    String? OrderStatus,
    String? OrderType,
    String? PaymentStatus,
    String? ShippingStatus,
    String? CustomerTaxDisplayType,
    String? FinanceStatus,
    int? Id,
    int? shipmentid,
  }) {
    return ConfirmPaymentPostRequest(
      IsSettled: IsSettled ?? this.IsSettled,
      SettledTimeStamp: SettledTimeStamp ?? this.SettledTimeStamp,
      ParcelDescription: ParcelDescription ?? this.ParcelDescription,
      ParcelQuantity: ParcelQuantity ?? this.ParcelQuantity,
      IsCOD: IsCOD ?? this.IsCOD,
      IsPaidByLink: IsPaidByLink ?? this.IsPaidByLink,
      PaidByLinkAmount: PaidByLinkAmount ?? this.PaidByLinkAmount,
      IsCODPaidByCoupon: IsCODPaidByCoupon ?? this.IsCODPaidByCoupon,
      CouponQuantity: CouponQuantity ?? this.CouponQuantity,
      CODAmount: CODAmount ?? this.CODAmount,
      CODAmount2: CODAmount2 ?? this.CODAmount2,
      CODSubAmount: CODSubAmount ?? this.CODSubAmount,
      PackageValue: PackageValue ?? this.PackageValue,
      PackageCurrency: PackageCurrency ?? this.PackageCurrency,
      AdditionalFees: AdditionalFees ?? this.AdditionalFees,
      COdCurrency: COdCurrency ?? this.COdCurrency,
      COdCurrency2: COdCurrency2 ?? this.COdCurrency2,
      PONumber: PONumber ?? this.PONumber,
      OrderGuid: OrderGuid ?? this.OrderGuid,
      StoreId: StoreId ?? this.StoreId,
      CustomerId: CustomerId ?? this.CustomerId,
      VendorId: VendorId ?? this.VendorId,
      BillingAddressId: BillingAddressId ?? this.BillingAddressId,
      ShippingAddressId: ShippingAddressId ?? this.ShippingAddressId,
      PickupAddressId: PickupAddressId ?? this.PickupAddressId,
      PickupInStore: PickupInStore ?? this.PickupInStore,
      OrderStatusId: OrderStatusId ?? this.OrderStatusId,
      OrderTypeId: OrderTypeId ?? this.OrderTypeId,
      ShippingStatusId: ShippingStatusId ?? this.ShippingStatusId,
      PaymentStatusId: PaymentStatusId ?? this.PaymentStatusId,
      PaymentMethodSystemName:
          PaymentMethodSystemName ?? this.PaymentMethodSystemName,
      CustomerCurrencyCode: CustomerCurrencyCode ?? this.CustomerCurrencyCode,
      CurrencyRate: CurrencyRate ?? this.CurrencyRate,
      CustomerTaxDisplayTypeId:
          CustomerTaxDisplayTypeId ?? this.CustomerTaxDisplayTypeId,
      VatNumber: VatNumber ?? this.VatNumber,
      OrderSubtotalInclTax: OrderSubtotalInclTax ?? this.OrderSubtotalInclTax,
      OrderSubtotalExclTax: OrderSubtotalExclTax ?? this.OrderSubtotalExclTax,
      OrderSubTotalDiscountInclTax:
          OrderSubTotalDiscountInclTax ?? this.OrderSubTotalDiscountInclTax,
      OrderSubTotalDiscountExclTax:
          OrderSubTotalDiscountExclTax ?? this.OrderSubTotalDiscountExclTax,
      OrderShippingInclTax: OrderShippingInclTax ?? this.OrderShippingInclTax,
      OrderShippingExclTax: OrderShippingExclTax ?? this.OrderShippingExclTax,
      PaymentMethodAdditionalFeeInclTax: PaymentMethodAdditionalFeeInclTax ??
          this.PaymentMethodAdditionalFeeInclTax,
      PaymentMethodAdditionalFeeExclTax: PaymentMethodAdditionalFeeExclTax ??
          this.PaymentMethodAdditionalFeeExclTax,
      TaxRates: TaxRates ?? this.TaxRates,
      OrderTax: OrderTax ?? this.OrderTax,
      OrderDiscount: OrderDiscount ?? this.OrderDiscount,
      OrderTotal: OrderTotal ?? this.OrderTotal,
      RefundedAmount: RefundedAmount ?? this.RefundedAmount,
      RewardPointsHistoryEntryId:
          RewardPointsHistoryEntryId ?? this.RewardPointsHistoryEntryId,
      CheckoutAttributeDescription:
          CheckoutAttributeDescription ?? this.CheckoutAttributeDescription,
      CheckoutAttributesXml:
          CheckoutAttributesXml ?? this.CheckoutAttributesXml,
      CustomerLanguageId: CustomerLanguageId ?? this.CustomerLanguageId,
      AffiliateId: AffiliateId ?? this.AffiliateId,
      CustomerIp: CustomerIp ?? this.CustomerIp,
      AllowStoringCreditCardNumber:
          AllowStoringCreditCardNumber ?? this.AllowStoringCreditCardNumber,
      CardType: CardType ?? this.CardType,
      CardName: CardName ?? this.CardName,
      CardNumber: CardNumber ?? this.CardNumber,
      MaskedCreditCardNumber:
          MaskedCreditCardNumber ?? this.MaskedCreditCardNumber,
      CardCvv2: CardCvv2 ?? this.CardCvv2,
      CardExpirationMonth: CardExpirationMonth ?? this.CardExpirationMonth,
      CardExpirationYear: CardExpirationYear ?? this.CardExpirationYear,
      AuthorizationTransactionId:
          AuthorizationTransactionId ?? this.AuthorizationTransactionId,
      AuthorizationTransactionCode:
          AuthorizationTransactionCode ?? this.AuthorizationTransactionCode,
      AuthorizationTransactionResult:
          AuthorizationTransactionResult ?? this.AuthorizationTransactionResult,
      CaptureTransactionId: CaptureTransactionId ?? this.CaptureTransactionId,
      CaptureTransactionResult:
          CaptureTransactionResult ?? this.CaptureTransactionResult,
      SubscriptionTransactionId:
          SubscriptionTransactionId ?? this.SubscriptionTransactionId,
      PaidDateUtc: PaidDateUtc ?? this.PaidDateUtc,
      ShippingMethod: ShippingMethod ?? this.ShippingMethod,
      ShippingMethodDescription:
          ShippingMethodDescription ?? this.ShippingMethodDescription,
      ShippingRateComputationMethodSystemName:
          ShippingRateComputationMethodSystemName ??
              this.ShippingRateComputationMethodSystemName,
      CustomValuesXml: CustomValuesXml ?? this.CustomValuesXml,
      Deleted: Deleted ?? this.Deleted,
      CreatedOnUtc: CreatedOnUtc ?? this.CreatedOnUtc,
      CustomOrderNumber: CustomOrderNumber ?? this.CustomOrderNumber,
      RedeemedRewardPointsEntryId:
          RedeemedRewardPointsEntryId ?? this.RedeemedRewardPointsEntryId,
      WeightDiscrepancyWeight:
          WeightDiscrepancyWeight ?? this.WeightDiscrepancyWeight,
      WeightDiscrepancyLength:
          WeightDiscrepancyLength ?? this.WeightDiscrepancyLength,
      WeightDiscrepancyWidth:
          WeightDiscrepancyWidth ?? this.WeightDiscrepancyWidth,
      WeightDiscrepancyHeight:
          WeightDiscrepancyHeight ?? this.WeightDiscrepancyHeight,
      WeightDiscrepancyVolumetricWeight: WeightDiscrepancyVolumetricWeight ??
          this.WeightDiscrepancyVolumetricWeight,
      AdditionalChargeReason:
          AdditionalChargeReason ?? this.AdditionalChargeReason,
      AdditionalChargeDescription:
          AdditionalChargeDescription ?? this.AdditionalChargeDescription,
      WarehousingDescription:
          WarehousingDescription ?? this.WarehousingDescription,
      DeclarationFeeVAT: DeclarationFeeVAT ?? this.DeclarationFeeVAT,
      DeclarationFee: DeclarationFee ?? this.DeclarationFee,
      CustomsDuty: CustomsDuty ?? this.CustomsDuty,
      DecalredValueVAT: DecalredValueVAT ?? this.DecalredValueVAT,
      FinanceStatusId: FinanceStatusId ?? this.FinanceStatusId,
      BillingDate: BillingDate ?? this.BillingDate,
      PostPaidInvoiceNumber:
          PostPaidInvoiceNumber ?? this.PostPaidInvoiceNumber,
      OrderStatus: OrderStatus ?? this.OrderStatus,
      OrderType: OrderType ?? this.OrderType,
      PaymentStatus: PaymentStatus ?? this.PaymentStatus,
      ShippingStatus: ShippingStatus ?? this.ShippingStatus,
      CustomerTaxDisplayType:
          CustomerTaxDisplayType ?? this.CustomerTaxDisplayType,
      FinanceStatus: FinanceStatus ?? this.FinanceStatus,
      Id: Id ?? this.Id,
      shipmentid: shipmentid ?? this.shipmentid,
    );
  }

  @override
  List<Object?> get props {
    return [
      IsSettled,
      SettledTimeStamp,
      ParcelDescription,
      ParcelQuantity,
      IsCOD,
      IsPaidByLink,
      PaidByLinkAmount,
      IsCODPaidByCoupon,
      CouponQuantity,
      CODAmount,
      CODAmount2,
      CODSubAmount,
      PackageValue,
      PackageCurrency,
      AdditionalFees,
      COdCurrency,
      COdCurrency2,
      PONumber,
      OrderGuid,
      StoreId,
      CustomerId,
      VendorId,
      BillingAddressId,
      ShippingAddressId,
      PickupAddressId,
      PickupInStore,
      OrderStatusId,
      OrderTypeId,
      ShippingStatusId,
      PaymentStatusId,
      PaymentMethodSystemName,
      CustomerCurrencyCode,
      CurrencyRate,
      CustomerTaxDisplayTypeId,
      VatNumber,
      OrderSubtotalInclTax,
      OrderSubtotalExclTax,
      OrderSubTotalDiscountInclTax,
      OrderSubTotalDiscountExclTax,
      OrderShippingInclTax,
      OrderShippingExclTax,
      PaymentMethodAdditionalFeeInclTax,
      PaymentMethodAdditionalFeeExclTax,
      TaxRates,
      OrderTax,
      OrderDiscount,
      OrderTotal,
      RefundedAmount,
      RewardPointsHistoryEntryId,
      CheckoutAttributeDescription,
      CheckoutAttributesXml,
      CustomerLanguageId,
      AffiliateId,
      CustomerIp,
      AllowStoringCreditCardNumber,
      CardType,
      CardName,
      CardNumber,
      MaskedCreditCardNumber,
      CardCvv2,
      CardExpirationMonth,
      CardExpirationYear,
      AuthorizationTransactionId,
      AuthorizationTransactionCode,
      AuthorizationTransactionResult,
      CaptureTransactionId,
      CaptureTransactionResult,
      SubscriptionTransactionId,
      PaidDateUtc,
      ShippingMethod,
      ShippingMethodDescription,
      ShippingRateComputationMethodSystemName,
      CustomValuesXml,
      Deleted,
      CreatedOnUtc,
      CustomOrderNumber,
      RedeemedRewardPointsEntryId,
      WeightDiscrepancyWeight,
      WeightDiscrepancyLength,
      WeightDiscrepancyWidth,
      WeightDiscrepancyHeight,
      WeightDiscrepancyVolumetricWeight,
      AdditionalChargeReason,
      AdditionalChargeDescription,
      WarehousingDescription,
      DeclarationFeeVAT,
      DeclarationFee,
      CustomsDuty,
      DecalredValueVAT,
      FinanceStatusId,
      BillingDate,
      PostPaidInvoiceNumber,
      OrderStatus,
      OrderType,
      PaymentStatus,
      ShippingStatus,
      CustomerTaxDisplayType,
      FinanceStatus,
      Id,
      shipmentid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
