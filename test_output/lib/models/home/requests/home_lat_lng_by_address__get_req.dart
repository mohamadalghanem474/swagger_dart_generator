import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class LatLngByAddressGetRequest extends Equatable {
  const LatLngByAddressGetRequest({this.address});

  final String? address;

  static LatLngByAddressGetRequest fromJson(Map<String, dynamic> json) {
    return LatLngByAddressGetRequest(
        address: json['address'] == null ? null : (json['address'] as String));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'address': address};
  }

  LatLngByAddressGetRequest copyWith({String? address}) {
    return LatLngByAddressGetRequest(address: address ?? this.address);
  }

  @override
  List<Object?> get props {
    return [address];
  }

  @override
  bool get stringify {
    return true;
  }
}
