import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SearchGetRequest extends Equatable {
  const SearchGetRequest({
    this.searchterms,
    this.advs,
    this.within,
    this.limitdays,
    this.page,
    this.forumid,
  });

  final String? searchterms;

  final bool? advs;

  final String? within;

  final String? limitdays;

  final int? page;

  final String? forumid;

  static SearchGetRequest fromJson(Map<String, dynamic> json) {
    return SearchGetRequest(
      searchterms:
          json['searchterms'] == null ? null : (json['searchterms'] as String),
      advs: json['advs'] == null ? null : (json['advs'] as bool),
      within: json['within'] == null ? null : (json['within'] as String),
      limitdays:
          json['limitdays'] == null ? null : (json['limitdays'] as String),
      page: json['page'] == null ? null : (json['page'] as int),
      forumid: json['forumid'] == null ? null : (json['forumid'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'searchterms': searchterms,
      'advs': advs,
      'within': within,
      'limitdays': limitdays,
      'page': page,
      'forumid': forumid,
    };
  }

  SearchGetRequest copyWith({
    String? searchterms,
    bool? advs,
    String? within,
    String? limitdays,
    int? page,
    String? forumid,
  }) {
    return SearchGetRequest(
      searchterms: searchterms ?? this.searchterms,
      advs: advs ?? this.advs,
      within: within ?? this.within,
      limitdays: limitdays ?? this.limitdays,
      page: page ?? this.page,
      forumid: forumid ?? this.forumid,
    );
  }

  @override
  List<Object?> get props {
    return [
      searchterms,
      advs,
      within,
      limitdays,
      page,
      forumid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
