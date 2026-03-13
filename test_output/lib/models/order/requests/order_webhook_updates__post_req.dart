import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class WebhookUpdatesPostRequest extends Equatable {
  const WebhookUpdatesPostRequest({
    this.Key,
    this.Value,
  });

  final String? Key;

  final Map<String, dynamic>? Value;

  static WebhookUpdatesPostRequest fromJson(Map<String, dynamic> json) {
    return WebhookUpdatesPostRequest(
      Key: json['Key'] == null ? null : (json['Key'] as String),
      Value: json['Value'] == null
          ? null
          : (json['Value'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'Key': Key,
      'Value': Value,
    };
  }

  WebhookUpdatesPostRequest copyWith({
    String? Key,
    Map<String, dynamic>? Value,
  }) {
    return WebhookUpdatesPostRequest(
      Key: Key ?? this.Key,
      Value: Value ?? this.Value,
    );
  }

  @override
  List<Object?> get props {
    return [
      Key,
      Value,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
