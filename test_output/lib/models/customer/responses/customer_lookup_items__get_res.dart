import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class LookupItemsGetResponse extends Equatable {
  const LookupItemsGetResponse({
    this.BusinessType,
    this.Industry,
    this.NumOfShipmentPerM,
    this.IcarryPlan,
  });

  final List<String>? BusinessType;

  final List<String>? Industry;

  final List<String>? NumOfShipmentPerM;

  final List<String>? IcarryPlan;

  static LookupItemsGetResponse fromJson(Map<String, dynamic> json) {
    return LookupItemsGetResponse(
      BusinessType: json['BusinessType'] == null ? null : json['BusinessType'],
      Industry: json['Industry'] == null ? null : json['Industry'],
      NumOfShipmentPerM:
          json['NumOfShipmentPerM'] == null ? null : json['NumOfShipmentPerM'],
      IcarryPlan: json['IcarryPlan'] == null ? null : json['IcarryPlan'],
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'BusinessType': BusinessType,
      'Industry': Industry,
      'NumOfShipmentPerM': NumOfShipmentPerM,
      'IcarryPlan': IcarryPlan,
    };
  }

  LookupItemsGetResponse copyWith({
    List<String>? BusinessType,
    List<String>? Industry,
    List<String>? NumOfShipmentPerM,
    List<String>? IcarryPlan,
  }) {
    return LookupItemsGetResponse(
      BusinessType: BusinessType ?? this.BusinessType,
      Industry: Industry ?? this.Industry,
      NumOfShipmentPerM: NumOfShipmentPerM ?? this.NumOfShipmentPerM,
      IcarryPlan: IcarryPlan ?? this.IcarryPlan,
    );
  }

  @override
  List<Object?> get props {
    return [
      BusinessType,
      Industry,
      NumOfShipmentPerM,
      IcarryPlan,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
