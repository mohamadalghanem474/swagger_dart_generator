import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ForumGroupGetResponse extends Equatable {
  const ForumGroupGetResponse({
    this.name,
    this.se_name,
    this.forums,
    this.id,
    this.custom_properties,
  });

  final String? name;

  final String? se_name;

  final List<String>? forums;

  final int? id;

  final Map<String, dynamic>? custom_properties;

  static ForumGroupGetResponse fromJson(Map<String, dynamic> json) {
    return ForumGroupGetResponse(
      name: json['name'] == null ? null : (json['name'] as String),
      se_name: json['se_name'] == null ? null : (json['se_name'] as String),
      forums: json['forums'] == null ? null : json['forums'],
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
      'forums': forums,
      'id': id,
      'custom_properties': custom_properties,
    };
  }

  ForumGroupGetResponse copyWith({
    String? name,
    String? se_name,
    List<String>? forums,
    int? id,
    Map<String, dynamic>? custom_properties,
  }) {
    return ForumGroupGetResponse(
      name: name ?? this.name,
      se_name: se_name ?? this.se_name,
      forums: forums ?? this.forums,
      id: id ?? this.id,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      name,
      se_name,
      forums,
      id,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
