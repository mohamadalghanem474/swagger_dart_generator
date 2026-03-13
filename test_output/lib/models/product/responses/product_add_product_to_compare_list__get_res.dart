import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class AddProductToCompareListGetResponse extends Equatable {
  const AddProductToCompareListGetResponse({
    this.success,
    this.message,
  });

  final bool? success;

  final String? message;

  static AddProductToCompareListGetResponse fromJson(
      Map<String, dynamic> json) {
    return AddProductToCompareListGetResponse(
      success: json['success'] == null ? null : (json['success'] as bool),
      message: json['message'] == null ? null : (json['message'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'success': success,
      'message': message,
    };
  }

  AddProductToCompareListGetResponse copyWith({
    bool? success,
    String? message,
  }) {
    return AddProductToCompareListGetResponse(
      success: success ?? this.success,
      message: message ?? this.message,
    );
  }

  @override
  List<Object?> get props {
    return [
      success,
      message,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
