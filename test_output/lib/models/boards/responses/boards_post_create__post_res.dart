import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class PostCreatePostResponse extends Equatable {
  const PostCreatePostResponse({
    this.forum_topic_id,
    this.is_edit,
    this.text,
    this.forum_editor,
    this.forum_name,
    this.forum_topic_subject,
    this.forum_topic_se_name,
    this.is_customer_allowed_to_subscribe,
    this.subscribed,
    this.display_captcha,
    this.id,
    this.custom_properties,
  });

  final int? forum_topic_id;

  final bool? is_edit;

  final String? text;

  final String? forum_editor;

  final String? forum_name;

  final String? forum_topic_subject;

  final String? forum_topic_se_name;

  final bool? is_customer_allowed_to_subscribe;

  final bool? subscribed;

  final bool? display_captcha;

  final int? id;

  final Map<String, dynamic>? custom_properties;

  static PostCreatePostResponse fromJson(Map<String, dynamic> json) {
    return PostCreatePostResponse(
      forum_topic_id: json['forum_topic_id'] == null
          ? null
          : (json['forum_topic_id'] as int),
      is_edit: json['is_edit'] == null ? null : (json['is_edit'] as bool),
      text: json['text'] == null ? null : (json['text'] as String),
      forum_editor: json['forum_editor'] == null
          ? null
          : (json['forum_editor'] as String),
      forum_name:
          json['forum_name'] == null ? null : (json['forum_name'] as String),
      forum_topic_subject: json['forum_topic_subject'] == null
          ? null
          : (json['forum_topic_subject'] as String),
      forum_topic_se_name: json['forum_topic_se_name'] == null
          ? null
          : (json['forum_topic_se_name'] as String),
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
      'forum_topic_id': forum_topic_id,
      'is_edit': is_edit,
      'text': text,
      'forum_editor': forum_editor,
      'forum_name': forum_name,
      'forum_topic_subject': forum_topic_subject,
      'forum_topic_se_name': forum_topic_se_name,
      'is_customer_allowed_to_subscribe': is_customer_allowed_to_subscribe,
      'subscribed': subscribed,
      'display_captcha': display_captcha,
      'id': id,
      'custom_properties': custom_properties,
    };
  }

  PostCreatePostResponse copyWith({
    int? forum_topic_id,
    bool? is_edit,
    String? text,
    String? forum_editor,
    String? forum_name,
    String? forum_topic_subject,
    String? forum_topic_se_name,
    bool? is_customer_allowed_to_subscribe,
    bool? subscribed,
    bool? display_captcha,
    int? id,
    Map<String, dynamic>? custom_properties,
  }) {
    return PostCreatePostResponse(
      forum_topic_id: forum_topic_id ?? this.forum_topic_id,
      is_edit: is_edit ?? this.is_edit,
      text: text ?? this.text,
      forum_editor: forum_editor ?? this.forum_editor,
      forum_name: forum_name ?? this.forum_name,
      forum_topic_subject: forum_topic_subject ?? this.forum_topic_subject,
      forum_topic_se_name: forum_topic_se_name ?? this.forum_topic_se_name,
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
      forum_topic_id,
      is_edit,
      text,
      forum_editor,
      forum_name,
      forum_topic_subject,
      forum_topic_se_name,
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
