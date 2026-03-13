import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class EnterPaymentInfoPostResponse extends Equatable {
  const EnterPaymentInfoPostResponse({
    this.terms_of_service_on_order_confirm_page,
    this.terms_of_service_popup,
    this.min_order_total_warning,
    this.warnings,
    this.custom_properties,
  });

  final bool? terms_of_service_on_order_confirm_page;

  final bool? terms_of_service_popup;

  final String? min_order_total_warning;

  final List<String>? warnings;

  final Map<String, dynamic>? custom_properties;

  static EnterPaymentInfoPostResponse fromJson(Map<String, dynamic> json) {
    return EnterPaymentInfoPostResponse(
      terms_of_service_on_order_confirm_page:
          json['terms_of_service_on_order_confirm_page'] == null
              ? null
              : (json['terms_of_service_on_order_confirm_page'] as bool),
      terms_of_service_popup: json['terms_of_service_popup'] == null
          ? null
          : (json['terms_of_service_popup'] as bool),
      min_order_total_warning: json['min_order_total_warning'] == null
          ? null
          : (json['min_order_total_warning'] as String),
      warnings: json['warnings'] == null ? null : json['warnings'],
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'terms_of_service_on_order_confirm_page':
          terms_of_service_on_order_confirm_page,
      'terms_of_service_popup': terms_of_service_popup,
      'min_order_total_warning': min_order_total_warning,
      'warnings': warnings,
      'custom_properties': custom_properties,
    };
  }

  EnterPaymentInfoPostResponse copyWith({
    bool? terms_of_service_on_order_confirm_page,
    bool? terms_of_service_popup,
    String? min_order_total_warning,
    List<String>? warnings,
    Map<String, dynamic>? custom_properties,
  }) {
    return EnterPaymentInfoPostResponse(
      terms_of_service_on_order_confirm_page:
          terms_of_service_on_order_confirm_page ??
              this.terms_of_service_on_order_confirm_page,
      terms_of_service_popup:
          terms_of_service_popup ?? this.terms_of_service_popup,
      min_order_total_warning:
          min_order_total_warning ?? this.min_order_total_warning,
      warnings: warnings ?? this.warnings,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      terms_of_service_on_order_confirm_page,
      terms_of_service_popup,
      min_order_total_warning,
      warnings,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
