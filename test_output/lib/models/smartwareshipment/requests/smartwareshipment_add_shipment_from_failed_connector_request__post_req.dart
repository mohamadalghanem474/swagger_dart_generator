import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class AddShipmentFromFailedConnectorRequestPostRequest extends Equatable {
  const AddShipmentFromFailedConnectorRequestPostRequest({
    this.FailedRequestId,
    this.DropAddress,
    this.package,
    this.dimensions,
    this.ParcelDimensionsList,
    this.OrderItems,
    this.CodAmount,
    this.CodCurrency,
    this.ActualWeight,
    this.VolumetricWeight,
    this.notes,
    this.PackageValue,
    this.PackageCurrency,
    this.ParcelDescription,
    this.ParcelQuantity,
    this.ExternalId,
    this.id,
    this.custom_properties,
  });

  final int? FailedRequestId;

  final Map<String, dynamic>? DropAddress;

  final String? package;

  final Map<String, dynamic>? dimensions;

  final List<String>? ParcelDimensionsList;

  final List<String>? OrderItems;

  final double? CodAmount;

  final String? CodCurrency;

  final double? ActualWeight;

  final double? VolumetricWeight;

  final String? notes;

  final double? PackageValue;

  final String? PackageCurrency;

  final String? ParcelDescription;

  final int? ParcelQuantity;

  final String? ExternalId;

  final int? id;

  final Map<String, dynamic>? custom_properties;

  static AddShipmentFromFailedConnectorRequestPostRequest fromJson(
      Map<String, dynamic> json) {
    return AddShipmentFromFailedConnectorRequestPostRequest(
      FailedRequestId: json['FailedRequestId'] == null
          ? null
          : (json['FailedRequestId'] as int),
      DropAddress: json['DropAddress'] == null
          ? null
          : (json['DropAddress'] as Map<String, dynamic>),
      package: json['package'] == null ? null : (json['package'] as String),
      dimensions: json['dimensions'] == null
          ? null
          : (json['dimensions'] as Map<String, dynamic>),
      ParcelDimensionsList: json['ParcelDimensionsList'] == null
          ? null
          : json['ParcelDimensionsList'],
      OrderItems: json['OrderItems'] == null ? null : json['OrderItems'],
      CodAmount:
          json['CodAmount'] == null ? null : (json['CodAmount'] as double),
      CodCurrency:
          json['CodCurrency'] == null ? null : (json['CodCurrency'] as String),
      ActualWeight: json['ActualWeight'] == null
          ? null
          : (json['ActualWeight'] as double),
      VolumetricWeight: json['VolumetricWeight'] == null
          ? null
          : (json['VolumetricWeight'] as double),
      notes: json['notes'] == null ? null : (json['notes'] as String),
      PackageValue: json['PackageValue'] == null
          ? null
          : (json['PackageValue'] as double),
      PackageCurrency: json['PackageCurrency'] == null
          ? null
          : (json['PackageCurrency'] as String),
      ParcelDescription: json['ParcelDescription'] == null
          ? null
          : (json['ParcelDescription'] as String),
      ParcelQuantity: json['ParcelQuantity'] == null
          ? null
          : (json['ParcelQuantity'] as int),
      ExternalId:
          json['ExternalId'] == null ? null : (json['ExternalId'] as String),
      id: json['id'] == null ? null : (json['id'] as int),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'FailedRequestId': FailedRequestId,
      'DropAddress': DropAddress,
      'package': package,
      'dimensions': dimensions,
      'ParcelDimensionsList': ParcelDimensionsList,
      'OrderItems': OrderItems,
      'CodAmount': CodAmount,
      'CodCurrency': CodCurrency,
      'ActualWeight': ActualWeight,
      'VolumetricWeight': VolumetricWeight,
      'notes': notes,
      'PackageValue': PackageValue,
      'PackageCurrency': PackageCurrency,
      'ParcelDescription': ParcelDescription,
      'ParcelQuantity': ParcelQuantity,
      'ExternalId': ExternalId,
      'id': id,
      'custom_properties': custom_properties,
    };
  }

  AddShipmentFromFailedConnectorRequestPostRequest copyWith({
    int? FailedRequestId,
    Map<String, dynamic>? DropAddress,
    String? package,
    Map<String, dynamic>? dimensions,
    List<String>? ParcelDimensionsList,
    List<String>? OrderItems,
    double? CodAmount,
    String? CodCurrency,
    double? ActualWeight,
    double? VolumetricWeight,
    String? notes,
    double? PackageValue,
    String? PackageCurrency,
    String? ParcelDescription,
    int? ParcelQuantity,
    String? ExternalId,
    int? id,
    Map<String, dynamic>? custom_properties,
  }) {
    return AddShipmentFromFailedConnectorRequestPostRequest(
      FailedRequestId: FailedRequestId ?? this.FailedRequestId,
      DropAddress: DropAddress ?? this.DropAddress,
      package: package ?? this.package,
      dimensions: dimensions ?? this.dimensions,
      ParcelDimensionsList: ParcelDimensionsList ?? this.ParcelDimensionsList,
      OrderItems: OrderItems ?? this.OrderItems,
      CodAmount: CodAmount ?? this.CodAmount,
      CodCurrency: CodCurrency ?? this.CodCurrency,
      ActualWeight: ActualWeight ?? this.ActualWeight,
      VolumetricWeight: VolumetricWeight ?? this.VolumetricWeight,
      notes: notes ?? this.notes,
      PackageValue: PackageValue ?? this.PackageValue,
      PackageCurrency: PackageCurrency ?? this.PackageCurrency,
      ParcelDescription: ParcelDescription ?? this.ParcelDescription,
      ParcelQuantity: ParcelQuantity ?? this.ParcelQuantity,
      ExternalId: ExternalId ?? this.ExternalId,
      id: id ?? this.id,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      FailedRequestId,
      DropAddress,
      package,
      dimensions,
      ParcelDimensionsList,
      OrderItems,
      CodAmount,
      CodCurrency,
      ActualWeight,
      VolumetricWeight,
      notes,
      PackageValue,
      PackageCurrency,
      ParcelDescription,
      ParcelQuantity,
      ExternalId,
      id,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
