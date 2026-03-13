import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class RobotsTextFileGetResponse extends Equatable {
  const RobotsTextFileGetResponse({
    this.robots_file_content,
    this.mime_type,
  });

  final String? robots_file_content;

  final String? mime_type;

  static RobotsTextFileGetResponse fromJson(Map<String, dynamic> json) {
    return RobotsTextFileGetResponse(
      robots_file_content: json['robots_file_content'] == null
          ? null
          : (json['robots_file_content'] as String),
      mime_type:
          json['mime_type'] == null ? null : (json['mime_type'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'robots_file_content': robots_file_content,
      'mime_type': mime_type,
    };
  }

  RobotsTextFileGetResponse copyWith({
    String? robots_file_content,
    String? mime_type,
  }) {
    return RobotsTextFileGetResponse(
      robots_file_content: robots_file_content ?? this.robots_file_content,
      mime_type: mime_type ?? this.mime_type,
    );
  }

  @override
  List<Object?> get props {
    return [
      robots_file_content,
      mime_type,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
