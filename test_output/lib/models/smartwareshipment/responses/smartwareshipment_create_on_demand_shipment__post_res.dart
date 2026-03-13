import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CreateOnDemandShipmentPostResponse extends Equatable {
  const CreateOnDemandShipmentPostResponse({
    this.createAccount,
    this.notifyByEmail,
    this.pickupAddress,
    this.dropOffAddress,
    this.ActualWeight,
    this.PackageType,
    this.Length,
    this.Width,
    this.Height,
    this.Notes,
    this.ParcelQuantity,
    this.ParcelCurrency,
    this.ParcelPackageValue,
    this.ParcelDescription,
    this.SystemShipmentProvider,
    this.MethodName,
    this.MethodDescription,
    this.Price,
    this.ParcelDimensionsList,
  });

  final bool? createAccount;

  final bool? notifyByEmail;

  final Map<String, dynamic>? pickupAddress;

  final Map<String, dynamic>? dropOffAddress;

  final double? ActualWeight;

  final String? PackageType;

  final double? Length;

  final double? Width;

  final double? Height;

  final String? Notes;

  final int? ParcelQuantity;

  final String? ParcelCurrency;

  final double? ParcelPackageValue;

  final String? ParcelDescription;

  final String? SystemShipmentProvider;

  final String? MethodName;

  final String? MethodDescription;

  final double? Price;

  final List<String>? ParcelDimensionsList;

  static CreateOnDemandShipmentPostResponse fromJson(
      Map<String, dynamic> json) {
    return CreateOnDemandShipmentPostResponse(
      createAccount: json['createAccount'] == null
          ? null
          : (json['createAccount'] as bool),
      notifyByEmail: json['notifyByEmail'] == null
          ? null
          : (json['notifyByEmail'] as bool),
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
      ParcelQuantity: json['ParcelQuantity'] == null
          ? null
          : (json['ParcelQuantity'] as int),
      ParcelCurrency: json['ParcelCurrency'] == null
          ? null
          : (json['ParcelCurrency'] as String),
      ParcelPackageValue: json['ParcelPackageValue'] == null
          ? null
          : (json['ParcelPackageValue'] as double),
      ParcelDescription: json['ParcelDescription'] == null
          ? null
          : (json['ParcelDescription'] as String),
      SystemShipmentProvider: json['SystemShipmentProvider'] == null
          ? null
          : (json['SystemShipmentProvider'] as String),
      MethodName:
          json['MethodName'] == null ? null : (json['MethodName'] as String),
      MethodDescription: json['MethodDescription'] == null
          ? null
          : (json['MethodDescription'] as String),
      Price: json['Price'] == null ? null : (json['Price'] as double),
      ParcelDimensionsList: json['ParcelDimensionsList'] == null
          ? null
          : json['ParcelDimensionsList'],
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'createAccount': createAccount,
      'notifyByEmail': notifyByEmail,
      'pickupAddress': pickupAddress,
      'dropOffAddress': dropOffAddress,
      'ActualWeight': ActualWeight,
      'PackageType': PackageType,
      'Length': Length,
      'Width': Width,
      'Height': Height,
      'Notes': Notes,
      'ParcelQuantity': ParcelQuantity,
      'ParcelCurrency': ParcelCurrency,
      'ParcelPackageValue': ParcelPackageValue,
      'ParcelDescription': ParcelDescription,
      'SystemShipmentProvider': SystemShipmentProvider,
      'MethodName': MethodName,
      'MethodDescription': MethodDescription,
      'Price': Price,
      'ParcelDimensionsList': ParcelDimensionsList,
    };
  }

  CreateOnDemandShipmentPostResponse copyWith({
    bool? createAccount,
    bool? notifyByEmail,
    Map<String, dynamic>? pickupAddress,
    Map<String, dynamic>? dropOffAddress,
    double? ActualWeight,
    String? PackageType,
    double? Length,
    double? Width,
    double? Height,
    String? Notes,
    int? ParcelQuantity,
    String? ParcelCurrency,
    double? ParcelPackageValue,
    String? ParcelDescription,
    String? SystemShipmentProvider,
    String? MethodName,
    String? MethodDescription,
    double? Price,
    List<String>? ParcelDimensionsList,
  }) {
    return CreateOnDemandShipmentPostResponse(
      createAccount: createAccount ?? this.createAccount,
      notifyByEmail: notifyByEmail ?? this.notifyByEmail,
      pickupAddress: pickupAddress ?? this.pickupAddress,
      dropOffAddress: dropOffAddress ?? this.dropOffAddress,
      ActualWeight: ActualWeight ?? this.ActualWeight,
      PackageType: PackageType ?? this.PackageType,
      Length: Length ?? this.Length,
      Width: Width ?? this.Width,
      Height: Height ?? this.Height,
      Notes: Notes ?? this.Notes,
      ParcelQuantity: ParcelQuantity ?? this.ParcelQuantity,
      ParcelCurrency: ParcelCurrency ?? this.ParcelCurrency,
      ParcelPackageValue: ParcelPackageValue ?? this.ParcelPackageValue,
      ParcelDescription: ParcelDescription ?? this.ParcelDescription,
      SystemShipmentProvider:
          SystemShipmentProvider ?? this.SystemShipmentProvider,
      MethodName: MethodName ?? this.MethodName,
      MethodDescription: MethodDescription ?? this.MethodDescription,
      Price: Price ?? this.Price,
      ParcelDimensionsList: ParcelDimensionsList ?? this.ParcelDimensionsList,
    );
  }

  @override
  List<Object?> get props {
    return [
      createAccount,
      notifyByEmail,
      pickupAddress,
      dropOffAddress,
      ActualWeight,
      PackageType,
      Length,
      Width,
      Height,
      Notes,
      ParcelQuantity,
      ParcelCurrency,
      ParcelPackageValue,
      ParcelDescription,
      SystemShipmentProvider,
      MethodName,
      MethodDescription,
      Price,
      ParcelDimensionsList,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
