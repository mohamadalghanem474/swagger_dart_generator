import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetAddressByIdGetResponse extends Equatable {
  const GetAddressByIdGetResponse({
    this.content,
    this.content_type,
  });

  final String? content;

  final String? content_type;

  static GetAddressByIdGetResponse fromJson(Map<String, dynamic> json) {
    return GetAddressByIdGetResponse(
      content: json['content'] == null ? null : (json['content'] as String),
      content_type: json['content_type'] == null
          ? null
          : (json['content_type'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'content': content,
      'content_type': content_type,
    };
  }

  GetAddressByIdGetResponse copyWith({
    String? content,
    String? content_type,
  }) {
    return GetAddressByIdGetResponse(
      content: content ?? this.content,
      content_type: content_type ?? this.content_type,
    );
  }

  @override
  List<Object?> get props {
    return [
      content,
      content_type,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
