import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class EstimateRatesPostRequest extends Equatable {
  const EstimateRatesPostRequest({
    this.PickupCountryId,
    this.PickupStateProvinceId,
    this.PickupPostalCode,
    this.FromLongitude,
    this.FromLatitude,
    this.dropCountryId,
    this.dropsStateProvinceId,
    this.dropPostalCode,
    this.ToLongitude,
    this.ToLatitude,
    this.ActualWeight,
    this.PackageType,
    this.dimensions,
    this.IsVendor,
    this.CODCurrency,
    this.CODAmount,
  });

  final int? PickupCountryId;

  final int? PickupStateProvinceId;

  final String? PickupPostalCode;

  final double? FromLongitude;

  final double? FromLatitude;

  final int? dropCountryId;

  final int? dropsStateProvinceId;

  final String? dropPostalCode;

  final double? ToLongitude;

  final double? ToLatitude;

  final double? ActualWeight;

  final String? PackageType;

  final Map<String, dynamic>? dimensions;

  final bool? IsVendor;

  final String? CODCurrency;

  final double? CODAmount;

  static EstimateRatesPostRequest fromJson(Map<String, dynamic> json) {
    return EstimateRatesPostRequest(
      PickupCountryId: json['PickupCountryId'] == null
          ? null
          : (json['PickupCountryId'] as int),
      PickupStateProvinceId: json['PickupStateProvinceId'] == null
          ? null
          : (json['PickupStateProvinceId'] as int),
      PickupPostalCode: json['PickupPostalCode'] == null
          ? null
          : (json['PickupPostalCode'] as String),
      FromLongitude: json['FromLongitude'] == null
          ? null
          : (json['FromLongitude'] as double),
      FromLatitude: json['FromLatitude'] == null
          ? null
          : (json['FromLatitude'] as double),
      dropCountryId:
          json['dropCountryId'] == null ? null : (json['dropCountryId'] as int),
      dropsStateProvinceId: json['dropsStateProvinceId'] == null
          ? null
          : (json['dropsStateProvinceId'] as int),
      dropPostalCode: json['dropPostalCode'] == null
          ? null
          : (json['dropPostalCode'] as String),
      ToLongitude:
          json['ToLongitude'] == null ? null : (json['ToLongitude'] as double),
      ToLatitude:
          json['ToLatitude'] == null ? null : (json['ToLatitude'] as double),
      ActualWeight: json['ActualWeight'] == null
          ? null
          : (json['ActualWeight'] as double),
      PackageType:
          json['PackageType'] == null ? null : (json['PackageType'] as String),
      dimensions: json['dimensions'] == null
          ? null
          : (json['dimensions'] as Map<String, dynamic>),
      IsVendor: json['IsVendor'] == null ? null : (json['IsVendor'] as bool),
      CODCurrency:
          json['CODCurrency'] == null ? null : (json['CODCurrency'] as String),
      CODAmount:
          json['CODAmount'] == null ? null : (json['CODAmount'] as double),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'PickupCountryId': PickupCountryId,
      'PickupStateProvinceId': PickupStateProvinceId,
      'PickupPostalCode': PickupPostalCode,
      'FromLongitude': FromLongitude,
      'FromLatitude': FromLatitude,
      'dropCountryId': dropCountryId,
      'dropsStateProvinceId': dropsStateProvinceId,
      'dropPostalCode': dropPostalCode,
      'ToLongitude': ToLongitude,
      'ToLatitude': ToLatitude,
      'ActualWeight': ActualWeight,
      'PackageType': PackageType,
      'dimensions': dimensions,
      'IsVendor': IsVendor,
      'CODCurrency': CODCurrency,
      'CODAmount': CODAmount,
    };
  }

  EstimateRatesPostRequest copyWith({
    int? PickupCountryId,
    int? PickupStateProvinceId,
    String? PickupPostalCode,
    double? FromLongitude,
    double? FromLatitude,
    int? dropCountryId,
    int? dropsStateProvinceId,
    String? dropPostalCode,
    double? ToLongitude,
    double? ToLatitude,
    double? ActualWeight,
    String? PackageType,
    Map<String, dynamic>? dimensions,
    bool? IsVendor,
    String? CODCurrency,
    double? CODAmount,
  }) {
    return EstimateRatesPostRequest(
      PickupCountryId: PickupCountryId ?? this.PickupCountryId,
      PickupStateProvinceId:
          PickupStateProvinceId ?? this.PickupStateProvinceId,
      PickupPostalCode: PickupPostalCode ?? this.PickupPostalCode,
      FromLongitude: FromLongitude ?? this.FromLongitude,
      FromLatitude: FromLatitude ?? this.FromLatitude,
      dropCountryId: dropCountryId ?? this.dropCountryId,
      dropsStateProvinceId: dropsStateProvinceId ?? this.dropsStateProvinceId,
      dropPostalCode: dropPostalCode ?? this.dropPostalCode,
      ToLongitude: ToLongitude ?? this.ToLongitude,
      ToLatitude: ToLatitude ?? this.ToLatitude,
      ActualWeight: ActualWeight ?? this.ActualWeight,
      PackageType: PackageType ?? this.PackageType,
      dimensions: dimensions ?? this.dimensions,
      IsVendor: IsVendor ?? this.IsVendor,
      CODCurrency: CODCurrency ?? this.CODCurrency,
      CODAmount: CODAmount ?? this.CODAmount,
    );
  }

  @override
  List<Object?> get props {
    return [
      PickupCountryId,
      PickupStateProvinceId,
      PickupPostalCode,
      FromLongitude,
      FromLatitude,
      dropCountryId,
      dropsStateProvinceId,
      dropPostalCode,
      ToLongitude,
      ToLatitude,
      ActualWeight,
      PackageType,
      dimensions,
      IsVendor,
      CODCurrency,
      CODAmount,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
