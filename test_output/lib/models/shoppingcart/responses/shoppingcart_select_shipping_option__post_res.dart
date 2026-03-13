import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SelectShippingOptionPostResponse extends Equatable {
  const SelectShippingOptionPostResponse({
    this.success,
    this.model,
    this.errors,
  });

  final bool? success;

  final String? model;

  final List<String>? errors;

  static SelectShippingOptionPostResponse fromJson(Map<String, dynamic> json) {
    return SelectShippingOptionPostResponse(
      success: json['success'] == null ? null : (json['success'] as bool),
      model: json['model'] == null ? null : (json['model'] as String),
      errors: json['errors'] == null ? null : json['errors'],
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'success': success,
      'model': model,
      'errors': errors,
    };
  }

  SelectShippingOptionPostResponse copyWith({
    bool? success,
    String? model,
    List<String>? errors,
  }) {
    return SelectShippingOptionPostResponse(
      success: success ?? this.success,
      model: model ?? this.model,
      errors: errors ?? this.errors,
    );
  }

  @override
  List<Object?> get props {
    return [
      success,
      model,
      errors,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
