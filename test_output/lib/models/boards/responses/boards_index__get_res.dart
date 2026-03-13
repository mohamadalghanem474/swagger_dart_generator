import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class IndexGetResponse extends Equatable {
  const IndexGetResponse({
    this.forum_groups,
    this.custom_properties,
  });

  final List<String>? forum_groups;

  final Map<String, dynamic>? custom_properties;

  static IndexGetResponse fromJson(Map<String, dynamic> json) {
    return IndexGetResponse(
      forum_groups: json['forum_groups'] == null ? null : json['forum_groups'],
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'forum_groups': forum_groups,
      'custom_properties': custom_properties,
    };
  }

  IndexGetResponse copyWith({
    List<String>? forum_groups,
    Map<String, dynamic>? custom_properties,
  }) {
    return IndexGetResponse(
      forum_groups: forum_groups ?? this.forum_groups,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      forum_groups,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
