import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class AddressVendorReceiventListGetResponse extends Equatable {
  const AddressVendorReceiventListGetResponse({
    this.addresses,
    this.custom_properties,
  });

  final List<String>? addresses;

  final Map<String, dynamic>? custom_properties;

  static AddressVendorReceiventListGetResponse fromJson(
      Map<String, dynamic> json) {
    return AddressVendorReceiventListGetResponse(
      addresses: json['addresses'] == null ? null : json['addresses'],
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'addresses': addresses,
      'custom_properties': custom_properties,
    };
  }

  AddressVendorReceiventListGetResponse copyWith({
    List<String>? addresses,
    Map<String, dynamic>? custom_properties,
  }) {
    return AddressVendorReceiventListGetResponse(
      addresses: addresses ?? this.addresses,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      addresses,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
