import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SelectPaymentMethodPostRequest extends Equatable {
  const SelectPaymentMethodPostRequest({
    this.payment_methods,
    this.display_reward_points,
    this.reward_points_balance,
    this.reward_points_to_use,
    this.reward_points_to_use_amount,
    this.reward_points_enough_to_pay_for_order,
    this.use_reward_points,
    this.custom_properties,
    this.paymentmethod,
  });

  final List<String>? payment_methods;

  final bool? display_reward_points;

  final int? reward_points_balance;

  final int? reward_points_to_use;

  final String? reward_points_to_use_amount;

  final bool? reward_points_enough_to_pay_for_order;

  final bool? use_reward_points;

  final Map<String, dynamic>? custom_properties;

  final String? paymentmethod;

  static SelectPaymentMethodPostRequest fromJson(Map<String, dynamic> json) {
    return SelectPaymentMethodPostRequest(
      payment_methods:
          json['payment_methods'] == null ? null : json['payment_methods'],
      display_reward_points: json['display_reward_points'] == null
          ? null
          : (json['display_reward_points'] as bool),
      reward_points_balance: json['reward_points_balance'] == null
          ? null
          : (json['reward_points_balance'] as int),
      reward_points_to_use: json['reward_points_to_use'] == null
          ? null
          : (json['reward_points_to_use'] as int),
      reward_points_to_use_amount: json['reward_points_to_use_amount'] == null
          ? null
          : (json['reward_points_to_use_amount'] as String),
      reward_points_enough_to_pay_for_order:
          json['reward_points_enough_to_pay_for_order'] == null
              ? null
              : (json['reward_points_enough_to_pay_for_order'] as bool),
      use_reward_points: json['use_reward_points'] == null
          ? null
          : (json['use_reward_points'] as bool),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
      paymentmethod: json['paymentmethod'] == null
          ? null
          : (json['paymentmethod'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'payment_methods': payment_methods,
      'display_reward_points': display_reward_points,
      'reward_points_balance': reward_points_balance,
      'reward_points_to_use': reward_points_to_use,
      'reward_points_to_use_amount': reward_points_to_use_amount,
      'reward_points_enough_to_pay_for_order':
          reward_points_enough_to_pay_for_order,
      'use_reward_points': use_reward_points,
      'custom_properties': custom_properties,
      'paymentmethod': paymentmethod,
    };
  }

  SelectPaymentMethodPostRequest copyWith({
    List<String>? payment_methods,
    bool? display_reward_points,
    int? reward_points_balance,
    int? reward_points_to_use,
    String? reward_points_to_use_amount,
    bool? reward_points_enough_to_pay_for_order,
    bool? use_reward_points,
    Map<String, dynamic>? custom_properties,
    String? paymentmethod,
  }) {
    return SelectPaymentMethodPostRequest(
      payment_methods: payment_methods ?? this.payment_methods,
      display_reward_points:
          display_reward_points ?? this.display_reward_points,
      reward_points_balance:
          reward_points_balance ?? this.reward_points_balance,
      reward_points_to_use: reward_points_to_use ?? this.reward_points_to_use,
      reward_points_to_use_amount:
          reward_points_to_use_amount ?? this.reward_points_to_use_amount,
      reward_points_enough_to_pay_for_order:
          reward_points_enough_to_pay_for_order ??
              this.reward_points_enough_to_pay_for_order,
      use_reward_points: use_reward_points ?? this.use_reward_points,
      custom_properties: custom_properties ?? this.custom_properties,
      paymentmethod: paymentmethod ?? this.paymentmethod,
    );
  }

  @override
  List<Object?> get props {
    return [
      payment_methods,
      display_reward_points,
      reward_points_balance,
      reward_points_to_use,
      reward_points_to_use_amount,
      reward_points_enough_to_pay_for_order,
      use_reward_points,
      custom_properties,
      paymentmethod,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
