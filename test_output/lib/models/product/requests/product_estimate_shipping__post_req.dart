import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class EstimateShippingPostRequest extends Equatable {
  const EstimateShippingPostRequest({
    this.model,
    this.form,
  });

  final String? model;

  final Map<String, dynamic>? form;

  static EstimateShippingPostRequest fromJson(Map<String, dynamic> json) {
    return EstimateShippingPostRequest(
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

  EstimateShippingPostRequest copyWith({
    String? model,
    Map<String, dynamic>? form,
  }) {
    return EstimateShippingPostRequest(
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
