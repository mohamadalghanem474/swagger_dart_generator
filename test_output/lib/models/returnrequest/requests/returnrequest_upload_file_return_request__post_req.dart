import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class UploadFileReturnRequestPostRequest extends Equatable {
  const UploadFileReturnRequestPostRequest({
    this.filename,
    this.contenttype,
  });

  final String? filename;

  final String? contenttype;

  static UploadFileReturnRequestPostRequest fromJson(
      Map<String, dynamic> json) {
    return UploadFileReturnRequestPostRequest(
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

  UploadFileReturnRequestPostRequest copyWith({
    String? filename,
    String? contenttype,
  }) {
    return UploadFileReturnRequestPostRequest(
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
