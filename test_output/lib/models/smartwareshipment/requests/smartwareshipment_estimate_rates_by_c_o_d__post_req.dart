import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class EstimateRatesByCODPostRequest extends Equatable {
  const EstimateRatesByCODPostRequest({
    this.incluedShippingCost,
    this.CODAmount,
    this.COdCurrency,
    this.DropOffLocation,
    this.ToLatitude,
    this.ToLongitude,
    this.ActualWeight,
    this.Dimensions,
    this.PackageType,
    this.DropAddress,
    this.IsVendor,
    this.ParcelDimensionsList,
  });

  final bool? incluedShippingCost;

  final double? CODAmount;

  final String? COdCurrency;

  final String? DropOffLocation;

  final double? ToLatitude;

  final double? ToLongitude;

  final double? ActualWeight;

  final Map<String, dynamic>? Dimensions;

  final String? PackageType;

  final Map<String, dynamic>? DropAddress;

  final bool? IsVendor;

  final List<String>? ParcelDimensionsList;

  static EstimateRatesByCODPostRequest fromJson(Map<String, dynamic> json) {
    return EstimateRatesByCODPostRequest(
      incluedShippingCost: json['incluedShippingCost'] == null
          ? null
          : (json['incluedShippingCost'] as bool),
      CODAmount:
          json['CODAmount'] == null ? null : (json['CODAmount'] as double),
      COdCurrency:
          json['COdCurrency'] == null ? null : (json['COdCurrency'] as String),
      DropOffLocation: json['DropOffLocation'] == null
          ? null
          : (json['DropOffLocation'] as String),
      ToLatitude:
          json['ToLatitude'] == null ? null : (json['ToLatitude'] as double),
      ToLongitude:
          json['ToLongitude'] == null ? null : (json['ToLongitude'] as double),
      ActualWeight: json['ActualWeight'] == null
          ? null
          : (json['ActualWeight'] as double),
      Dimensions: json['Dimensions'] == null
          ? null
          : (json['Dimensions'] as Map<String, dynamic>),
      PackageType:
          json['PackageType'] == null ? null : (json['PackageType'] as String),
      DropAddress: json['DropAddress'] == null
          ? null
          : (json['DropAddress'] as Map<String, dynamic>),
      IsVendor: json['IsVendor'] == null ? null : (json['IsVendor'] as bool),
      ParcelDimensionsList: json['ParcelDimensionsList'] == null
          ? null
          : json['ParcelDimensionsList'],
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'incluedShippingCost': incluedShippingCost,
      'CODAmount': CODAmount,
      'COdCurrency': COdCurrency,
      'DropOffLocation': DropOffLocation,
      'ToLatitude': ToLatitude,
      'ToLongitude': ToLongitude,
      'ActualWeight': ActualWeight,
      'Dimensions': Dimensions,
      'PackageType': PackageType,
      'DropAddress': DropAddress,
      'IsVendor': IsVendor,
      'ParcelDimensionsList': ParcelDimensionsList,
    };
  }

  EstimateRatesByCODPostRequest copyWith({
    bool? incluedShippingCost,
    double? CODAmount,
    String? COdCurrency,
    String? DropOffLocation,
    double? ToLatitude,
    double? ToLongitude,
    double? ActualWeight,
    Map<String, dynamic>? Dimensions,
    String? PackageType,
    Map<String, dynamic>? DropAddress,
    bool? IsVendor,
    List<String>? ParcelDimensionsList,
  }) {
    return EstimateRatesByCODPostRequest(
      incluedShippingCost: incluedShippingCost ?? this.incluedShippingCost,
      CODAmount: CODAmount ?? this.CODAmount,
      COdCurrency: COdCurrency ?? this.COdCurrency,
      DropOffLocation: DropOffLocation ?? this.DropOffLocation,
      ToLatitude: ToLatitude ?? this.ToLatitude,
      ToLongitude: ToLongitude ?? this.ToLongitude,
      ActualWeight: ActualWeight ?? this.ActualWeight,
      Dimensions: Dimensions ?? this.Dimensions,
      PackageType: PackageType ?? this.PackageType,
      DropAddress: DropAddress ?? this.DropAddress,
      IsVendor: IsVendor ?? this.IsVendor,
      ParcelDimensionsList: ParcelDimensionsList ?? this.ParcelDimensionsList,
    );
  }

  @override
  List<Object?> get props {
    return [
      incluedShippingCost,
      CODAmount,
      COdCurrency,
      DropOffLocation,
      ToLatitude,
      ToLongitude,
      ActualWeight,
      Dimensions,
      PackageType,
      DropAddress,
      IsVendor,
      ParcelDimensionsList,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
