import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class InfoPostRequest extends Equatable {
  const InfoPostRequest({
    this.model,
    this.form,
  });

  final String? model;

  final Map<String, dynamic>? form;

  static InfoPostRequest fromJson(Map<String, dynamic> json) {
    return InfoPostRequest(
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

  InfoPostRequest copyWith({
    String? model,
    Map<String, dynamic>? form,
  }) {
    return InfoPostRequest(
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
