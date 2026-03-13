import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CreateOrderPostRequest extends Equatable {
  const CreateOrderPostRequest({
    this.ParcelDimensionsList,
    this.ProcessOrder,
    this.ExternalId,
    this.pickupLocation,
    this.dropOffAddress,
    this.productDtos,
    this.CODAmount,
    this.COdCurrency,
    this.ActualWeight,
    this.PackageType,
    this.Length,
    this.Width,
    this.Height,
    this.Notes,
    this.SystemShipmentProvider,
    this.MethodName,
    this.MethodId,
    this.MethodDescription,
    this.Price,
    this.ParcelQuantity,
    this.ParcelPackageValue,
    this.ParcelPackageCurrency,
    this.ParcelDescription,
    this.isCODPaidByCoupon,
    this.CouponQuantity,
  });

  final List<String>? ParcelDimensionsList;

  final bool? ProcessOrder;

  final String? ExternalId;

  final String? pickupLocation;

  final Map<String, dynamic>? dropOffAddress;

  final List<String>? productDtos;

  final double? CODAmount;

  final String? COdCurrency;

  final double? ActualWeight;

  final String? PackageType;

  final double? Length;

  final double? Width;

  final double? Height;

  final String? Notes;

  final String? SystemShipmentProvider;

  final String? MethodName;

  final String? MethodId;

  final String? MethodDescription;

  final double? Price;

  final int? ParcelQuantity;

  final double? ParcelPackageValue;

  final String? ParcelPackageCurrency;

  final String? ParcelDescription;

  final bool? isCODPaidByCoupon;

  final int? CouponQuantity;

  static CreateOrderPostRequest fromJson(Map<String, dynamic> json) {
    return CreateOrderPostRequest(
      ParcelDimensionsList: json['ParcelDimensionsList'] == null
          ? null
          : json['ParcelDimensionsList'],
      ProcessOrder:
          json['ProcessOrder'] == null ? null : (json['ProcessOrder'] as bool),
      ExternalId:
          json['ExternalId'] == null ? null : (json['ExternalId'] as String),
      pickupLocation: json['pickupLocation'] == null
          ? null
          : (json['pickupLocation'] as String),
      dropOffAddress: json['dropOffAddress'] == null
          ? null
          : (json['dropOffAddress'] as Map<String, dynamic>),
      productDtos: json['productDtos'] == null ? null : json['productDtos'],
      CODAmount:
          json['CODAmount'] == null ? null : (json['CODAmount'] as double),
      COdCurrency:
          json['COdCurrency'] == null ? null : (json['COdCurrency'] as String),
      ActualWeight: json['ActualWeight'] == null
          ? null
          : (json['ActualWeight'] as double),
      PackageType:
          json['PackageType'] == null ? null : (json['PackageType'] as String),
      Length: json['Length'] == null ? null : (json['Length'] as double),
      Width: json['Width'] == null ? null : (json['Width'] as double),
      Height: json['Height'] == null ? null : (json['Height'] as double),
      Notes: json['Notes'] == null ? null : (json['Notes'] as String),
      SystemShipmentProvider: json['SystemShipmentProvider'] == null
          ? null
          : (json['SystemShipmentProvider'] as String),
      MethodName:
          json['MethodName'] == null ? null : (json['MethodName'] as String),
      MethodId: json['MethodId'] == null ? null : (json['MethodId'] as String),
      MethodDescription: json['MethodDescription'] == null
          ? null
          : (json['MethodDescription'] as String),
      Price: json['Price'] == null ? null : (json['Price'] as double),
      ParcelQuantity: json['ParcelQuantity'] == null
          ? null
          : (json['ParcelQuantity'] as int),
      ParcelPackageValue: json['ParcelPackageValue'] == null
          ? null
          : (json['ParcelPackageValue'] as double),
      ParcelPackageCurrency: json['ParcelPackageCurrency'] == null
          ? null
          : (json['ParcelPackageCurrency'] as String),
      ParcelDescription: json['ParcelDescription'] == null
          ? null
          : (json['ParcelDescription'] as String),
      isCODPaidByCoupon: json['isCODPaidByCoupon'] == null
          ? null
          : (json['isCODPaidByCoupon'] as bool),
      CouponQuantity: json['CouponQuantity'] == null
          ? null
          : (json['CouponQuantity'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'ParcelDimensionsList': ParcelDimensionsList,
      'ProcessOrder': ProcessOrder,
      'ExternalId': ExternalId,
      'pickupLocation': pickupLocation,
      'dropOffAddress': dropOffAddress,
      'productDtos': productDtos,
      'CODAmount': CODAmount,
      'COdCurrency': COdCurrency,
      'ActualWeight': ActualWeight,
      'PackageType': PackageType,
      'Length': Length,
      'Width': Width,
      'Height': Height,
      'Notes': Notes,
      'SystemShipmentProvider': SystemShipmentProvider,
      'MethodName': MethodName,
      'MethodId': MethodId,
      'MethodDescription': MethodDescription,
      'Price': Price,
      'ParcelQuantity': ParcelQuantity,
      'ParcelPackageValue': ParcelPackageValue,
      'ParcelPackageCurrency': ParcelPackageCurrency,
      'ParcelDescription': ParcelDescription,
      'isCODPaidByCoupon': isCODPaidByCoupon,
      'CouponQuantity': CouponQuantity,
    };
  }

  CreateOrderPostRequest copyWith({
    List<String>? ParcelDimensionsList,
    bool? ProcessOrder,
    String? ExternalId,
    String? pickupLocation,
    Map<String, dynamic>? dropOffAddress,
    List<String>? productDtos,
    double? CODAmount,
    String? COdCurrency,
    double? ActualWeight,
    String? PackageType,
    double? Length,
    double? Width,
    double? Height,
    String? Notes,
    String? SystemShipmentProvider,
    String? MethodName,
    String? MethodId,
    String? MethodDescription,
    double? Price,
    int? ParcelQuantity,
    double? ParcelPackageValue,
    String? ParcelPackageCurrency,
    String? ParcelDescription,
    bool? isCODPaidByCoupon,
    int? CouponQuantity,
  }) {
    return CreateOrderPostRequest(
      ParcelDimensionsList: ParcelDimensionsList ?? this.ParcelDimensionsList,
      ProcessOrder: ProcessOrder ?? this.ProcessOrder,
      ExternalId: ExternalId ?? this.ExternalId,
      pickupLocation: pickupLocation ?? this.pickupLocation,
      dropOffAddress: dropOffAddress ?? this.dropOffAddress,
      productDtos: productDtos ?? this.productDtos,
      CODAmount: CODAmount ?? this.CODAmount,
      COdCurrency: COdCurrency ?? this.COdCurrency,
      ActualWeight: ActualWeight ?? this.ActualWeight,
      PackageType: PackageType ?? this.PackageType,
      Length: Length ?? this.Length,
      Width: Width ?? this.Width,
      Height: Height ?? this.Height,
      Notes: Notes ?? this.Notes,
      SystemShipmentProvider:
          SystemShipmentProvider ?? this.SystemShipmentProvider,
      MethodName: MethodName ?? this.MethodName,
      MethodId: MethodId ?? this.MethodId,
      MethodDescription: MethodDescription ?? this.MethodDescription,
      Price: Price ?? this.Price,
      ParcelQuantity: ParcelQuantity ?? this.ParcelQuantity,
      ParcelPackageValue: ParcelPackageValue ?? this.ParcelPackageValue,
      ParcelPackageCurrency:
          ParcelPackageCurrency ?? this.ParcelPackageCurrency,
      ParcelDescription: ParcelDescription ?? this.ParcelDescription,
      isCODPaidByCoupon: isCODPaidByCoupon ?? this.isCODPaidByCoupon,
      CouponQuantity: CouponQuantity ?? this.CouponQuantity,
    );
  }

  @override
  List<Object?> get props {
    return [
      ParcelDimensionsList,
      ProcessOrder,
      ExternalId,
      pickupLocation,
      dropOffAddress,
      productDtos,
      CODAmount,
      COdCurrency,
      ActualWeight,
      PackageType,
      Length,
      Width,
      Height,
      Notes,
      SystemShipmentProvider,
      MethodName,
      MethodId,
      MethodDescription,
      Price,
      ParcelQuantity,
      ParcelPackageValue,
      ParcelPackageCurrency,
      ParcelDescription,
      isCODPaidByCoupon,
      CouponQuantity,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
