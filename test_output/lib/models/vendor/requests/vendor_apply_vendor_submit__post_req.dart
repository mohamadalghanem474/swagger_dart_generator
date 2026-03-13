import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ApplyVendorSubmitPostRequest extends Equatable {
  const ApplyVendorSubmitPostRequest({
    this.picture_binary,
    this.model,
    this.form,
    this.contenttype,
  });

  final String? picture_binary;

  final String? model;

  final Map<String, dynamic>? form;

  final String? contenttype;

  static ApplyVendorSubmitPostRequest fromJson(Map<String, dynamic> json) {
    return ApplyVendorSubmitPostRequest(
      picture_binary: json['picture_binary'] == null
          ? null
          : (json['picture_binary'] as String),
      model: json['model'] == null ? null : (json['model'] as String),
      form:
          json['form'] == null ? null : (json['form'] as Map<String, dynamic>),
      contenttype:
          json['contenttype'] == null ? null : (json['contenttype'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'picture_binary': picture_binary,
      'model': model,
      'form': form,
      'contenttype': contenttype,
    };
  }

  ApplyVendorSubmitPostRequest copyWith({
    String? picture_binary,
    String? model,
    Map<String, dynamic>? form,
    String? contenttype,
  }) {
    return ApplyVendorSubmitPostRequest(
      picture_binary: picture_binary ?? this.picture_binary,
      model: model ?? this.model,
      form: form ?? this.form,
      contenttype: contenttype ?? this.contenttype,
    );
  }

  @override
  List<Object?> get props {
    return [
      picture_binary,
      model,
      form,
      contenttype,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
