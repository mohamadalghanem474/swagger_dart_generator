import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class AddressEditPutResponse extends Equatable {
  const AddressEditPutResponse({
    this.model,
    this.errors,
  });

  final String? model;

  final List<String>? errors;

  static AddressEditPutResponse fromJson(Map<String, dynamic> json) {
    return AddressEditPutResponse(
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

  AddressEditPutResponse copyWith({
    String? model,
    List<String>? errors,
  }) {
    return AddressEditPutResponse(
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
