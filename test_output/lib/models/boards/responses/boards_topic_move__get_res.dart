import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class TopicMoveGetResponse extends Equatable {
  const TopicMoveGetResponse({
    this.forum_selected,
    this.topic_se_name,
    this.forum_list,
    this.id,
    this.custom_properties,
  });

  final int? forum_selected;

  final String? topic_se_name;

  final List<String>? forum_list;

  final int? id;

  final Map<String, dynamic>? custom_properties;

  static TopicMoveGetResponse fromJson(Map<String, dynamic> json) {
    return TopicMoveGetResponse(
      forum_selected: json['forum_selected'] == null
          ? null
          : (json['forum_selected'] as int),
      topic_se_name: json['topic_se_name'] == null
          ? null
          : (json['topic_se_name'] as String),
      forum_list: json['forum_list'] == null ? null : json['forum_list'],
      id: json['id'] == null ? null : (json['id'] as int),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'forum_selected': forum_selected,
      'topic_se_name': topic_se_name,
      'forum_list': forum_list,
      'id': id,
      'custom_properties': custom_properties,
    };
  }

  TopicMoveGetResponse copyWith({
    int? forum_selected,
    String? topic_se_name,
    List<String>? forum_list,
    int? id,
    Map<String, dynamic>? custom_properties,
  }) {
    return TopicMoveGetResponse(
      forum_selected: forum_selected ?? this.forum_selected,
      topic_se_name: topic_se_name ?? this.topic_se_name,
      forum_list: forum_list ?? this.forum_list,
      id: id ?? this.id,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      forum_selected,
      topic_se_name,
      forum_list,
      id,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
