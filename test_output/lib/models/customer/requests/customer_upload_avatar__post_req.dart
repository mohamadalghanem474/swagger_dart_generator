import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class UploadAvatarPostRequest extends Equatable {
  const UploadAvatarPostRequest({
    this.filename,
    this.contenttype,
  });

  final String? filename;

  final String? contenttype;

  static UploadAvatarPostRequest fromJson(Map<String, dynamic> json) {
    return UploadAvatarPostRequest(
      filename: json['filename'] == null ? null : (json['filename'] as String),
      contenttype:
          json['contenttype'] == null ? null : (json['contenttype'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'filename': filename,
      'contenttype': contenttype,
    };
  }

  UploadAvatarPostRequest copyWith({
    String? filename,
    String? contenttype,
  }) {
    return UploadAvatarPostRequest(
      filename: filename ?? this.filename,
      contenttype: contenttype ?? this.contenttype,
    );
  }

  @override
  List<Object?> get props {
    return [
      filename,
      contenttype,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
