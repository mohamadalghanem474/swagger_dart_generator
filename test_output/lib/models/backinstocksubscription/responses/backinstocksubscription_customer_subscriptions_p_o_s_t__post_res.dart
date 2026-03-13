import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CustomerSubscriptionsPOSTPostResponse extends Equatable {
  const CustomerSubscriptionsPOSTPostResponse({
    this.subscriptions,
    this.pager_model,
    this.custom_properties,
  });

  final List<String>? subscriptions;

  final String? pager_model;

  final Map<String, dynamic>? custom_properties;

  static CustomerSubscriptionsPOSTPostResponse fromJson(
      Map<String, dynamic> json) {
    return CustomerSubscriptionsPOSTPostResponse(
      subscriptions:
          json['subscriptions'] == null ? null : json['subscriptions'],
      pager_model:
          json['pager_model'] == null ? null : (json['pager_model'] as String),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'subscriptions': subscriptions,
      'pager_model': pager_model,
      'custom_properties': custom_properties,
    };
  }

  CustomerSubscriptionsPOSTPostResponse copyWith({
    List<String>? subscriptions,
    String? pager_model,
    Map<String, dynamic>? custom_properties,
  }) {
    return CustomerSubscriptionsPOSTPostResponse(
      subscriptions: subscriptions ?? this.subscriptions,
      pager_model: pager_model ?? this.pager_model,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      subscriptions,
      pager_model,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
