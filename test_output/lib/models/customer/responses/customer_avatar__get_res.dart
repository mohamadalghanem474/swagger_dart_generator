import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class AvatarGetResponse extends Equatable {
  const AvatarGetResponse({
    this.avatar_url,
    this.custom_properties,
  });

  final String? avatar_url;

  final Map<String, dynamic>? custom_properties;

  static AvatarGetResponse fromJson(Map<String, dynamic> json) {
    return AvatarGetResponse(
      avatar_url:
          json['avatar_url'] == null ? null : (json['avatar_url'] as String),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'avatar_url': avatar_url,
      'custom_properties': custom_properties,
    };
  }

  AvatarGetResponse copyWith({
    String? avatar_url,
    Map<String, dynamic>? custom_properties,
  }) {
    return AvatarGetResponse(
      avatar_url: avatar_url ?? this.avatar_url,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      avatar_url,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
