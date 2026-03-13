import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetTopicDetailsGetResponse extends Equatable {
  const GetTopicDetailsGetResponse({
    this.system_name,
    this.include_in_sitemap,
    this.is_password_protected,
    this.title,
    this.body,
    this.topic_template_id,
    this.meta_keywords,
    this.meta_description,
    this.meta_title,
    this.se_name,
    this.id,
    this.custom_properties,
  });

  final String? system_name;

  final bool? include_in_sitemap;

  final bool? is_password_protected;

  final String? title;

  final String? body;

  final int? topic_template_id;

  final String? meta_keywords;

  final String? meta_description;

  final String? meta_title;

  final String? se_name;

  final int? id;

  final Map<String, dynamic>? custom_properties;

  static GetTopicDetailsGetResponse fromJson(Map<String, dynamic> json) {
    return GetTopicDetailsGetResponse(
      system_name:
          json['system_name'] == null ? null : (json['system_name'] as String),
      include_in_sitemap: json['include_in_sitemap'] == null
          ? null
          : (json['include_in_sitemap'] as bool),
      is_password_protected: json['is_password_protected'] == null
          ? null
          : (json['is_password_protected'] as bool),
      title: json['title'] == null ? null : (json['title'] as String),
      body: json['body'] == null ? null : (json['body'] as String),
      topic_template_id: json['topic_template_id'] == null
          ? null
          : (json['topic_template_id'] as int),
      meta_keywords: json['meta_keywords'] == null
          ? null
          : (json['meta_keywords'] as String),
      meta_description: json['meta_description'] == null
          ? null
          : (json['meta_description'] as String),
      meta_title:
          json['meta_title'] == null ? null : (json['meta_title'] as String),
      se_name: json['se_name'] == null ? null : (json['se_name'] as String),
      id: json['id'] == null ? null : (json['id'] as int),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'system_name': system_name,
      'include_in_sitemap': include_in_sitemap,
      'is_password_protected': is_password_protected,
      'title': title,
      'body': body,
      'topic_template_id': topic_template_id,
      'meta_keywords': meta_keywords,
      'meta_description': meta_description,
      'meta_title': meta_title,
      'se_name': se_name,
      'id': id,
      'custom_properties': custom_properties,
    };
  }

  GetTopicDetailsGetResponse copyWith({
    String? system_name,
    bool? include_in_sitemap,
    bool? is_password_protected,
    String? title,
    String? body,
    int? topic_template_id,
    String? meta_keywords,
    String? meta_description,
    String? meta_title,
    String? se_name,
    int? id,
    Map<String, dynamic>? custom_properties,
  }) {
    return GetTopicDetailsGetResponse(
      system_name: system_name ?? this.system_name,
      include_in_sitemap: include_in_sitemap ?? this.include_in_sitemap,
      is_password_protected:
          is_password_protected ?? this.is_password_protected,
      title: title ?? this.title,
      body: body ?? this.body,
      topic_template_id: topic_template_id ?? this.topic_template_id,
      meta_keywords: meta_keywords ?? this.meta_keywords,
      meta_description: meta_description ?? this.meta_description,
      meta_title: meta_title ?? this.meta_title,
      se_name: se_name ?? this.se_name,
      id: id ?? this.id,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      system_name,
      include_in_sitemap,
      is_password_protected,
      title,
      body,
      topic_template_id,
      meta_keywords,
      meta_description,
      meta_title,
      se_name,
      id,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
