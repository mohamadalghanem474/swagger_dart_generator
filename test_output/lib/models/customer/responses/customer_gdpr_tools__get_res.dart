import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GdprToolsGetResponse extends Equatable {
  const GdprToolsGetResponse({
    this.result,
    this.custom_properties,
  });

  final String? result;

  final Map<String, dynamic>? custom_properties;

  static GdprToolsGetResponse fromJson(Map<String, dynamic> json) {
    return GdprToolsGetResponse(
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

  GdprToolsGetResponse copyWith({
    String? result,
    Map<String, dynamic>? custom_properties,
  }) {
    return GdprToolsGetResponse(
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
