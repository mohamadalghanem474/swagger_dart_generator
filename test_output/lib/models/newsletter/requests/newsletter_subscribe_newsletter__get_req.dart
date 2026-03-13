import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SubscribeNewsletterGetRequest extends Equatable {
  const SubscribeNewsletterGetRequest({
    this.email,
    this.subscribe,
  });

  final String? email;

  final bool? subscribe;

  static SubscribeNewsletterGetRequest fromJson(Map<String, dynamic> json) {
    return SubscribeNewsletterGetRequest(
      email: json['email'] == null ? null : (json['email'] as String),
      subscribe: json['subscribe'] == null ? null : (json['subscribe'] as bool),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'email': email,
      'subscribe': subscribe,
    };
  }

  SubscribeNewsletterGetRequest copyWith({
    String? email,
    bool? subscribe,
  }) {
    return SubscribeNewsletterGetRequest(
      email: email ?? this.email,
      subscribe: subscribe ?? this.subscribe,
    );
  }

  @override
  List<Object?> get props {
    return [
      email,
      subscribe,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
