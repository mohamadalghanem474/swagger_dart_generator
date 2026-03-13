import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CreateIndividualShipmentPostRequest extends Equatable {
  const CreateIndividualShipmentPostRequest({
    this.pickupAddress,
    this.dropOffAddress,
    this.ActualWeight,
    this.PackageType,
    this.Length,
    this.Width,
    this.Height,
    this.Notes,
    this.ParcelPackageValue,
    this.SystemShipmentProvider,
    this.MethodName,
    this.MethodDescription,
    this.ShippingMethodId,
    this.Price,
    this.ParcelDimensionsList,
  });

  final Map<String, dynamic>? pickupAddress;

  final Map<String, dynamic>? dropOffAddress;

  final double? ActualWeight;

  final String? PackageType;

  final double? Length;

  final double? Width;

  final double? Height;

  final String? Notes;

  final double? ParcelPackageValue;

  final String? SystemShipmentProvider;

  final String? MethodName;

  final String? MethodDescription;

  final String? ShippingMethodId;

  final double? Price;

  final List<String>? ParcelDimensionsList;

  static CreateIndividualShipmentPostRequest fromJson(
      Map<String, dynamic> json) {
    return CreateIndividualShipmentPostRequest(
      pickupAddress: json['pickupAddress'] == null
          ? null
          : (json['pickupAddress'] as Map<String, dynamic>),
      dropOffAddress: json['dropOffAddress'] == null
          ? null
          : (json['dropOffAddress'] as Map<String, dynamic>),
      ActualWeight: json['ActualWeight'] == null
          ? null
          : (json['ActualWeight'] as double),
      PackageType:
          json['PackageType'] == null ? null : (json['PackageType'] as String),
      Length: json['Length'] == null ? null : (json['Length'] as double),
      Width: json['Width'] == null ? null : (json['Width'] as double),
      Height: json['Height'] == null ? null : (json['Height'] as double),
      Notes: json['Notes'] == null ? null : (json['Notes'] as String),
      ParcelPackageValue: json['ParcelPackageValue'] == null
          ? null
          : (json['ParcelPackageValue'] as double),
      SystemShipmentProvider: json['SystemShipmentProvider'] == null
          ? null
          : (json['SystemShipmentProvider'] as String),
      MethodName:
          json['MethodName'] == null ? null : (json['MethodName'] as String),
      MethodDescription: json['MethodDescription'] == null
          ? null
          : (json['MethodDescription'] as String),
      ShippingMethodId: json['ShippingMethodId'] == null
          ? null
          : (json['ShippingMethodId'] as String),
      Price: json['Price'] == null ? null : (json['Price'] as double),
      ParcelDimensionsList: json['ParcelDimensionsList'] == null
          ? null
          : json['ParcelDimensionsList'],
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'pickupAddress': pickupAddress,
      'dropOffAddress': dropOffAddress,
      'ActualWeight': ActualWeight,
      'PackageType': PackageType,
      'Length': Length,
      'Width': Width,
      'Height': Height,
      'Notes': Notes,
      'ParcelPackageValue': ParcelPackageValue,
      'SystemShipmentProvider': SystemShipmentProvider,
      'MethodName': MethodName,
      'MethodDescription': MethodDescription,
      'ShippingMethodId': ShippingMethodId,
      'Price': Price,
      'ParcelDimensionsList': ParcelDimensionsList,
    };
  }

  CreateIndividualShipmentPostRequest copyWith({
    Map<String, dynamic>? pickupAddress,
    Map<String, dynamic>? dropOffAddress,
    double? ActualWeight,
    String? PackageType,
    double? Length,
    double? Width,
    double? Height,
    String? Notes,
    double? ParcelPackageValue,
    String? SystemShipmentProvider,
    String? MethodName,
    String? MethodDescription,
    String? ShippingMethodId,
    double? Price,
    List<String>? ParcelDimensionsList,
  }) {
    return CreateIndividualShipmentPostRequest(
      pickupAddress: pickupAddress ?? this.pickupAddress,
      dropOffAddress: dropOffAddress ?? this.dropOffAddress,
      ActualWeight: ActualWeight ?? this.ActualWeight,
      PackageType: PackageType ?? this.PackageType,
      Length: Length ?? this.Length,
      Width: Width ?? this.Width,
      Height: Height ?? this.Height,
      Notes: Notes ?? this.Notes,
      ParcelPackageValue: ParcelPackageValue ?? this.ParcelPackageValue,
      SystemShipmentProvider:
          SystemShipmentProvider ?? this.SystemShipmentProvider,
      MethodName: MethodName ?? this.MethodName,
      MethodDescription: MethodDescription ?? this.MethodDescription,
      ShippingMethodId: ShippingMethodId ?? this.ShippingMethodId,
      Price: Price ?? this.Price,
      ParcelDimensionsList: ParcelDimensionsList ?? this.ParcelDimensionsList,
    );
  }

  @override
  List<Object?> get props {
    return [
      pickupAddress,
      dropOffAddress,
      ActualWeight,
      PackageType,
      Length,
      Width,
      Height,
      Notes,
      ParcelPackageValue,
      SystemShipmentProvider,
      MethodName,
      MethodDescription,
      ShippingMethodId,
      Price,
      ParcelDimensionsList,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
