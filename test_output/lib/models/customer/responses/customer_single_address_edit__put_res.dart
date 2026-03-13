import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SingleAddressEditPutResponse extends Equatable {
  const SingleAddressEditPutResponse({
    this.model,
    this.errors,
  });

  final String? model;

  final List<String>? errors;

  static SingleAddressEditPutResponse fromJson(Map<String, dynamic> json) {
    return SingleAddressEditPutResponse(
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

  SingleAddressEditPutResponse copyWith({
    String? model,
    List<String>? errors,
  }) {
    return SingleAddressEditPutResponse(
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
