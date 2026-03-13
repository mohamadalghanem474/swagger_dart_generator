import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class UploadFileCheckoutAttributePostResponse extends Equatable {
  const UploadFileCheckoutAttributePostResponse({
    this.success,
    this.message,
    this.download_url,
    this.download_guid,
  });

  final bool? success;

  final String? message;

  final String? download_url;

  final String? download_guid;

  static UploadFileCheckoutAttributePostResponse fromJson(
      Map<String, dynamic> json) {
    return UploadFileCheckoutAttributePostResponse(
      success: json['success'] == null ? null : (json['success'] as bool),
      message: json['message'] == null ? null : (json['message'] as String),
      download_url: json['download_url'] == null
          ? null
          : (json['download_url'] as String),
      download_guid: json['download_guid'] == null
          ? null
          : (json['download_guid'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'success': success,
      'message': message,
      'download_url': download_url,
      'download_guid': download_guid,
    };
  }

  UploadFileCheckoutAttributePostResponse copyWith({
    bool? success,
    String? message,
    String? download_url,
    String? download_guid,
  }) {
    return UploadFileCheckoutAttributePostResponse(
      success: success ?? this.success,
      message: message ?? this.message,
      download_url: download_url ?? this.download_url,
      download_guid: download_guid ?? this.download_guid,
    );
  }

  @override
  List<Object?> get props {
    return [
      success,
      message,
      download_url,
      download_guid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
