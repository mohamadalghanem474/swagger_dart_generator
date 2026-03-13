import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SubscribePopupGetResponse extends Equatable {
  const SubscribePopupGetResponse({
    this.product_id,
    this.product_name,
    this.product_se_name,
    this.is_current_customer_registered,
    this.subscription_allowed,
    this.already_subscribed,
    this.maximum_back_in_stock_subscriptions,
    this.current_number_of_back_in_stock_subscriptions,
    this.custom_properties,
  });

  final int? product_id;

  final String? product_name;

  final String? product_se_name;

  final bool? is_current_customer_registered;

  final bool? subscription_allowed;

  final bool? already_subscribed;

  final int? maximum_back_in_stock_subscriptions;

  final int? current_number_of_back_in_stock_subscriptions;

  final Map<String, dynamic>? custom_properties;

  static SubscribePopupGetResponse fromJson(Map<String, dynamic> json) {
    return SubscribePopupGetResponse(
      product_id:
          json['product_id'] == null ? null : (json['product_id'] as int),
      product_name: json['product_name'] == null
          ? null
          : (json['product_name'] as String),
      product_se_name: json['product_se_name'] == null
          ? null
          : (json['product_se_name'] as String),
      is_current_customer_registered:
          json['is_current_customer_registered'] == null
              ? null
              : (json['is_current_customer_registered'] as bool),
      subscription_allowed: json['subscription_allowed'] == null
          ? null
          : (json['subscription_allowed'] as bool),
      already_subscribed: json['already_subscribed'] == null
          ? null
          : (json['already_subscribed'] as bool),
      maximum_back_in_stock_subscriptions:
          json['maximum_back_in_stock_subscriptions'] == null
              ? null
              : (json['maximum_back_in_stock_subscriptions'] as int),
      current_number_of_back_in_stock_subscriptions:
          json['current_number_of_back_in_stock_subscriptions'] == null
              ? null
              : (json['current_number_of_back_in_stock_subscriptions'] as int),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'product_id': product_id,
      'product_name': product_name,
      'product_se_name': product_se_name,
      'is_current_customer_registered': is_current_customer_registered,
      'subscription_allowed': subscription_allowed,
      'already_subscribed': already_subscribed,
      'maximum_back_in_stock_subscriptions':
          maximum_back_in_stock_subscriptions,
      'current_number_of_back_in_stock_subscriptions':
          current_number_of_back_in_stock_subscriptions,
      'custom_properties': custom_properties,
    };
  }

  SubscribePopupGetResponse copyWith({
    int? product_id,
    String? product_name,
    String? product_se_name,
    bool? is_current_customer_registered,
    bool? subscription_allowed,
    bool? already_subscribed,
    int? maximum_back_in_stock_subscriptions,
    int? current_number_of_back_in_stock_subscriptions,
    Map<String, dynamic>? custom_properties,
  }) {
    return SubscribePopupGetResponse(
      product_id: product_id ?? this.product_id,
      product_name: product_name ?? this.product_name,
      product_se_name: product_se_name ?? this.product_se_name,
      is_current_customer_registered:
          is_current_customer_registered ?? this.is_current_customer_registered,
      subscription_allowed: subscription_allowed ?? this.subscription_allowed,
      already_subscribed: already_subscribed ?? this.already_subscribed,
      maximum_back_in_stock_subscriptions:
          maximum_back_in_stock_subscriptions ??
              this.maximum_back_in_stock_subscriptions,
      current_number_of_back_in_stock_subscriptions:
          current_number_of_back_in_stock_subscriptions ??
              this.current_number_of_back_in_stock_subscriptions,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      product_id,
      product_name,
      product_se_name,
      is_current_customer_registered,
      subscription_allowed,
      already_subscribed,
      maximum_back_in_stock_subscriptions,
      current_number_of_back_in_stock_subscriptions,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
