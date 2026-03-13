import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CreateWarehouseForMarketPlacePostResponse extends Equatable {
  const CreateWarehouseForMarketPlacePostResponse({
    this.Name,
    this.ExternalId,
    this.VendorId,
    this.CarrierId,
    this.ThirdParty,
    this.IsActive,
    this.Deleted,
    this.AdminComment,
    this.AddressId,
    this.LimitedToStores,
    this.IsFulfillmentCenter,
    this.ManageByUserId,
    this.IsSpecificForVendors,
    this.FulfillmentProfit,
    this.FulfillmentCost,
    this.FulfillmentProviderSystemName,
    this.Id,
  });

  final String? Name;

  final String? ExternalId;

  final int? VendorId;

  final int? CarrierId;

  final bool? ThirdParty;

  final bool? IsActive;

  final bool? Deleted;

  final String? AdminComment;

  final int? AddressId;

  final bool? LimitedToStores;

  final bool? IsFulfillmentCenter;

  final int? ManageByUserId;

  final bool? IsSpecificForVendors;

  final double? FulfillmentProfit;

  final double? FulfillmentCost;

  final String? FulfillmentProviderSystemName;

  final int? Id;

  static CreateWarehouseForMarketPlacePostResponse fromJson(
      Map<String, dynamic> json) {
    return CreateWarehouseForMarketPlacePostResponse(
      Name: json['Name'] == null ? null : (json['Name'] as String),
      ExternalId:
          json['ExternalId'] == null ? null : (json['ExternalId'] as String),
      VendorId: json['VendorId'] == null ? null : (json['VendorId'] as int),
      CarrierId: json['CarrierId'] == null ? null : (json['CarrierId'] as int),
      ThirdParty:
          json['ThirdParty'] == null ? null : (json['ThirdParty'] as bool),
      IsActive: json['IsActive'] == null ? null : (json['IsActive'] as bool),
      Deleted: json['Deleted'] == null ? null : (json['Deleted'] as bool),
      AdminComment: json['AdminComment'] == null
          ? null
          : (json['AdminComment'] as String),
      AddressId: json['AddressId'] == null ? null : (json['AddressId'] as int),
      LimitedToStores: json['LimitedToStores'] == null
          ? null
          : (json['LimitedToStores'] as bool),
      IsFulfillmentCenter: json['IsFulfillmentCenter'] == null
          ? null
          : (json['IsFulfillmentCenter'] as bool),
      ManageByUserId: json['ManageByUserId'] == null
          ? null
          : (json['ManageByUserId'] as int),
      IsSpecificForVendors: json['IsSpecificForVendors'] == null
          ? null
          : (json['IsSpecificForVendors'] as bool),
      FulfillmentProfit: json['FulfillmentProfit'] == null
          ? null
          : (json['FulfillmentProfit'] as double),
      FulfillmentCost: json['FulfillmentCost'] == null
          ? null
          : (json['FulfillmentCost'] as double),
      FulfillmentProviderSystemName:
          json['FulfillmentProviderSystemName'] == null
              ? null
              : (json['FulfillmentProviderSystemName'] as String),
      Id: json['Id'] == null ? null : (json['Id'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'Name': Name,
      'ExternalId': ExternalId,
      'VendorId': VendorId,
      'CarrierId': CarrierId,
      'ThirdParty': ThirdParty,
      'IsActive': IsActive,
      'Deleted': Deleted,
      'AdminComment': AdminComment,
      'AddressId': AddressId,
      'LimitedToStores': LimitedToStores,
      'IsFulfillmentCenter': IsFulfillmentCenter,
      'ManageByUserId': ManageByUserId,
      'IsSpecificForVendors': IsSpecificForVendors,
      'FulfillmentProfit': FulfillmentProfit,
      'FulfillmentCost': FulfillmentCost,
      'FulfillmentProviderSystemName': FulfillmentProviderSystemName,
      'Id': Id,
    };
  }

  CreateWarehouseForMarketPlacePostResponse copyWith({
    String? Name,
    String? ExternalId,
    int? VendorId,
    int? CarrierId,
    bool? ThirdParty,
    bool? IsActive,
    bool? Deleted,
    String? AdminComment,
    int? AddressId,
    bool? LimitedToStores,
    bool? IsFulfillmentCenter,
    int? ManageByUserId,
    bool? IsSpecificForVendors,
    double? FulfillmentProfit,
    double? FulfillmentCost,
    String? FulfillmentProviderSystemName,
    int? Id,
  }) {
    return CreateWarehouseForMarketPlacePostResponse(
      Name: Name ?? this.Name,
      ExternalId: ExternalId ?? this.ExternalId,
      VendorId: VendorId ?? this.VendorId,
      CarrierId: CarrierId ?? this.CarrierId,
      ThirdParty: ThirdParty ?? this.ThirdParty,
      IsActive: IsActive ?? this.IsActive,
      Deleted: Deleted ?? this.Deleted,
      AdminComment: AdminComment ?? this.AdminComment,
      AddressId: AddressId ?? this.AddressId,
      LimitedToStores: LimitedToStores ?? this.LimitedToStores,
      IsFulfillmentCenter: IsFulfillmentCenter ?? this.IsFulfillmentCenter,
      ManageByUserId: ManageByUserId ?? this.ManageByUserId,
      IsSpecificForVendors: IsSpecificForVendors ?? this.IsSpecificForVendors,
      FulfillmentProfit: FulfillmentProfit ?? this.FulfillmentProfit,
      FulfillmentCost: FulfillmentCost ?? this.FulfillmentCost,
      FulfillmentProviderSystemName:
          FulfillmentProviderSystemName ?? this.FulfillmentProviderSystemName,
      Id: Id ?? this.Id,
    );
  }

  @override
  List<Object?> get props {
    return [
      Name,
      ExternalId,
      VendorId,
      CarrierId,
      ThirdParty,
      IsActive,
      Deleted,
      AdminComment,
      AddressId,
      LimitedToStores,
      IsFulfillmentCenter,
      ManageByUserId,
      IsSpecificForVendors,
      FulfillmentProfit,
      FulfillmentCost,
      FulfillmentProviderSystemName,
      Id,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
