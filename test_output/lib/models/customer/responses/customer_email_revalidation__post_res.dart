import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class EmailRevalidationPostResponse extends Equatable {
  const EmailRevalidationPostResponse({
    this.result,
    this.return_url,
    this.custom_properties,
  });

  final String? result;

  final String? return_url;

  final Map<String, dynamic>? custom_properties;

  static EmailRevalidationPostResponse fromJson(Map<String, dynamic> json) {
    return EmailRevalidationPostResponse(
      result: json['result'] == null ? null : (json['result'] as String),
      return_url:
          json['return_url'] == null ? null : (json['return_url'] as String),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'result': result,
      'return_url': return_url,
      'custom_properties': custom_properties,
    };
  }

  EmailRevalidationPostResponse copyWith({
    String? result,
    String? return_url,
    Map<String, dynamic>? custom_properties,
  }) {
    return EmailRevalidationPostResponse(
      result: result ?? this.result,
      return_url: return_url ?? this.return_url,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      result,
      return_url,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
