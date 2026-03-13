import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SingleAddressAddPostResponse extends Equatable {
  const SingleAddressAddPostResponse({
    this.model,
    this.errors,
  });

  final String? model;

  final List<String>? errors;

  static SingleAddressAddPostResponse fromJson(Map<String, dynamic> json) {
    return SingleAddressAddPostResponse(
      model: json['model'] == null ? null : (json['model'] as String),
      errors: json['errors'] == null ? null : json['errors'],
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'model': model,
      'errors': errors,
    };
  }

  SingleAddressAddPostResponse copyWith({
    String? model,
    List<String>? errors,
  }) {
    return SingleAddressAddPostResponse(
      model: model ?? this.model,
      errors: errors ?? this.errors,
    );
  }

  @override
  List<Object?> get props {
    return [
      model,
      errors,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
