import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SingleAddressAddPostRequest extends Equatable {
  const SingleAddressAddPostRequest({
    this.model,
    this.form,
  });

  final String? model;

  final Map<String, dynamic>? form;

  static SingleAddressAddPostRequest fromJson(Map<String, dynamic> json) {
    return SingleAddressAddPostRequest(
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

  SingleAddressAddPostRequest copyWith({
    String? model,
    Map<String, dynamic>? form,
  }) {
    return SingleAddressAddPostRequest(
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
