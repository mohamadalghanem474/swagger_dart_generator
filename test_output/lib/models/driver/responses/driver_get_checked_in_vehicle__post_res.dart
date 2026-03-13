import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetCheckedInVehiclePostResponse extends Equatable {
  const GetCheckedInVehiclePostResponse({
    this.MarketId,
    this.VehicleMarket,
    this.modelId,
    this.VehicleModels,
    this.driverId,
    this.VehicleDrivers,
    this.VehicleTypeId,
    this.AvaliableVehicleType,
    this.VehicleStatusId,
    this.AvaliableVehicleStatus,
    this.CountryId,
    this.CountryName,
    this.AvailableCountries,
    this.StateId,
    this.StateName,
    this.AvailableStates,
    this.type,
    this.marketName,
    this.modelName,
    this.modelYear,
    this.status,
    this.location,
    this.Note,
    this.DriverName,
    this.DriverPhone,
    this.plateNumber,
    this.Pictures,
    this.vehicleHistories,
    this.PictureIds,
    this.PictureModelList,
    this.Latitude,
    this.Longitude,
    this.CheckAsUnAvailable,
    this.Id,
    this.CustomProperties,
    this.friendlyPluginName,
  });

  final int? MarketId;

  final List<String>? VehicleMarket;

  final int? modelId;

  final List<String>? VehicleModels;

  final int? driverId;

  final List<String>? VehicleDrivers;

  final int? VehicleTypeId;

  final List<String>? AvaliableVehicleType;

  final int? VehicleStatusId;

  final List<String>? AvaliableVehicleStatus;

  final int? CountryId;

  final String? CountryName;

  final List<String>? AvailableCountries;

  final int? StateId;

  final String? StateName;

  final List<String>? AvailableStates;

  final String? type;

  final String? marketName;

  final String? modelName;

  final String? modelYear;

  final String? status;

  final String? location;

  final String? Note;

  final String? DriverName;

  final String? DriverPhone;

  final String? plateNumber;

  final List<String>? Pictures;

  final List<String>? vehicleHistories;

  final List<int>? PictureIds;

  final List<String>? PictureModelList;

  final double? Latitude;

  final double? Longitude;

  final bool? CheckAsUnAvailable;

  final int? Id;

  final Map<String, dynamic>? CustomProperties;

  final String? friendlyPluginName;

  static GetCheckedInVehiclePostResponse fromJson(Map<String, dynamic> json) {
    return GetCheckedInVehiclePostResponse(
      MarketId: json['MarketId'] == null ? null : (json['MarketId'] as int),
      VehicleMarket:
          json['VehicleMarket'] == null ? null : json['VehicleMarket'],
      modelId: json['modelId'] == null ? null : (json['modelId'] as int),
      VehicleModels:
          json['VehicleModels'] == null ? null : json['VehicleModels'],
      driverId: json['driverId'] == null ? null : (json['driverId'] as int),
      VehicleDrivers:
          json['VehicleDrivers'] == null ? null : json['VehicleDrivers'],
      VehicleTypeId:
          json['VehicleTypeId'] == null ? null : (json['VehicleTypeId'] as int),
      AvaliableVehicleType: json['AvaliableVehicleType'] == null
          ? null
          : json['AvaliableVehicleType'],
      VehicleStatusId: json['VehicleStatusId'] == null
          ? null
          : (json['VehicleStatusId'] as int),
      AvaliableVehicleStatus: json['AvaliableVehicleStatus'] == null
          ? null
          : json['AvaliableVehicleStatus'],
      CountryId: json['CountryId'] == null ? null : (json['CountryId'] as int),
      CountryName:
          json['CountryName'] == null ? null : (json['CountryName'] as String),
      AvailableCountries: json['AvailableCountries'] == null
          ? null
          : json['AvailableCountries'],
      StateId: json['StateId'] == null ? null : (json['StateId'] as int),
      StateName:
          json['StateName'] == null ? null : (json['StateName'] as String),
      AvailableStates:
          json['AvailableStates'] == null ? null : json['AvailableStates'],
      type: json['type'] == null ? null : (json['type'] as String),
      marketName:
          json['marketName'] == null ? null : (json['marketName'] as String),
      modelName:
          json['modelName'] == null ? null : (json['modelName'] as String),
      modelYear:
          json['modelYear'] == null ? null : (json['modelYear'] as String),
      status: json['status'] == null ? null : (json['status'] as String),
      location: json['location'] == null ? null : (json['location'] as String),
      Note: json['Note'] == null ? null : (json['Note'] as String),
      DriverName:
          json['DriverName'] == null ? null : (json['DriverName'] as String),
      DriverPhone:
          json['DriverPhone'] == null ? null : (json['DriverPhone'] as String),
      plateNumber:
          json['plateNumber'] == null ? null : (json['plateNumber'] as String),
      Pictures: json['Pictures'] == null ? null : json['Pictures'],
      vehicleHistories:
          json['vehicleHistories'] == null ? null : json['vehicleHistories'],
      PictureIds: json['PictureIds'] == null ? null : json['PictureIds'],
      PictureModelList:
          json['PictureModelList'] == null ? null : json['PictureModelList'],
      Latitude: json['Latitude'] == null ? null : (json['Latitude'] as double),
      Longitude:
          json['Longitude'] == null ? null : (json['Longitude'] as double),
      CheckAsUnAvailable: json['CheckAsUnAvailable'] == null
          ? null
          : (json['CheckAsUnAvailable'] as bool),
      Id: json['Id'] == null ? null : (json['Id'] as int),
      CustomProperties: json['CustomProperties'] == null
          ? null
          : (json['CustomProperties'] as Map<String, dynamic>),
      friendlyPluginName: json['friendlyPluginName'] == null
          ? null
          : (json['friendlyPluginName'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'MarketId': MarketId,
      'VehicleMarket': VehicleMarket,
      'modelId': modelId,
      'VehicleModels': VehicleModels,
      'driverId': driverId,
      'VehicleDrivers': VehicleDrivers,
      'VehicleTypeId': VehicleTypeId,
      'AvaliableVehicleType': AvaliableVehicleType,
      'VehicleStatusId': VehicleStatusId,
      'AvaliableVehicleStatus': AvaliableVehicleStatus,
      'CountryId': CountryId,
      'CountryName': CountryName,
      'AvailableCountries': AvailableCountries,
      'StateId': StateId,
      'StateName': StateName,
      'AvailableStates': AvailableStates,
      'type': type,
      'marketName': marketName,
      'modelName': modelName,
      'modelYear': modelYear,
      'status': status,
      'location': location,
      'Note': Note,
      'DriverName': DriverName,
      'DriverPhone': DriverPhone,
      'plateNumber': plateNumber,
      'Pictures': Pictures,
      'vehicleHistories': vehicleHistories,
      'PictureIds': PictureIds,
      'PictureModelList': PictureModelList,
      'Latitude': Latitude,
      'Longitude': Longitude,
      'CheckAsUnAvailable': CheckAsUnAvailable,
      'Id': Id,
      'CustomProperties': CustomProperties,
      'friendlyPluginName': friendlyPluginName,
    };
  }

  GetCheckedInVehiclePostResponse copyWith({
    int? MarketId,
    List<String>? VehicleMarket,
    int? modelId,
    List<String>? VehicleModels,
    int? driverId,
    List<String>? VehicleDrivers,
    int? VehicleTypeId,
    List<String>? AvaliableVehicleType,
    int? VehicleStatusId,
    List<String>? AvaliableVehicleStatus,
    int? CountryId,
    String? CountryName,
    List<String>? AvailableCountries,
    int? StateId,
    String? StateName,
    List<String>? AvailableStates,
    String? type,
    String? marketName,
    String? modelName,
    String? modelYear,
    String? status,
    String? location,
    String? Note,
    String? DriverName,
    String? DriverPhone,
    String? plateNumber,
    List<String>? Pictures,
    List<String>? vehicleHistories,
    List<int>? PictureIds,
    List<String>? PictureModelList,
    double? Latitude,
    double? Longitude,
    bool? CheckAsUnAvailable,
    int? Id,
    Map<String, dynamic>? CustomProperties,
    String? friendlyPluginName,
  }) {
    return GetCheckedInVehiclePostResponse(
      MarketId: MarketId ?? this.MarketId,
      VehicleMarket: VehicleMarket ?? this.VehicleMarket,
      modelId: modelId ?? this.modelId,
      VehicleModels: VehicleModels ?? this.VehicleModels,
      driverId: driverId ?? this.driverId,
      VehicleDrivers: VehicleDrivers ?? this.VehicleDrivers,
      VehicleTypeId: VehicleTypeId ?? this.VehicleTypeId,
      AvaliableVehicleType: AvaliableVehicleType ?? this.AvaliableVehicleType,
      VehicleStatusId: VehicleStatusId ?? this.VehicleStatusId,
      AvaliableVehicleStatus:
          AvaliableVehicleStatus ?? this.AvaliableVehicleStatus,
      CountryId: CountryId ?? this.CountryId,
      CountryName: CountryName ?? this.CountryName,
      AvailableCountries: AvailableCountries ?? this.AvailableCountries,
      StateId: StateId ?? this.StateId,
      StateName: StateName ?? this.StateName,
      AvailableStates: AvailableStates ?? this.AvailableStates,
      type: type ?? this.type,
      marketName: marketName ?? this.marketName,
      modelName: modelName ?? this.modelName,
      modelYear: modelYear ?? this.modelYear,
      status: status ?? this.status,
      location: location ?? this.location,
      Note: Note ?? this.Note,
      DriverName: DriverName ?? this.DriverName,
      DriverPhone: DriverPhone ?? this.DriverPhone,
      plateNumber: plateNumber ?? this.plateNumber,
      Pictures: Pictures ?? this.Pictures,
      vehicleHistories: vehicleHistories ?? this.vehicleHistories,
      PictureIds: PictureIds ?? this.PictureIds,
      PictureModelList: PictureModelList ?? this.PictureModelList,
      Latitude: Latitude ?? this.Latitude,
      Longitude: Longitude ?? this.Longitude,
      CheckAsUnAvailable: CheckAsUnAvailable ?? this.CheckAsUnAvailable,
      Id: Id ?? this.Id,
      CustomProperties: CustomProperties ?? this.CustomProperties,
      friendlyPluginName: friendlyPluginName ?? this.friendlyPluginName,
    );
  }

  @override
  List<Object?> get props {
    return [
      MarketId,
      VehicleMarket,
      modelId,
      VehicleModels,
      driverId,
      VehicleDrivers,
      VehicleTypeId,
      AvaliableVehicleType,
      VehicleStatusId,
      AvaliableVehicleStatus,
      CountryId,
      CountryName,
      AvailableCountries,
      StateId,
      StateName,
      AvailableStates,
      type,
      marketName,
      modelName,
      modelYear,
      status,
      location,
      Note,
      DriverName,
      DriverPhone,
      plateNumber,
      Pictures,
      vehicleHistories,
      PictureIds,
      PictureModelList,
      Latitude,
      Longitude,
      CheckAsUnAvailable,
      Id,
      CustomProperties,
      friendlyPluginName,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
