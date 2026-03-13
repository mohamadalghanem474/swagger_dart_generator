import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class AddressAddPostRequest extends Equatable {
  const AddressAddPostRequest({
    this.model,
    this.form,
  });

  final String? model;

  final Map<String, dynamic>? form;

  static AddressAddPostRequest fromJson(Map<String, dynamic> json) {
    return AddressAddPostRequest(
      model: json['model'] == null ? null : (json['model'] as String),
      form:
          json['form'] == null ? null : (json['form'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'model': model,
      'form': form,
    };
  }

  AddressAddPostRequest copyWith({
    String? model,
    Map<String, dynamic>? form,
  }) {
    return AddressAddPostRequest(
      model: model ?? this.model,
      form: form ?? this.form,
    );
  }

  @override
  List<Object?> get props {
    return [
      model,
      form,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
