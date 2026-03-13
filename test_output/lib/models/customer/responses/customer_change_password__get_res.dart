import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ChangePasswordGetResponse extends Equatable {
  const ChangePasswordGetResponse({
    this.old_password,
    this.new_password,
    this.confirm_new_password,
    this.custom_properties,
  });

  final String? old_password;

  final String? new_password;

  final String? confirm_new_password;

  final Map<String, dynamic>? custom_properties;

  static ChangePasswordGetResponse fromJson(Map<String, dynamic> json) {
    return ChangePasswordGetResponse(
      old_password: json['old_password'] == null
          ? null
          : (json['old_password'] as String),
      new_password: json['new_password'] == null
          ? null
          : (json['new_password'] as String),
      confirm_new_password: json['confirm_new_password'] == null
          ? null
          : (json['confirm_new_password'] as String),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'old_password': old_password,
      'new_password': new_password,
      'confirm_new_password': confirm_new_password,
      'custom_properties': custom_properties,
    };
  }

  ChangePasswordGetResponse copyWith({
    String? old_password,
    String? new_password,
    String? confirm_new_password,
    Map<String, dynamic>? custom_properties,
  }) {
    return ChangePasswordGetResponse(
      old_password: old_password ?? this.old_password,
      new_password: new_password ?? this.new_password,
      confirm_new_password: confirm_new_password ?? this.confirm_new_password,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      old_password,
      new_password,
      confirm_new_password,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
