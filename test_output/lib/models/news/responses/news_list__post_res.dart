import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ListPostResponse extends Equatable {
  const ListPostResponse({
    this.working_language_id,
    this.paging_filtering_context,
    this.news_items,
    this.custom_properties,
  });

  final int? working_language_id;

  final String? paging_filtering_context;

  final List<String>? news_items;

  final Map<String, dynamic>? custom_properties;

  static ListPostResponse fromJson(Map<String, dynamic> json) {
    return ListPostResponse(
      working_language_id: json['working_language_id'] == null
          ? null
          : (json['working_language_id'] as int),
      paging_filtering_context: json['paging_filtering_context'] == null
          ? null
          : (json['paging_filtering_context'] as String),
      news_items: json['news_items'] == null ? null : json['news_items'],
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'working_language_id': working_language_id,
      'paging_filtering_context': paging_filtering_context,
      'news_items': news_items,
      'custom_properties': custom_properties,
    };
  }

  ListPostResponse copyWith({
    int? working_language_id,
    String? paging_filtering_context,
    List<String>? news_items,
    Map<String, dynamic>? custom_properties,
  }) {
    return ListPostResponse(
      working_language_id: working_language_id ?? this.working_language_id,
      paging_filtering_context:
          paging_filtering_context ?? this.paging_filtering_context,
      news_items: news_items ?? this.news_items,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      working_language_id,
      paging_filtering_context,
      news_items,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
