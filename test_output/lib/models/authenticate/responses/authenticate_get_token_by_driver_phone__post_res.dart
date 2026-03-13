import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetTokenByDriverPhonePostResponse extends Equatable {
  const GetTokenByDriverPhonePostResponse({
    this.username,
    this.customer_id,
    this.vendor_id,
    this.store_id,
    this.store_name,
    this.store_url,
    this.store_address,
    this.country_id,
    this.account_type_id,
    this.account_type_name,
    this.driver_id,
    this.driver_name,
    this.token,
    this.latitude,
    this.longitude,
  });

  final String? username;

  final int? customer_id;

  final int? vendor_id;

  final int? store_id;

  final String? store_name;

  final String? store_url;

  final String? store_address;

  final int? country_id;

  final int? account_type_id;

  final String? account_type_name;

  final int? driver_id;

  final String? driver_name;

  final String? token;

  final double? latitude;

  final double? longitude;

  static GetTokenByDriverPhonePostResponse fromJson(Map<String, dynamic> json) {
    return GetTokenByDriverPhonePostResponse(
      username: json['username'] == null ? null : (json['username'] as String),
      customer_id:
          json['customer_id'] == null ? null : (json['customer_id'] as int),
      vendor_id: json['vendor_id'] == null ? null : (json['vendor_id'] as int),
      store_id: json['store_id'] == null ? null : (json['store_id'] as int),
      store_name:
          json['store_name'] == null ? null : (json['store_name'] as String),
      store_url:
          json['store_url'] == null ? null : (json['store_url'] as String),
      store_address: json['store_address'] == null
          ? null
          : (json['store_address'] as String),
      country_id:
          json['country_id'] == null ? null : (json['country_id'] as int),
      account_type_id: json['account_type_id'] == null
          ? null
          : (json['account_type_id'] as int),
      account_type_name: json['account_type_name'] == null
          ? null
          : (json['account_type_name'] as String),
      driver_id: json['driver_id'] == null ? null : (json['driver_id'] as int),
      driver_name:
          json['driver_name'] == null ? null : (json['driver_name'] as String),
      token: json['token'] == null ? null : (json['token'] as String),
      latitude: json['latitude'] == null ? null : (json['latitude'] as double),
      longitude:
          json['longitude'] == null ? null : (json['longitude'] as double),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'username': username,
      'customer_id': customer_id,
      'vendor_id': vendor_id,
      'store_id': store_id,
      'store_name': store_name,
      'store_url': store_url,
      'store_address': store_address,
      'country_id': country_id,
      'account_type_id': account_type_id,
      'account_type_name': account_type_name,
      'driver_id': driver_id,
      'driver_name': driver_name,
      'token': token,
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  GetTokenByDriverPhonePostResponse copyWith({
    String? username,
    int? customer_id,
    int? vendor_id,
    int? store_id,
    String? store_name,
    String? store_url,
    String? store_address,
    int? country_id,
    int? account_type_id,
    String? account_type_name,
    int? driver_id,
    String? driver_name,
    String? token,
    double? latitude,
    double? longitude,
  }) {
    return GetTokenByDriverPhonePostResponse(
      username: username ?? this.username,
      customer_id: customer_id ?? this.customer_id,
      vendor_id: vendor_id ?? this.vendor_id,
      store_id: store_id ?? this.store_id,
      store_name: store_name ?? this.store_name,
      store_url: store_url ?? this.store_url,
      store_address: store_address ?? this.store_address,
      country_id: country_id ?? this.country_id,
      account_type_id: account_type_id ?? this.account_type_id,
      account_type_name: account_type_name ?? this.account_type_name,
      driver_id: driver_id ?? this.driver_id,
      driver_name: driver_name ?? this.driver_name,
      token: token ?? this.token,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }

  @override
  List<Object?> get props {
    return [
      username,
      customer_id,
      vendor_id,
      store_id,
      store_name,
      store_url,
      store_address,
      country_id,
      account_type_id,
      account_type_name,
      driver_id,
      driver_name,
      token,
      latitude,
      longitude,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
