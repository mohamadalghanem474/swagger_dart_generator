import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetNewsItemGetResponse extends Equatable {
  const GetNewsItemGetResponse({
    this.meta_keywords,
    this.meta_description,
    this.meta_title,
    this.se_name,
    this.title,
    this.short,
    this.full,
    this.allow_comments,
    this.prevent_not_registered_users_to_leave_comments,
    this.number_of_comments,
    this.created_on,
    this.comments,
    this.add_new_comment,
    this.id,
    this.custom_properties,
  });

  final String? meta_keywords;

  final String? meta_description;

  final String? meta_title;

  final String? se_name;

  final String? title;

  final String? short;

  final String? full;

  final bool? allow_comments;

  final bool? prevent_not_registered_users_to_leave_comments;

  final int? number_of_comments;

  final String? created_on;

  final List<String>? comments;

  final String? add_new_comment;

  final int? id;

  final Map<String, dynamic>? custom_properties;

  static GetNewsItemGetResponse fromJson(Map<String, dynamic> json) {
    return GetNewsItemGetResponse(
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
      short: json['short'] == null ? null : (json['short'] as String),
      full: json['full'] == null ? null : (json['full'] as String),
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
      comments: json['comments'] == null ? null : json['comments'],
      add_new_comment: json['add_new_comment'] == null
          ? null
          : (json['add_new_comment'] as String),
      id: json['id'] == null ? null : (json['id'] as int),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'meta_keywords': meta_keywords,
      'meta_description': meta_description,
      'meta_title': meta_title,
      'se_name': se_name,
      'title': title,
      'short': short,
      'full': full,
      'allow_comments': allow_comments,
      'prevent_not_registered_users_to_leave_comments':
          prevent_not_registered_users_to_leave_comments,
      'number_of_comments': number_of_comments,
      'created_on': created_on,
      'comments': comments,
      'add_new_comment': add_new_comment,
      'id': id,
      'custom_properties': custom_properties,
    };
  }

  GetNewsItemGetResponse copyWith({
    String? meta_keywords,
    String? meta_description,
    String? meta_title,
    String? se_name,
    String? title,
    String? short,
    String? full,
    bool? allow_comments,
    bool? prevent_not_registered_users_to_leave_comments,
    int? number_of_comments,
    String? created_on,
    List<String>? comments,
    String? add_new_comment,
    int? id,
    Map<String, dynamic>? custom_properties,
  }) {
    return GetNewsItemGetResponse(
      meta_keywords: meta_keywords ?? this.meta_keywords,
      meta_description: meta_description ?? this.meta_description,
      meta_title: meta_title ?? this.meta_title,
      se_name: se_name ?? this.se_name,
      title: title ?? this.title,
      short: short ?? this.short,
      full: full ?? this.full,
      allow_comments: allow_comments ?? this.allow_comments,
      prevent_not_registered_users_to_leave_comments:
          prevent_not_registered_users_to_leave_comments ??
              this.prevent_not_registered_users_to_leave_comments,
      number_of_comments: number_of_comments ?? this.number_of_comments,
      created_on: created_on ?? this.created_on,
      comments: comments ?? this.comments,
      add_new_comment: add_new_comment ?? this.add_new_comment,
      id: id ?? this.id,
      custom_properties: custom_properties ?? this.custom_properties,
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
      short,
      full,
      allow_comments,
      prevent_not_registered_users_to_leave_comments,
      number_of_comments,
      created_on,
      comments,
      add_new_comment,
      id,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
