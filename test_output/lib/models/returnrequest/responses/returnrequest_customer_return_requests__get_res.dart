import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CustomerReturnRequestsGetResponse extends Equatable {
  const CustomerReturnRequestsGetResponse({
    this.items,
    this.custom_properties,
  });

  final List<String>? items;

  final Map<String, dynamic>? custom_properties;

  static CustomerReturnRequestsGetResponse fromJson(Map<String, dynamic> json) {
    return CustomerReturnRequestsGetResponse(
      items: json['items'] == null ? null : json['items'],
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'items': items,
      'custom_properties': custom_properties,
    };
  }

  CustomerReturnRequestsGetResponse copyWith({
    List<String>? items,
    Map<String, dynamic>? custom_properties,
  }) {
    return CustomerReturnRequestsGetResponse(
      items: items ?? this.items,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      items,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
