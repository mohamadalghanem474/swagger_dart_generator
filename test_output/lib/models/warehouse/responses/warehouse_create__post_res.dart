import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CreatePostResponse extends Equatable {
  const CreatePostResponse({
    this.name,
    this.url,
    this.ssl_enabled,
    this.hosts,
    this.default_language_id,
    this.display_order,
    this.company_name,
    this.company_address,
    this.company_phone_number,
    this.company_vat,
    this.store_flag,
    this.icon_id,
    this.latitude,
    this.longitude,
    this.id,
  });

  final String? name;

  final String? url;

  final bool? ssl_enabled;

  final String? hosts;

  final int? default_language_id;

  final int? display_order;

  final String? company_name;

  final String? company_address;

  final String? company_phone_number;

  final String? company_vat;

  final String? store_flag;

  final int? icon_id;

  final double? latitude;

  final double? longitude;

  final int? id;

  static CreatePostResponse fromJson(Map<String, dynamic> json) {
    return CreatePostResponse(
      name: json['name'] == null ? null : (json['name'] as String),
      url: json['url'] == null ? null : (json['url'] as String),
      ssl_enabled:
          json['ssl_enabled'] == null ? null : (json['ssl_enabled'] as bool),
      hosts: json['hosts'] == null ? null : (json['hosts'] as String),
      default_language_id: json['default_language_id'] == null
          ? null
          : (json['default_language_id'] as int),
      display_order:
          json['display_order'] == null ? null : (json['display_order'] as int),
      company_name: json['company_name'] == null
          ? null
          : (json['company_name'] as String),
      company_address: json['company_address'] == null
          ? null
          : (json['company_address'] as String),
      company_phone_number: json['company_phone_number'] == null
          ? null
          : (json['company_phone_number'] as String),
      company_vat:
          json['company_vat'] == null ? null : (json['company_vat'] as String),
      store_flag:
          json['store_flag'] == null ? null : (json['store_flag'] as String),
      icon_id: json['icon_id'] == null ? null : (json['icon_id'] as int),
      latitude: json['latitude'] == null ? null : (json['latitude'] as double),
      longitude:
          json['longitude'] == null ? null : (json['longitude'] as double),
      id: json['id'] == null ? null : (json['id'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'url': url,
      'ssl_enabled': ssl_enabled,
      'hosts': hosts,
      'default_language_id': default_language_id,
      'display_order': display_order,
      'company_name': company_name,
      'company_address': company_address,
      'company_phone_number': company_phone_number,
      'company_vat': company_vat,
      'store_flag': store_flag,
      'icon_id': icon_id,
      'latitude': latitude,
      'longitude': longitude,
      'id': id,
    };
  }

  CreatePostResponse copyWith({
    String? name,
    String? url,
    bool? ssl_enabled,
    String? hosts,
    int? default_language_id,
    int? display_order,
    String? company_name,
    String? company_address,
    String? company_phone_number,
    String? company_vat,
    String? store_flag,
    int? icon_id,
    double? latitude,
    double? longitude,
    int? id,
  }) {
    return CreatePostResponse(
      name: name ?? this.name,
      url: url ?? this.url,
      ssl_enabled: ssl_enabled ?? this.ssl_enabled,
      hosts: hosts ?? this.hosts,
      default_language_id: default_language_id ?? this.default_language_id,
      display_order: display_order ?? this.display_order,
      company_name: company_name ?? this.company_name,
      company_address: company_address ?? this.company_address,
      company_phone_number: company_phone_number ?? this.company_phone_number,
      company_vat: company_vat ?? this.company_vat,
      store_flag: store_flag ?? this.store_flag,
      icon_id: icon_id ?? this.icon_id,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props {
    return [
      name,
      url,
      ssl_enabled,
      hosts,
      default_language_id,
      display_order,
      company_name,
      company_address,
      company_phone_number,
      company_vat,
      store_flag,
      icon_id,
      latitude,
      longitude,
      id,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
