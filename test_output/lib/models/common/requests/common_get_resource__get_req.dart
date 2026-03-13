import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetResourceGetRequest extends Equatable {
  const GetResourceGetRequest({
    this.resourcekey,
    this.logifnotfound,
    this.defaultvalue,
    this.returnemptyifnotfound,
    this.languageid,
  });

  final String? resourcekey;

  final bool? logifnotfound;

  final String? defaultvalue;

  final bool? returnemptyifnotfound;

  final int? languageid;

  static GetResourceGetRequest fromJson(Map<String, dynamic> json) {
    return GetResourceGetRequest(
      resourcekey:
          json['resourcekey'] == null ? null : (json['resourcekey'] as String),
      logifnotfound: json['logifnotfound'] == null
          ? null
          : (json['logifnotfound'] as bool),
      defaultvalue: json['defaultvalue'] == null
          ? null
          : (json['defaultvalue'] as String),
      returnemptyifnotfound: json['returnemptyifnotfound'] == null
          ? null
          : (json['returnemptyifnotfound'] as bool),
      languageid:
          json['languageid'] == null ? null : (json['languageid'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'resourcekey': resourcekey,
      'logifnotfound': logifnotfound,
      'defaultvalue': defaultvalue,
      'returnemptyifnotfound': returnemptyifnotfound,
      'languageid': languageid,
    };
  }

  GetResourceGetRequest copyWith({
    String? resourcekey,
    bool? logifnotfound,
    String? defaultvalue,
    bool? returnemptyifnotfound,
    int? languageid,
  }) {
    return GetResourceGetRequest(
      resourcekey: resourcekey ?? this.resourcekey,
      logifnotfound: logifnotfound ?? this.logifnotfound,
      defaultvalue: defaultvalue ?? this.defaultvalue,
      returnemptyifnotfound:
          returnemptyifnotfound ?? this.returnemptyifnotfound,
      languageid: languageid ?? this.languageid,
    );
  }

  @override
  List<Object?> get props {
    return [
      resourcekey,
      logifnotfound,
      defaultvalue,
      returnemptyifnotfound,
      languageid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
