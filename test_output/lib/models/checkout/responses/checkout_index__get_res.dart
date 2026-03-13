import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class IndexGetResponse extends Equatable {
  const IndexGetResponse({
    this.existing_addresses,
    this.invalid_existing_addresses,
    this.billing_new_address,
    this.ship_to_same_address,
    this.ship_to_same_address_allowed,
    this.new_address_preselected,
    this.custom_properties,
  });

  final List<String>? existing_addresses;

  final List<String>? invalid_existing_addresses;

  final String? billing_new_address;

  final bool? ship_to_same_address;

  final bool? ship_to_same_address_allowed;

  final bool? new_address_preselected;

  final Map<String, dynamic>? custom_properties;

  static IndexGetResponse fromJson(Map<String, dynamic> json) {
    return IndexGetResponse(
      existing_addresses: json['existing_addresses'] == null
          ? null
          : json['existing_addresses'],
      invalid_existing_addresses: json['invalid_existing_addresses'] == null
          ? null
          : json['invalid_existing_addresses'],
      billing_new_address: json['billing_new_address'] == null
          ? null
          : (json['billing_new_address'] as String),
      ship_to_same_address: json['ship_to_same_address'] == null
          ? null
          : (json['ship_to_same_address'] as bool),
      ship_to_same_address_allowed: json['ship_to_same_address_allowed'] == null
          ? null
          : (json['ship_to_same_address_allowed'] as bool),
      new_address_preselected: json['new_address_preselected'] == null
          ? null
          : (json['new_address_preselected'] as bool),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'existing_addresses': existing_addresses,
      'invalid_existing_addresses': invalid_existing_addresses,
      'billing_new_address': billing_new_address,
      'ship_to_same_address': ship_to_same_address,
      'ship_to_same_address_allowed': ship_to_same_address_allowed,
      'new_address_preselected': new_address_preselected,
      'custom_properties': custom_properties,
    };
  }

  IndexGetResponse copyWith({
    List<String>? existing_addresses,
    List<String>? invalid_existing_addresses,
    String? billing_new_address,
    bool? ship_to_same_address,
    bool? ship_to_same_address_allowed,
    bool? new_address_preselected,
    Map<String, dynamic>? custom_properties,
  }) {
    return IndexGetResponse(
      existing_addresses: existing_addresses ?? this.existing_addresses,
      invalid_existing_addresses:
          invalid_existing_addresses ?? this.invalid_existing_addresses,
      billing_new_address: billing_new_address ?? this.billing_new_address,
      ship_to_same_address: ship_to_same_address ?? this.ship_to_same_address,
      ship_to_same_address_allowed:
          ship_to_same_address_allowed ?? this.ship_to_same_address_allowed,
      new_address_preselected:
          new_address_preselected ?? this.new_address_preselected,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      existing_addresses,
      invalid_existing_addresses,
      billing_new_address,
      ship_to_same_address,
      ship_to_same_address_allowed,
      new_address_preselected,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
