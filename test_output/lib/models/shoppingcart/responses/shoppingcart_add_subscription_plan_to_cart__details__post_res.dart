import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class AddSubscriptionPlanToCartDetailsPostResponse extends Equatable {
  const AddSubscriptionPlanToCartDetailsPostResponse({
    this.errors,
    this.success,
    this.message,
    this.model,
  });

  final List<String>? errors;

  final bool? success;

  final String? message;

  final String? model;

  static AddSubscriptionPlanToCartDetailsPostResponse fromJson(
      Map<String, dynamic> json) {
    return AddSubscriptionPlanToCartDetailsPostResponse(
      errors: json['errors'] == null ? null : json['errors'],
      success: json['success'] == null ? null : (json['success'] as bool),
      message: json['message'] == null ? null : (json['message'] as String),
      model: json['model'] == null ? null : (json['model'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'errors': errors,
      'success': success,
      'message': message,
      'model': model,
    };
  }

  AddSubscriptionPlanToCartDetailsPostResponse copyWith({
    List<String>? errors,
    bool? success,
    String? message,
    String? model,
  }) {
    return AddSubscriptionPlanToCartDetailsPostResponse(
      errors: errors ?? this.errors,
      success: success ?? this.success,
      message: message ?? this.message,
      model: model ?? this.model,
    );
  }

  @override
  List<Object?> get props {
    return [
      errors,
      success,
      message,
      model,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
