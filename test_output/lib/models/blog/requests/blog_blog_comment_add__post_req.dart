import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class BlogCommentAddPostRequest extends Equatable {
  const BlogCommentAddPostRequest({
    this.meta_keywords,
    this.meta_description,
    this.meta_title,
    this.se_name,
    this.title,
    this.body,
    this.body_overview,
    this.allow_comments,
    this.prevent_not_registered_users_to_leave_comments,
    this.number_of_comments,
    this.created_on,
    this.tags,
    this.comments,
    this.add_new_comment,
    this.id,
    this.custom_properties,
    this.blogpostid,
  });

  final String? meta_keywords;

  final String? meta_description;

  final String? meta_title;

  final String? se_name;

  final String? title;

  final String? body;

  final String? body_overview;

  final bool? allow_comments;

  final bool? prevent_not_registered_users_to_leave_comments;

  final int? number_of_comments;

  final String? created_on;

  final List<String>? tags;

  final List<String>? comments;

  final String? add_new_comment;

  final int? id;

  final Map<String, dynamic>? custom_properties;

  final int? blogpostid;

  static BlogCommentAddPostRequest fromJson(Map<String, dynamic> json) {
    return BlogCommentAddPostRequest(
      meta_keywords: json['meta_keywords'] == null
          ? null
          : (json['meta_keywords'] as String),
      meta_description: json['meta_description'] == null
          ? null
          : (json['meta_description'] as String),
      meta_title:
          json['meta_title'] == null ? null : (json['meta_title'] as String),
      se_name: json['se_name'] == null ? null : (json['se_name'] as String),
      title: json['title'] == null ? null : (json['title'] as String),
      body: json['body'] == null ? null : (json['body'] as String),
      body_overview: json['body_overview'] == null
          ? null
          : (json['body_overview'] as String),
      allow_comments: json['allow_comments'] == null
          ? null
          : (json['allow_comments'] as bool),
      prevent_not_registered_users_to_leave_comments:
          json['prevent_not_registered_users_to_leave_comments'] == null
              ? null
              : (json['prevent_not_registered_users_to_leave_comments']
                  as bool),
      number_of_comments: json['number_of_comments'] == null
          ? null
          : (json['number_of_comments'] as int),
      created_on:
          json['created_on'] == null ? null : (json['created_on'] as String),
      tags: json['tags'] == null ? null : json['tags'],
      comments: json['comments'] == null ? null : json['comments'],
      add_new_comment: json['add_new_comment'] == null
          ? null
          : (json['add_new_comment'] as String),
      id: json['id'] == null ? null : (json['id'] as int),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
      blogpostid:
          json['blogpostid'] == null ? null : (json['blogpostid'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'meta_keywords': meta_keywords,
      'meta_description': meta_description,
      'meta_title': meta_title,
      'se_name': se_name,
      'title': title,
      'body': body,
      'body_overview': body_overview,
      'allow_comments': allow_comments,
      'prevent_not_registered_users_to_leave_comments':
          prevent_not_registered_users_to_leave_comments,
      'number_of_comments': number_of_comments,
      'created_on': created_on,
      'tags': tags,
      'comments': comments,
      'add_new_comment': add_new_comment,
      'id': id,
      'custom_properties': custom_properties,
      'blogpostid': blogpostid,
    };
  }

  BlogCommentAddPostRequest copyWith({
    String? meta_keywords,
    String? meta_description,
    String? meta_title,
    String? se_name,
    String? title,
    String? body,
    String? body_overview,
    bool? allow_comments,
    bool? prevent_not_registered_users_to_leave_comments,
    int? number_of_comments,
    String? created_on,
    List<String>? tags,
    List<String>? comments,
    String? add_new_comment,
    int? id,
    Map<String, dynamic>? custom_properties,
    int? blogpostid,
  }) {
    return BlogCommentAddPostRequest(
      meta_keywords: meta_keywords ?? this.meta_keywords,
      meta_description: meta_description ?? this.meta_description,
      meta_title: meta_title ?? this.meta_title,
      se_name: se_name ?? this.se_name,
      title: title ?? this.title,
      body: body ?? this.body,
      body_overview: body_overview ?? this.body_overview,
      allow_comments: allow_comments ?? this.allow_comments,
      prevent_not_registered_users_to_leave_comments:
          prevent_not_registered_users_to_leave_comments ??
              this.prevent_not_registered_users_to_leave_comments,
      number_of_comments: number_of_comments ?? this.number_of_comments,
      created_on: created_on ?? this.created_on,
      tags: tags ?? this.tags,
      comments: comments ?? this.comments,
      add_new_comment: add_new_comment ?? this.add_new_comment,
      id: id ?? this.id,
      custom_properties: custom_properties ?? this.custom_properties,
      blogpostid: blogpostid ?? this.blogpostid,
    );
  }

  @override
  List<Object?> get props {
    return [
      meta_keywords,
      meta_description,
      meta_title,
      se_name,
      title,
      body,
      body_overview,
      allow_comments,
      prevent_not_registered_users_to_leave_comments,
      number_of_comments,
      created_on,
      tags,
      comments,
      add_new_comment,
      id,
      custom_properties,
      blogpostid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
