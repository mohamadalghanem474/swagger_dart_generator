import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SingleAddressEditPutRequest extends Equatable {
  const SingleAddressEditPutRequest({
    this.model,
    this.form,
    this.addressid,
  });

  final String? model;

  final Map<String, dynamic>? form;

  final int? addressid;

  static SingleAddressEditPutRequest fromJson(Map<String, dynamic> json) {
    return SingleAddressEditPutRequest(
      model: json['model'] == null ? null : (json['model'] as String),
      form:
          json['form'] == null ? null : (json['form'] as Map<String, dynamic>),
      addressid: json['addressid'] == null ? null : (json['addressid'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'model': model,
      'form': form,
      'addressid': addressid,
    };
  }

  SingleAddressEditPutRequest copyWith({
    String? model,
    Map<String, dynamic>? form,
    int? addressid,
  }) {
    return SingleAddressEditPutRequest(
      model: model ?? this.model,
      form: form ?? this.form,
      addressid: addressid ?? this.addressid,
    );
  }

  @override
  List<Object?> get props {
    return [
      model,
      form,
      addressid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
