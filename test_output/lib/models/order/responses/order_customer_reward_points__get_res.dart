import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CustomerRewardPointsGetResponse extends Equatable {
  const CustomerRewardPointsGetResponse({
    this.reward_points,
    this.pager_model,
    this.reward_points_balance,
    this.reward_points_amount,
    this.minimum_reward_points_balance,
    this.minimum_reward_points_amount,
    this.custom_properties,
  });

  final List<String>? reward_points;

  final String? pager_model;

  final int? reward_points_balance;

  final String? reward_points_amount;

  final int? minimum_reward_points_balance;

  final String? minimum_reward_points_amount;

  final Map<String, dynamic>? custom_properties;

  static CustomerRewardPointsGetResponse fromJson(Map<String, dynamic> json) {
    return CustomerRewardPointsGetResponse(
      reward_points:
          json['reward_points'] == null ? null : json['reward_points'],
      pager_model:
          json['pager_model'] == null ? null : (json['pager_model'] as String),
      reward_points_balance: json['reward_points_balance'] == null
          ? null
          : (json['reward_points_balance'] as int),
      reward_points_amount: json['reward_points_amount'] == null
          ? null
          : (json['reward_points_amount'] as String),
      minimum_reward_points_balance:
          json['minimum_reward_points_balance'] == null
              ? null
              : (json['minimum_reward_points_balance'] as int),
      minimum_reward_points_amount: json['minimum_reward_points_amount'] == null
          ? null
          : (json['minimum_reward_points_amount'] as String),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'reward_points': reward_points,
      'pager_model': pager_model,
      'reward_points_balance': reward_points_balance,
      'reward_points_amount': reward_points_amount,
      'minimum_reward_points_balance': minimum_reward_points_balance,
      'minimum_reward_points_amount': minimum_reward_points_amount,
      'custom_properties': custom_properties,
    };
  }

  CustomerRewardPointsGetResponse copyWith({
    List<String>? reward_points,
    String? pager_model,
    int? reward_points_balance,
    String? reward_points_amount,
    int? minimum_reward_points_balance,
    String? minimum_reward_points_amount,
    Map<String, dynamic>? custom_properties,
  }) {
    return CustomerRewardPointsGetResponse(
      reward_points: reward_points ?? this.reward_points,
      pager_model: pager_model ?? this.pager_model,
      reward_points_balance:
          reward_points_balance ?? this.reward_points_balance,
      reward_points_amount: reward_points_amount ?? this.reward_points_amount,
      minimum_reward_points_balance:
          minimum_reward_points_balance ?? this.minimum_reward_points_balance,
      minimum_reward_points_amount:
          minimum_reward_points_amount ?? this.minimum_reward_points_amount,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      reward_points,
      pager_model,
      reward_points_balance,
      reward_points_amount,
      minimum_reward_points_balance,
      minimum_reward_points_amount,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
