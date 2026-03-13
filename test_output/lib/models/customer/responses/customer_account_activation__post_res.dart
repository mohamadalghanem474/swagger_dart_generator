import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class AccountActivationPostResponse extends Equatable {
  const AccountActivationPostResponse({
    this.result,
    this.return_url,
    this.custom_properties,
  });

  final String? result;

  final String? return_url;

  final Map<String, dynamic>? custom_properties;

  static AccountActivationPostResponse fromJson(Map<String, dynamic> json) {
    return AccountActivationPostResponse(
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

  AccountActivationPostResponse copyWith({
    String? result,
    String? return_url,
    Map<String, dynamic>? custom_properties,
  }) {
    return AccountActivationPostResponse(
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
