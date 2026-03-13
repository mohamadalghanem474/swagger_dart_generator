import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class EstimateShippingPostResponse extends Equatable {
  const EstimateShippingPostResponse({
    this.shipping_options,
    this.success,
    this.errors,
    this.custom_properties,
  });

  final List<String>? shipping_options;

  final bool? success;

  final List<String>? errors;

  final Map<String, dynamic>? custom_properties;

  static EstimateShippingPostResponse fromJson(Map<String, dynamic> json) {
    return EstimateShippingPostResponse(
      shipping_options:
          json['shipping_options'] == null ? null : json['shipping_options'],
      success: json['success'] == null ? null : (json['success'] as bool),
      errors: json['errors'] == null ? null : json['errors'],
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'shipping_options': shipping_options,
      'success': success,
      'errors': errors,
      'custom_properties': custom_properties,
    };
  }

  EstimateShippingPostResponse copyWith({
    List<String>? shipping_options,
    bool? success,
    List<String>? errors,
    Map<String, dynamic>? custom_properties,
  }) {
    return EstimateShippingPostResponse(
      shipping_options: shipping_options ?? this.shipping_options,
      success: success ?? this.success,
      errors: errors ?? this.errors,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      shipping_options,
      success,
      errors,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
