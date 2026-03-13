import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CreateWarehouseForMarketPlacePostRequest extends Equatable {
  const CreateWarehouseForMarketPlacePostRequest({
    this.Name,
    this.IsActive,
    this.Address,
  });

  final String? Name;

  final bool? IsActive;

  final Map<String, dynamic>? Address;

  static CreateWarehouseForMarketPlacePostRequest fromJson(
      Map<String, dynamic> json) {
    return CreateWarehouseForMarketPlacePostRequest(
      Name: json['Name'] == null ? null : (json['Name'] as String),
      IsActive: json['IsActive'] == null ? null : (json['IsActive'] as bool),
      Address: json['Address'] == null
          ? null
          : (json['Address'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'Name': Name,
      'IsActive': IsActive,
      'Address': Address,
    };
  }

  CreateWarehouseForMarketPlacePostRequest copyWith({
    String? Name,
    bool? IsActive,
    Map<String, dynamic>? Address,
  }) {
    return CreateWarehouseForMarketPlacePostRequest(
      Name: Name ?? this.Name,
      IsActive: IsActive ?? this.IsActive,
      Address: Address ?? this.Address,
    );
  }

  @override
  List<Object?> get props {
    return [
      Name,
      IsActive,
      Address,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
