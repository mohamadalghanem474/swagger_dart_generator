import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CreateNotificationPostRequest extends Equatable {
  const CreateNotificationPostRequest({
    this.delivery_id,
    this.recipient_id,
    this.statuse_id,
    this.category_id,
    this.created_on_from,
    this.channel,
    this.notification_content,
    this.id,
  });

  final int? delivery_id;

  final int? recipient_id;

  final int? statuse_id;

  final int? category_id;

  final String? created_on_from;

  final String? channel;

  final String? notification_content;

  final int? id;

  static CreateNotificationPostRequest fromJson(Map<String, dynamic> json) {
    return CreateNotificationPostRequest(
      delivery_id:
          json['delivery_id'] == null ? null : (json['delivery_id'] as int),
      recipient_id:
          json['recipient_id'] == null ? null : (json['recipient_id'] as int),
      statuse_id:
          json['statuse_id'] == null ? null : (json['statuse_id'] as int),
      category_id:
          json['category_id'] == null ? null : (json['category_id'] as int),
      created_on_from: json['created_on_from'] == null
          ? null
          : (json['created_on_from'] as String),
      channel: json['channel'] == null ? null : (json['channel'] as String),
      notification_content: json['notification_content'] == null
          ? null
          : (json['notification_content'] as String),
      id: json['id'] == null ? null : (json['id'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'delivery_id': delivery_id,
      'recipient_id': recipient_id,
      'statuse_id': statuse_id,
      'category_id': category_id,
      'created_on_from': created_on_from,
      'channel': channel,
      'notification_content': notification_content,
      'id': id,
    };
  }

  CreateNotificationPostRequest copyWith({
    int? delivery_id,
    int? recipient_id,
    int? statuse_id,
    int? category_id,
    String? created_on_from,
    String? channel,
    String? notification_content,
    int? id,
  }) {
    return CreateNotificationPostRequest(
      delivery_id: delivery_id ?? this.delivery_id,
      recipient_id: recipient_id ?? this.recipient_id,
      statuse_id: statuse_id ?? this.statuse_id,
      category_id: category_id ?? this.category_id,
      created_on_from: created_on_from ?? this.created_on_from,
      channel: channel ?? this.channel,
      notification_content: notification_content ?? this.notification_content,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props {
    return [
      delivery_id,
      recipient_id,
      statuse_id,
      category_id,
      created_on_from,
      channel,
      notification_content,
      id,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
