import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SubscriptionActivationGetRequest extends Equatable {
  const SubscriptionActivationGetRequest({
    this.token,
    this.active,
  });

  final String? token;

  final bool? active;

  static SubscriptionActivationGetRequest fromJson(Map<String, dynamic> json) {
    return SubscriptionActivationGetRequest(
      token: json['token'] == null ? null : (json['token'] as String),
      active: json['active'] == null ? null : (json['active'] as bool),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'token': token,
      'active': active,
    };
  }

  SubscriptionActivationGetRequest copyWith({
    String? token,
    bool? active,
  }) {
    return SubscriptionActivationGetRequest(
      token: token ?? this.token,
      active: active ?? this.active,
    );
  }

  @override
  List<Object?> get props {
    return [
      token,
      active,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
