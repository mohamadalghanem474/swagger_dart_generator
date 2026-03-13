import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class RegisterPostRequest extends Equatable {
  const RegisterPostRequest({
    this.model,
    this.form,
    this.returnurl,
  });

  final String? model;

  final Map<String, dynamic>? form;

  final String? returnurl;

  static RegisterPostRequest fromJson(Map<String, dynamic> json) {
    return RegisterPostRequest(
      model: json['model'] == null ? null : (json['model'] as String),
      form:
          json['form'] == null ? null : (json['form'] as Map<String, dynamic>),
      returnurl:
          json['returnurl'] == null ? null : (json['returnurl'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'model': model,
      'form': form,
      'returnurl': returnurl,
    };
  }

  RegisterPostRequest copyWith({
    String? model,
    Map<String, dynamic>? form,
    String? returnurl,
  }) {
    return RegisterPostRequest(
      model: model ?? this.model,
      form: form ?? this.form,
      returnurl: returnurl ?? this.returnurl,
    );
  }

  @override
  List<Object?> get props {
    return [
      model,
      form,
      returnurl,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
