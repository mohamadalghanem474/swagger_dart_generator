import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SetLanguagePostRequest extends Equatable {
  const SetLanguagePostRequest({
    this.returnurl,
    this.langid,
  });

  final String? returnurl;

  final int? langid;

  static SetLanguagePostRequest fromJson(Map<String, dynamic> json) {
    return SetLanguagePostRequest(
      returnurl:
          json['returnurl'] == null ? null : (json['returnurl'] as String),
      langid: json['langid'] == null ? null : (json['langid'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'returnurl': returnurl,
      'langid': langid,
    };
  }

  SetLanguagePostRequest copyWith({
    String? returnurl,
    int? langid,
  }) {
    return SetLanguagePostRequest(
      returnurl: returnurl ?? this.returnurl,
      langid: langid ?? this.langid,
    );
  }

  @override
  List<Object?> get props {
    return [
      returnurl,
      langid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
