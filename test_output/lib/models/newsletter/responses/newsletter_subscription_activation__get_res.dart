import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SubscriptionActivationGetResponse extends Equatable {
  const SubscriptionActivationGetResponse({
    this.result,
    this.custom_properties,
  });

  final String? result;

  final Map<String, dynamic>? custom_properties;

  static SubscriptionActivationGetResponse fromJson(Map<String, dynamic> json) {
    return SubscriptionActivationGetResponse(
      result: json['result'] == null ? null : (json['result'] as String),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'result': result,
      'custom_properties': custom_properties,
    };
  }

  SubscriptionActivationGetResponse copyWith({
    String? result,
    Map<String, dynamic>? custom_properties,
  }) {
    return SubscriptionActivationGetResponse(
      result: result ?? this.result,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      result,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
