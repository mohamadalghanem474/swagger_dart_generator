import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SearchTermAutoCompleteGetRequest extends Equatable {
  const SearchTermAutoCompleteGetRequest({this.term});

  final String? term;

  static SearchTermAutoCompleteGetRequest fromJson(Map<String, dynamic> json) {
    return SearchTermAutoCompleteGetRequest(
        term: json['term'] == null ? null : (json['term'] as String));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'term': term};
  }

  SearchTermAutoCompleteGetRequest copyWith({String? term}) {
    return SearchTermAutoCompleteGetRequest(term: term ?? this.term);
  }

  @override
  List<Object?> get props {
    return [term];
  }

  @override
  bool get stringify {
    return true;
  }
}
