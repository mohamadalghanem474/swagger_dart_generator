import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ReturnOrderForMarketPlacePostRequest extends Equatable {
  const ReturnOrderForMarketPlacePostRequest({
    this.ExternalId,
    this.dropLocation,
    this.pickupAddress,
    this.ActualWeight,
    this.PackageType,
    this.Length,
    this.Width,
    this.Height,
    this.Notes,
    this.SystemShipmentProvider,
    this.MethodName,
    this.MethodDescription,
    this.Price,
    this.ParcelQuantity,
  });

  final String? ExternalId;

  final String? dropLocation;

  final Map<String, dynamic>? pickupAddress;

  final double? ActualWeight;

  final String? PackageType;

  final double? Length;

  final double? Width;

  final double? Height;

  final String? Notes;

  final String? SystemShipmentProvider;

  final String? MethodName;

  final String? MethodDescription;

  final double? Price;

  final int? ParcelQuantity;

  static ReturnOrderForMarketPlacePostRequest fromJson(
      Map<String, dynamic> json) {
    return ReturnOrderForMarketPlacePostRequest(
      ExternalId:
          json['ExternalId'] == null ? null : (json['ExternalId'] as String),
      dropLocation: json['dropLocation'] == null
          ? null
          : (json['dropLocation'] as String),
      pickupAddress: json['pickupAddress'] == null
          ? null
          : (json['pickupAddress'] as Map<String, dynamic>),
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
      MethodDescription: json['MethodDescription'] == null
          ? null
          : (json['MethodDescription'] as String),
      Price: json['Price'] == null ? null : (json['Price'] as double),
      ParcelQuantity: json['ParcelQuantity'] == null
          ? null
          : (json['ParcelQuantity'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'ExternalId': ExternalId,
      'dropLocation': dropLocation,
      'pickupAddress': pickupAddress,
      'ActualWeight': ActualWeight,
      'PackageType': PackageType,
      'Length': Length,
      'Width': Width,
      'Height': Height,
      'Notes': Notes,
      'SystemShipmentProvider': SystemShipmentProvider,
      'MethodName': MethodName,
      'MethodDescription': MethodDescription,
      'Price': Price,
      'ParcelQuantity': ParcelQuantity,
    };
  }

  ReturnOrderForMarketPlacePostRequest copyWith({
    String? ExternalId,
    String? dropLocation,
    Map<String, dynamic>? pickupAddress,
    double? ActualWeight,
    String? PackageType,
    double? Length,
    double? Width,
    double? Height,
    String? Notes,
    String? SystemShipmentProvider,
    String? MethodName,
    String? MethodDescription,
    double? Price,
    int? ParcelQuantity,
  }) {
    return ReturnOrderForMarketPlacePostRequest(
      ExternalId: ExternalId ?? this.ExternalId,
      dropLocation: dropLocation ?? this.dropLocation,
      pickupAddress: pickupAddress ?? this.pickupAddress,
      ActualWeight: ActualWeight ?? this.ActualWeight,
      PackageType: PackageType ?? this.PackageType,
      Length: Length ?? this.Length,
      Width: Width ?? this.Width,
      Height: Height ?? this.Height,
      Notes: Notes ?? this.Notes,
      SystemShipmentProvider:
          SystemShipmentProvider ?? this.SystemShipmentProvider,
      MethodName: MethodName ?? this.MethodName,
      MethodDescription: MethodDescription ?? this.MethodDescription,
      Price: Price ?? this.Price,
      ParcelQuantity: ParcelQuantity ?? this.ParcelQuantity,
    );
  }

  @override
  List<Object?> get props {
    return [
      ExternalId,
      dropLocation,
      pickupAddress,
      ActualWeight,
      PackageType,
      Length,
      Width,
      Height,
      Notes,
      SystemShipmentProvider,
      MethodName,
      MethodDescription,
      Price,
      ParcelQuantity,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
