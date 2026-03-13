import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ForumGetResponse extends Equatable {
  const ForumGetResponse({
    this.name,
    this.se_name,
    this.description,
    this.watch_forum_text,
    this.forum_topics,
    this.topic_page_size,
    this.topic_total_records,
    this.topic_page_index,
    this.is_customer_allowed_to_subscribe,
    this.forum_feeds_enabled,
    this.posts_page_size,
    this.allow_post_voting,
    this.id,
    this.custom_properties,
  });

  final String? name;

  final String? se_name;

  final String? description;

  final String? watch_forum_text;

  final List<String>? forum_topics;

  final int? topic_page_size;

  final int? topic_total_records;

  final int? topic_page_index;

  final bool? is_customer_allowed_to_subscribe;

  final bool? forum_feeds_enabled;

  final int? posts_page_size;

  final bool? allow_post_voting;

  final int? id;

  final Map<String, dynamic>? custom_properties;

  static ForumGetResponse fromJson(Map<String, dynamic> json) {
    return ForumGetResponse(
      name: json['name'] == null ? null : (json['name'] as String),
      se_name: json['se_name'] == null ? null : (json['se_name'] as String),
      description:
          json['description'] == null ? null : (json['description'] as String),
      watch_forum_text: json['watch_forum_text'] == null
          ? null
          : (json['watch_forum_text'] as String),
      forum_topics: json['forum_topics'] == null ? null : json['forum_topics'],
      topic_page_size: json['topic_page_size'] == null
          ? null
          : (json['topic_page_size'] as int),
      topic_total_records: json['topic_total_records'] == null
          ? null
          : (json['topic_total_records'] as int),
      topic_page_index: json['topic_page_index'] == null
          ? null
          : (json['topic_page_index'] as int),
      is_customer_allowed_to_subscribe:
          json['is_customer_allowed_to_subscribe'] == null
              ? null
              : (json['is_customer_allowed_to_subscribe'] as bool),
      forum_feeds_enabled: json['forum_feeds_enabled'] == null
          ? null
          : (json['forum_feeds_enabled'] as bool),
      posts_page_size: json['posts_page_size'] == null
          ? null
          : (json['posts_page_size'] as int),
      allow_post_voting: json['allow_post_voting'] == null
          ? null
          : (json['allow_post_voting'] as bool),
      id: json['id'] == null ? null : (json['id'] as int),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'se_name': se_name,
      'description': description,
      'watch_forum_text': watch_forum_text,
      'forum_topics': forum_topics,
      'topic_page_size': topic_page_size,
      'topic_total_records': topic_total_records,
      'topic_page_index': topic_page_index,
      'is_customer_allowed_to_subscribe': is_customer_allowed_to_subscribe,
      'forum_feeds_enabled': forum_feeds_enabled,
      'posts_page_size': posts_page_size,
      'allow_post_voting': allow_post_voting,
      'id': id,
      'custom_properties': custom_properties,
    };
  }

  ForumGetResponse copyWith({
    String? name,
    String? se_name,
    String? description,
    String? watch_forum_text,
    List<String>? forum_topics,
    int? topic_page_size,
    int? topic_total_records,
    int? topic_page_index,
    bool? is_customer_allowed_to_subscribe,
    bool? forum_feeds_enabled,
    int? posts_page_size,
    bool? allow_post_voting,
    int? id,
    Map<String, dynamic>? custom_properties,
  }) {
    return ForumGetResponse(
      name: name ?? this.name,
      se_name: se_name ?? this.se_name,
      description: description ?? this.description,
      watch_forum_text: watch_forum_text ?? this.watch_forum_text,
      forum_topics: forum_topics ?? this.forum_topics,
      topic_page_size: topic_page_size ?? this.topic_page_size,
      topic_total_records: topic_total_records ?? this.topic_total_records,
      topic_page_index: topic_page_index ?? this.topic_page_index,
      is_customer_allowed_to_subscribe: is_customer_allowed_to_subscribe ??
          this.is_customer_allowed_to_subscribe,
      forum_feeds_enabled: forum_feeds_enabled ?? this.forum_feeds_enabled,
      posts_page_size: posts_page_size ?? this.posts_page_size,
      allow_post_voting: allow_post_voting ?? this.allow_post_voting,
      id: id ?? this.id,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      name,
      se_name,
      description,
      watch_forum_text,
      forum_topics,
      topic_page_size,
      topic_total_records,
      topic_page_index,
      is_customer_allowed_to_subscribe,
      forum_feeds_enabled,
      posts_page_size,
      allow_post_voting,
      id,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
