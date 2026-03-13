import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetBySlugGetResponse extends Equatable {
  const GetBySlugGetResponse({
    this.entity_id,
    this.entity_name,
    this.slug,
    this.is_active,
    this.language_id,
    this.id,
  });

  final int? entity_id;

  final String? entity_name;

  final String? slug;

  final bool? is_active;

  final int? language_id;

  final int? id;

  static GetBySlugGetResponse fromJson(Map<String, dynamic> json) {
    return GetBySlugGetResponse(
      entity_id: json['entity_id'] == null ? null : (json['entity_id'] as int),
      entity_name:
          json['entity_name'] == null ? null : (json['entity_name'] as String),
      slug: json['slug'] == null ? null : (json['slug'] as String),
      is_active: json['is_active'] == null ? null : (json['is_active'] as bool),
      language_id:
          json['language_id'] == null ? null : (json['language_id'] as int),
      id: json['id'] == null ? null : (json['id'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'entity_id': entity_id,
      'entity_name': entity_name,
      'slug': slug,
      'is_active': is_active,
      'language_id': language_id,
      'id': id,
    };
  }

  GetBySlugGetResponse copyWith({
    int? entity_id,
    String? entity_name,
    String? slug,
    bool? is_active,
    int? language_id,
    int? id,
  }) {
    return GetBySlugGetResponse(
      entity_id: entity_id ?? this.entity_id,
      entity_name: entity_name ?? this.entity_name,
      slug: slug ?? this.slug,
      is_active: is_active ?? this.is_active,
      language_id: language_id ?? this.language_id,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props {
    return [
      entity_id,
      entity_name,
      slug,
      is_active,
      language_id,
      id,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
