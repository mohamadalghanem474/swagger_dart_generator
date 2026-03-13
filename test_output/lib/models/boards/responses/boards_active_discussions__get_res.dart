import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ActiveDiscussionsGetResponse extends Equatable {
  const ActiveDiscussionsGetResponse({
    this.forum_topics,
    this.view_all_link_enabled,
    this.active_discussions_feed_enabled,
    this.topic_page_size,
    this.topic_total_records,
    this.topic_page_index,
    this.posts_page_size,
    this.allow_post_voting,
    this.custom_properties,
  });

  final List<String>? forum_topics;

  final bool? view_all_link_enabled;

  final bool? active_discussions_feed_enabled;

  final int? topic_page_size;

  final int? topic_total_records;

  final int? topic_page_index;

  final int? posts_page_size;

  final bool? allow_post_voting;

  final Map<String, dynamic>? custom_properties;

  static ActiveDiscussionsGetResponse fromJson(Map<String, dynamic> json) {
    return ActiveDiscussionsGetResponse(
      forum_topics: json['forum_topics'] == null ? null : json['forum_topics'],
      view_all_link_enabled: json['view_all_link_enabled'] == null
          ? null
          : (json['view_all_link_enabled'] as bool),
      active_discussions_feed_enabled:
          json['active_discussions_feed_enabled'] == null
              ? null
              : (json['active_discussions_feed_enabled'] as bool),
      topic_page_size: json['topic_page_size'] == null
          ? null
          : (json['topic_page_size'] as int),
      topic_total_records: json['topic_total_records'] == null
          ? null
          : (json['topic_total_records'] as int),
      topic_page_index: json['topic_page_index'] == null
          ? null
          : (json['topic_page_index'] as int),
      posts_page_size: json['posts_page_size'] == null
          ? null
          : (json['posts_page_size'] as int),
      allow_post_voting: json['allow_post_voting'] == null
          ? null
          : (json['allow_post_voting'] as bool),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'forum_topics': forum_topics,
      'view_all_link_enabled': view_all_link_enabled,
      'active_discussions_feed_enabled': active_discussions_feed_enabled,
      'topic_page_size': topic_page_size,
      'topic_total_records': topic_total_records,
      'topic_page_index': topic_page_index,
      'posts_page_size': posts_page_size,
      'allow_post_voting': allow_post_voting,
      'custom_properties': custom_properties,
    };
  }

  ActiveDiscussionsGetResponse copyWith({
    List<String>? forum_topics,
    bool? view_all_link_enabled,
    bool? active_discussions_feed_enabled,
    int? topic_page_size,
    int? topic_total_records,
    int? topic_page_index,
    int? posts_page_size,
    bool? allow_post_voting,
    Map<String, dynamic>? custom_properties,
  }) {
    return ActiveDiscussionsGetResponse(
      forum_topics: forum_topics ?? this.forum_topics,
      view_all_link_enabled:
          view_all_link_enabled ?? this.view_all_link_enabled,
      active_discussions_feed_enabled: active_discussions_feed_enabled ??
          this.active_discussions_feed_enabled,
      topic_page_size: topic_page_size ?? this.topic_page_size,
      topic_total_records: topic_total_records ?? this.topic_total_records,
      topic_page_index: topic_page_index ?? this.topic_page_index,
      posts_page_size: posts_page_size ?? this.posts_page_size,
      allow_post_voting: allow_post_voting ?? this.allow_post_voting,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      forum_topics,
      view_all_link_enabled,
      active_discussions_feed_enabled,
      topic_page_size,
      topic_total_records,
      topic_page_index,
      posts_page_size,
      allow_post_voting,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
