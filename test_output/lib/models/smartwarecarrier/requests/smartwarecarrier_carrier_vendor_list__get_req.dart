import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CarrierVendorListGetRequest extends Equatable {
  const CarrierVendorListGetRequest({
    this.storeid,
    this.isdomestic,
  });

  final int? storeid;

  final bool? isdomestic;

  static CarrierVendorListGetRequest fromJson(Map<String, dynamic> json) {
    return CarrierVendorListGetRequest(
      storeid: json['storeid'] == null ? null : (json['storeid'] as int),
      isdomestic:
          json['isdomestic'] == null ? null : (json['isdomestic'] as bool),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'storeid': storeid,
      'isdomestic': isdomestic,
    };
  }

  CarrierVendorListGetRequest copyWith({
    int? storeid,
    bool? isdomestic,
  }) {
    return CarrierVendorListGetRequest(
      storeid: storeid ?? this.storeid,
      isdomestic: isdomestic ?? this.isdomestic,
    );
  }

  @override
  List<Object?> get props {
    return [
      storeid,
      isdomestic,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
