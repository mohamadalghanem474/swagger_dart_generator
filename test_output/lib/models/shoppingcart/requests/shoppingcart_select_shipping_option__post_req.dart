import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SelectShippingOptionPostRequest extends Equatable {
  const SelectShippingOptionPostRequest({
    this.model,
    this.form,
    this.name,
  });

  final String? model;

  final Map<String, dynamic>? form;

  final String? name;

  static SelectShippingOptionPostRequest fromJson(Map<String, dynamic> json) {
    return SelectShippingOptionPostRequest(
      model: json['model'] == null ? null : (json['model'] as String),
      form:
          json['form'] == null ? null : (json['form'] as Map<String, dynamic>),
      name: json['name'] == null ? null : (json['name'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'model': model,
      'form': form,
      'name': name,
    };
  }

  SelectShippingOptionPostRequest copyWith({
    String? model,
    Map<String, dynamic>? form,
    String? name,
  }) {
    return SelectShippingOptionPostRequest(
      model: model ?? this.model,
      form: form ?? this.form,
      name: name ?? this.name,
    );
  }

  @override
  List<Object?> get props {
    return [
      model,
      form,
      name,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
