import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class OpcSaveShippingPostRequest extends Equatable {
  const OpcSaveShippingPostRequest({
    this.model,
    this.form,
  });

  final String? model;

  final Map<String, dynamic>? form;

  static OpcSaveShippingPostRequest fromJson(Map<String, dynamic> json) {
    return OpcSaveShippingPostRequest(
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

  OpcSaveShippingPostRequest copyWith({
    String? model,
    Map<String, dynamic>? form,
  }) {
    return OpcSaveShippingPostRequest(
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
