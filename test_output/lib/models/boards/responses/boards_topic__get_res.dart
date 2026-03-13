import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class TopicGetResponse extends Equatable {
  const TopicGetResponse({
    this.subject,
    this.se_name,
    this.watch_topic_text,
    this.is_customer_allowed_to_edit_topic,
    this.is_customer_allowed_to_delete_topic,
    this.is_customer_allowed_to_move_topic,
    this.is_customer_allowed_to_subscribe,
    this.forum_post_models,
    this.posts_page_index,
    this.posts_page_size,
    this.posts_total_records,
    this.id,
    this.custom_properties,
  });

  final String? subject;

  final String? se_name;

  final String? watch_topic_text;

  final bool? is_customer_allowed_to_edit_topic;

  final bool? is_customer_allowed_to_delete_topic;

  final bool? is_customer_allowed_to_move_topic;

  final bool? is_customer_allowed_to_subscribe;

  final List<String>? forum_post_models;

  final int? posts_page_index;

  final int? posts_page_size;

  final int? posts_total_records;

  final int? id;

  final Map<String, dynamic>? custom_properties;

  static TopicGetResponse fromJson(Map<String, dynamic> json) {
    return TopicGetResponse(
      subject: json['subject'] == null ? null : (json['subject'] as String),
      se_name: json['se_name'] == null ? null : (json['se_name'] as String),
      watch_topic_text: json['watch_topic_text'] == null
          ? null
          : (json['watch_topic_text'] as String),
      is_customer_allowed_to_edit_topic:
          json['is_customer_allowed_to_edit_topic'] == null
              ? null
              : (json['is_customer_allowed_to_edit_topic'] as bool),
      is_customer_allowed_to_delete_topic:
          json['is_customer_allowed_to_delete_topic'] == null
              ? null
              : (json['is_customer_allowed_to_delete_topic'] as bool),
      is_customer_allowed_to_move_topic:
          json['is_customer_allowed_to_move_topic'] == null
              ? null
              : (json['is_customer_allowed_to_move_topic'] as bool),
      is_customer_allowed_to_subscribe:
          json['is_customer_allowed_to_subscribe'] == null
              ? null
              : (json['is_customer_allowed_to_subscribe'] as bool),
      forum_post_models:
          json['forum_post_models'] == null ? null : json['forum_post_models'],
      posts_page_index: json['posts_page_index'] == null
          ? null
          : (json['posts_page_index'] as int),
      posts_page_size: json['posts_page_size'] == null
          ? null
          : (json['posts_page_size'] as int),
      posts_total_records: json['posts_total_records'] == null
          ? null
          : (json['posts_total_records'] as int),
      id: json['id'] == null ? null : (json['id'] as int),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'subject': subject,
      'se_name': se_name,
      'watch_topic_text': watch_topic_text,
      'is_customer_allowed_to_edit_topic': is_customer_allowed_to_edit_topic,
      'is_customer_allowed_to_delete_topic':
          is_customer_allowed_to_delete_topic,
      'is_customer_allowed_to_move_topic': is_customer_allowed_to_move_topic,
      'is_customer_allowed_to_subscribe': is_customer_allowed_to_subscribe,
      'forum_post_models': forum_post_models,
      'posts_page_index': posts_page_index,
      'posts_page_size': posts_page_size,
      'posts_total_records': posts_total_records,
      'id': id,
      'custom_properties': custom_properties,
    };
  }

  TopicGetResponse copyWith({
    String? subject,
    String? se_name,
    String? watch_topic_text,
    bool? is_customer_allowed_to_edit_topic,
    bool? is_customer_allowed_to_delete_topic,
    bool? is_customer_allowed_to_move_topic,
    bool? is_customer_allowed_to_subscribe,
    List<String>? forum_post_models,
    int? posts_page_index,
    int? posts_page_size,
    int? posts_total_records,
    int? id,
    Map<String, dynamic>? custom_properties,
  }) {
    return TopicGetResponse(
      subject: subject ?? this.subject,
      se_name: se_name ?? this.se_name,
      watch_topic_text: watch_topic_text ?? this.watch_topic_text,
      is_customer_allowed_to_edit_topic: is_customer_allowed_to_edit_topic ??
          this.is_customer_allowed_to_edit_topic,
      is_customer_allowed_to_delete_topic:
          is_customer_allowed_to_delete_topic ??
              this.is_customer_allowed_to_delete_topic,
      is_customer_allowed_to_move_topic: is_customer_allowed_to_move_topic ??
          this.is_customer_allowed_to_move_topic,
      is_customer_allowed_to_subscribe: is_customer_allowed_to_subscribe ??
          this.is_customer_allowed_to_subscribe,
      forum_post_models: forum_post_models ?? this.forum_post_models,
      posts_page_index: posts_page_index ?? this.posts_page_index,
      posts_page_size: posts_page_size ?? this.posts_page_size,
      posts_total_records: posts_total_records ?? this.posts_total_records,
      id: id ?? this.id,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      subject,
      se_name,
      watch_topic_text,
      is_customer_allowed_to_edit_topic,
      is_customer_allowed_to_delete_topic,
      is_customer_allowed_to_move_topic,
      is_customer_allowed_to_subscribe,
      forum_post_models,
      posts_page_index,
      posts_page_size,
      posts_total_records,
      id,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
