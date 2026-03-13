import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class TopicEditPostRequest extends Equatable {
  const TopicEditPostRequest({
    this.is_edit,
    this.forum_id,
    this.forum_name,
    this.forum_se_name,
    this.topic_type_id,
    this.forum_editor,
    this.subject,
    this.text,
    this.is_customer_allowed_to_set_topic_priority,
    this.topic_priorities,
    this.is_customer_allowed_to_subscribe,
    this.subscribed,
    this.display_captcha,
    this.id,
    this.custom_properties,
  });

  final bool? is_edit;

  final int? forum_id;

  final String? forum_name;

  final String? forum_se_name;

  final int? topic_type_id;

  final String? forum_editor;

  final String? subject;

  final String? text;

  final bool? is_customer_allowed_to_set_topic_priority;

  final List<String>? topic_priorities;

  final bool? is_customer_allowed_to_subscribe;

  final bool? subscribed;

  final bool? display_captcha;

  final int? id;

  final Map<String, dynamic>? custom_properties;

  static TopicEditPostRequest fromJson(Map<String, dynamic> json) {
    return TopicEditPostRequest(
      is_edit: json['is_edit'] == null ? null : (json['is_edit'] as bool),
      forum_id: json['forum_id'] == null ? null : (json['forum_id'] as int),
      forum_name:
          json['forum_name'] == null ? null : (json['forum_name'] as String),
      forum_se_name: json['forum_se_name'] == null
          ? null
          : (json['forum_se_name'] as String),
      topic_type_id:
          json['topic_type_id'] == null ? null : (json['topic_type_id'] as int),
      forum_editor: json['forum_editor'] == null
          ? null
          : (json['forum_editor'] as String),
      subject: json['subject'] == null ? null : (json['subject'] as String),
      text: json['text'] == null ? null : (json['text'] as String),
      is_customer_allowed_to_set_topic_priority:
          json['is_customer_allowed_to_set_topic_priority'] == null
              ? null
              : (json['is_customer_allowed_to_set_topic_priority'] as bool),
      topic_priorities:
          json['topic_priorities'] == null ? null : json['topic_priorities'],
      is_customer_allowed_to_subscribe:
          json['is_customer_allowed_to_subscribe'] == null
              ? null
              : (json['is_customer_allowed_to_subscribe'] as bool),
      subscribed:
          json['subscribed'] == null ? null : (json['subscribed'] as bool),
      display_captcha: json['display_captcha'] == null
          ? null
          : (json['display_captcha'] as bool),
      id: json['id'] == null ? null : (json['id'] as int),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'is_edit': is_edit,
      'forum_id': forum_id,
      'forum_name': forum_name,
      'forum_se_name': forum_se_name,
      'topic_type_id': topic_type_id,
      'forum_editor': forum_editor,
      'subject': subject,
      'text': text,
      'is_customer_allowed_to_set_topic_priority':
          is_customer_allowed_to_set_topic_priority,
      'topic_priorities': topic_priorities,
      'is_customer_allowed_to_subscribe': is_customer_allowed_to_subscribe,
      'subscribed': subscribed,
      'display_captcha': display_captcha,
      'id': id,
      'custom_properties': custom_properties,
    };
  }

  TopicEditPostRequest copyWith({
    bool? is_edit,
    int? forum_id,
    String? forum_name,
    String? forum_se_name,
    int? topic_type_id,
    String? forum_editor,
    String? subject,
    String? text,
    bool? is_customer_allowed_to_set_topic_priority,
    List<String>? topic_priorities,
    bool? is_customer_allowed_to_subscribe,
    bool? subscribed,
    bool? display_captcha,
    int? id,
    Map<String, dynamic>? custom_properties,
  }) {
    return TopicEditPostRequest(
      is_edit: is_edit ?? this.is_edit,
      forum_id: forum_id ?? this.forum_id,
      forum_name: forum_name ?? this.forum_name,
      forum_se_name: forum_se_name ?? this.forum_se_name,
      topic_type_id: topic_type_id ?? this.topic_type_id,
      forum_editor: forum_editor ?? this.forum_editor,
      subject: subject ?? this.subject,
      text: text ?? this.text,
      is_customer_allowed_to_set_topic_priority:
          is_customer_allowed_to_set_topic_priority ??
              this.is_customer_allowed_to_set_topic_priority,
      topic_priorities: topic_priorities ?? this.topic_priorities,
      is_customer_allowed_to_subscribe: is_customer_allowed_to_subscribe ??
          this.is_customer_allowed_to_subscribe,
      subscribed: subscribed ?? this.subscribed,
      display_captcha: display_captcha ?? this.display_captcha,
      id: id ?? this.id,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      is_edit,
      forum_id,
      forum_name,
      forum_se_name,
      topic_type_id,
      forum_editor,
      subject,
      text,
      is_customer_allowed_to_set_topic_priority,
      topic_priorities,
      is_customer_allowed_to_subscribe,
      subscribed,
      display_captcha,
      id,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
