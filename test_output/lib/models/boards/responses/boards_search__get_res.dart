import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SearchGetResponse extends Equatable {
  const SearchGetResponse({
    this.show_advanced_search,
    this.search_terms,
    this.forum_id,
    this.within,
    this.limit_days,
    this.forum_topics,
    this.topic_page_size,
    this.topic_total_records,
    this.topic_page_index,
    this.limit_list,
    this.forum_list,
    this.within_list,
    this.forum_id_selected,
    this.within_selected,
    this.limit_days_selected,
    this.search_results_visible,
    this.no_results_visisble,
    this.error,
    this.posts_page_size,
    this.allow_post_voting,
    this.custom_properties,
  });

  final bool? show_advanced_search;

  final String? search_terms;

  final int? forum_id;

  final int? within;

  final int? limit_days;

  final List<String>? forum_topics;

  final int? topic_page_size;

  final int? topic_total_records;

  final int? topic_page_index;

  final List<String>? limit_list;

  final List<String>? forum_list;

  final List<String>? within_list;

  final int? forum_id_selected;

  final int? within_selected;

  final int? limit_days_selected;

  final bool? search_results_visible;

  final bool? no_results_visisble;

  final String? error;

  final int? posts_page_size;

  final bool? allow_post_voting;

  final Map<String, dynamic>? custom_properties;

  static SearchGetResponse fromJson(Map<String, dynamic> json) {
    return SearchGetResponse(
      show_advanced_search: json['show_advanced_search'] == null
          ? null
          : (json['show_advanced_search'] as bool),
      search_terms: json['search_terms'] == null
          ? null
          : (json['search_terms'] as String),
      forum_id: json['forum_id'] == null ? null : (json['forum_id'] as int),
      within: json['within'] == null ? null : (json['within'] as int),
      limit_days:
          json['limit_days'] == null ? null : (json['limit_days'] as int),
      forum_topics: json['forum_topics'] == null ? null : json['forum_topics'],
      topic_page_size: json['topic_page_size'] == null
          ? null
          : (json['topic_page_size'] as int),
      topic_total_records: json['topic_total_records'] == null
          ? null
          : (json['topic_total_records'] as int),
      topic_page_index: json['topic_page_index'] == null
          ? null
          : (json['topic_page_index'] as int),
      limit_list: json['limit_list'] == null ? null : json['limit_list'],
      forum_list: json['forum_list'] == null ? null : json['forum_list'],
      within_list: json['within_list'] == null ? null : json['within_list'],
      forum_id_selected: json['forum_id_selected'] == null
          ? null
          : (json['forum_id_selected'] as int),
      within_selected: json['within_selected'] == null
          ? null
          : (json['within_selected'] as int),
      limit_days_selected: json['limit_days_selected'] == null
          ? null
          : (json['limit_days_selected'] as int),
      search_results_visible: json['search_results_visible'] == null
          ? null
          : (json['search_results_visible'] as bool),
      no_results_visisble: json['no_results_visisble'] == null
          ? null
          : (json['no_results_visisble'] as bool),
      error: json['error'] == null ? null : (json['error'] as String),
      posts_page_size: json['posts_page_size'] == null
          ? null
          : (json['posts_page_size'] as int),
      allow_post_voting: json['allow_post_voting'] == null
          ? null
          : (json['allow_post_voting'] as bool),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'show_advanced_search': show_advanced_search,
      'search_terms': search_terms,
      'forum_id': forum_id,
      'within': within,
      'limit_days': limit_days,
      'forum_topics': forum_topics,
      'topic_page_size': topic_page_size,
      'topic_total_records': topic_total_records,
      'topic_page_index': topic_page_index,
      'limit_list': limit_list,
      'forum_list': forum_list,
      'within_list': within_list,
      'forum_id_selected': forum_id_selected,
      'within_selected': within_selected,
      'limit_days_selected': limit_days_selected,
      'search_results_visible': search_results_visible,
      'no_results_visisble': no_results_visisble,
      'error': error,
      'posts_page_size': posts_page_size,
      'allow_post_voting': allow_post_voting,
      'custom_properties': custom_properties,
    };
  }

  SearchGetResponse copyWith({
    bool? show_advanced_search,
    String? search_terms,
    int? forum_id,
    int? within,
    int? limit_days,
    List<String>? forum_topics,
    int? topic_page_size,
    int? topic_total_records,
    int? topic_page_index,
    List<String>? limit_list,
    List<String>? forum_list,
    List<String>? within_list,
    int? forum_id_selected,
    int? within_selected,
    int? limit_days_selected,
    bool? search_results_visible,
    bool? no_results_visisble,
    String? error,
    int? posts_page_size,
    bool? allow_post_voting,
    Map<String, dynamic>? custom_properties,
  }) {
    return SearchGetResponse(
      show_advanced_search: show_advanced_search ?? this.show_advanced_search,
      search_terms: search_terms ?? this.search_terms,
      forum_id: forum_id ?? this.forum_id,
      within: within ?? this.within,
      limit_days: limit_days ?? this.limit_days,
      forum_topics: forum_topics ?? this.forum_topics,
      topic_page_size: topic_page_size ?? this.topic_page_size,
      topic_total_records: topic_total_records ?? this.topic_total_records,
      topic_page_index: topic_page_index ?? this.topic_page_index,
      limit_list: limit_list ?? this.limit_list,
      forum_list: forum_list ?? this.forum_list,
      within_list: within_list ?? this.within_list,
      forum_id_selected: forum_id_selected ?? this.forum_id_selected,
      within_selected: within_selected ?? this.within_selected,
      limit_days_selected: limit_days_selected ?? this.limit_days_selected,
      search_results_visible:
          search_results_visible ?? this.search_results_visible,
      no_results_visisble: no_results_visisble ?? this.no_results_visisble,
      error: error ?? this.error,
      posts_page_size: posts_page_size ?? this.posts_page_size,
      allow_post_voting: allow_post_voting ?? this.allow_post_voting,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      show_advanced_search,
      search_terms,
      forum_id,
      within,
      limit_days,
      forum_topics,
      topic_page_size,
      topic_total_records,
      topic_page_index,
      limit_list,
      forum_list,
      within_list,
      forum_id_selected,
      within_selected,
      limit_days_selected,
      search_results_visible,
      no_results_visisble,
      error,
      posts_page_size,
      allow_post_voting,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
