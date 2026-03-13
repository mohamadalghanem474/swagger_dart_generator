import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class AddressEditGetResponse extends Equatable {
  const AddressEditGetResponse({
    this.address,
    this.custom_properties,
  });

  final String? address;

  final Map<String, dynamic>? custom_properties;

  static AddressEditGetResponse fromJson(Map<String, dynamic> json) {
    return AddressEditGetResponse(
      address: json['address'] == null ? null : (json['address'] as String),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'address': address,
      'custom_properties': custom_properties,
    };
  }

  AddressEditGetResponse copyWith({
    String? address,
    Map<String, dynamic>? custom_properties,
  }) {
    return AddressEditGetResponse(
      address: address ?? this.address,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      address,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
