import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class IcarryAddressAddPostRequest extends Equatable {
  const IcarryAddressAddPostRequest({
    this.model,
    this.form,
  });

  final String? model;

  final Map<String, dynamic>? form;

  static IcarryAddressAddPostRequest fromJson(Map<String, dynamic> json) {
    return IcarryAddressAddPostRequest(
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

  IcarryAddressAddPostRequest copyWith({
    String? model,
    Map<String, dynamic>? form,
  }) {
    return IcarryAddressAddPostRequest(
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
