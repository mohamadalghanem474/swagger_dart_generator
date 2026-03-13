import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SearchByNameGetRequest extends Equatable {
  const SearchByNameGetRequest({
    this.searchterm,
    this.logifnotfound,
    this.languageid,
  });

  final String? searchterm;

  final bool? logifnotfound;

  final int? languageid;

  static SearchByNameGetRequest fromJson(Map<String, dynamic> json) {
    return SearchByNameGetRequest(
      searchterm:
          json['searchterm'] == null ? null : (json['searchterm'] as String),
      logifnotfound: json['logifnotfound'] == null
          ? null
          : (json['logifnotfound'] as bool),
      languageid:
          json['languageid'] == null ? null : (json['languageid'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'searchterm': searchterm,
      'logifnotfound': logifnotfound,
      'languageid': languageid,
    };
  }

  SearchByNameGetRequest copyWith({
    String? searchterm,
    bool? logifnotfound,
    int? languageid,
  }) {
    return SearchByNameGetRequest(
      searchterm: searchterm ?? this.searchterm,
      logifnotfound: logifnotfound ?? this.logifnotfound,
      languageid: languageid ?? this.languageid,
    );
  }

  @override
  List<Object?> get props {
    return [
      searchterm,
      logifnotfound,
      languageid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
