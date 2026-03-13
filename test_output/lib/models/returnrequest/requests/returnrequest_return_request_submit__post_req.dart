import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ReturnRequestSubmitPostRequest extends Equatable {
  const ReturnRequestSubmitPostRequest({
    this.model,
    this.form,
    this.orderid,
  });

  final String? model;

  final Map<String, dynamic>? form;

  final int? orderid;

  static ReturnRequestSubmitPostRequest fromJson(Map<String, dynamic> json) {
    return ReturnRequestSubmitPostRequest(
      model: json['model'] == null ? null : (json['model'] as String),
      form:
          json['form'] == null ? null : (json['form'] as Map<String, dynamic>),
      orderid: json['orderid'] == null ? null : (json['orderid'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'model': model,
      'form': form,
      'orderid': orderid,
    };
  }

  ReturnRequestSubmitPostRequest copyWith({
    String? model,
    Map<String, dynamic>? form,
    int? orderid,
  }) {
    return ReturnRequestSubmitPostRequest(
      model: model ?? this.model,
      form: form ?? this.form,
      orderid: orderid ?? this.orderid,
    );
  }

  @override
  List<Object?> get props {
    return [
      model,
      form,
      orderid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
