import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CompleteSubscriptionGetResponse extends Equatable {
  const CompleteSubscriptionGetResponse({
    this.model,
    this.redirect_to_method,
    this.id,
  });

  final String? model;

  final String? redirect_to_method;

  final int? id;

  static CompleteSubscriptionGetResponse fromJson(Map<String, dynamic> json) {
    return CompleteSubscriptionGetResponse(
      model: json['model'] == null ? null : (json['model'] as String),
      redirect_to_method: json['redirect_to_method'] == null
          ? null
          : (json['redirect_to_method'] as String),
      id: json['id'] == null ? null : (json['id'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'model': model,
      'redirect_to_method': redirect_to_method,
      'id': id,
    };
  }

  CompleteSubscriptionGetResponse copyWith({
    String? model,
    String? redirect_to_method,
    int? id,
  }) {
    return CompleteSubscriptionGetResponse(
      model: model ?? this.model,
      redirect_to_method: redirect_to_method ?? this.redirect_to_method,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props {
    return [
      model,
      redirect_to_method,
      id,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
