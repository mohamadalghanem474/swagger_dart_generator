import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GdprToolsDeleteDeleteResponse extends Equatable {
  const GdprToolsDeleteDeleteResponse({
    this.result,
    this.custom_properties,
  });

  final String? result;

  final Map<String, dynamic>? custom_properties;

  static GdprToolsDeleteDeleteResponse fromJson(Map<String, dynamic> json) {
    return GdprToolsDeleteDeleteResponse(
      result: json['result'] == null ? null : (json['result'] as String),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'result': result,
      'custom_properties': custom_properties,
    };
  }

  GdprToolsDeleteDeleteResponse copyWith({
    String? result,
    Map<String, dynamic>? custom_properties,
  }) {
    return GdprToolsDeleteDeleteResponse(
      result: result ?? this.result,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      result,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
