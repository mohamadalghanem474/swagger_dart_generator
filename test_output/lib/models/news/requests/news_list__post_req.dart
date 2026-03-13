import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ListPostRequest extends Equatable {
  const ListPostRequest({
    this.page_index,
    this.page_number,
    this.page_size,
    this.total_items,
    this.total_pages,
    this.first_item,
    this.last_item,
    this.has_previous_page,
    this.has_next_page,
    this.custom_properties,
  });

  final int? page_index;

  final int? page_number;

  final int? page_size;

  final int? total_items;

  final int? total_pages;

  final int? first_item;

  final int? last_item;

  final bool? has_previous_page;

  final bool? has_next_page;

  final Map<String, dynamic>? custom_properties;

  static ListPostRequest fromJson(Map<String, dynamic> json) {
    return ListPostRequest(
      page_index:
          json['page_index'] == null ? null : (json['page_index'] as int),
      page_number:
          json['page_number'] == null ? null : (json['page_number'] as int),
      page_size: json['page_size'] == null ? null : (json['page_size'] as int),
      total_items:
          json['total_items'] == null ? null : (json['total_items'] as int),
      total_pages:
          json['total_pages'] == null ? null : (json['total_pages'] as int),
      first_item:
          json['first_item'] == null ? null : (json['first_item'] as int),
      last_item: json['last_item'] == null ? null : (json['last_item'] as int),
      has_previous_page: json['has_previous_page'] == null
          ? null
          : (json['has_previous_page'] as bool),
      has_next_page: json['has_next_page'] == null
          ? null
          : (json['has_next_page'] as bool),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'page_index': page_index,
      'page_number': page_number,
      'page_size': page_size,
      'total_items': total_items,
      'total_pages': total_pages,
      'first_item': first_item,
      'last_item': last_item,
      'has_previous_page': has_previous_page,
      'has_next_page': has_next_page,
      'custom_properties': custom_properties,
    };
  }

  ListPostRequest copyWith({
    int? page_index,
    int? page_number,
    int? page_size,
    int? total_items,
    int? total_pages,
    int? first_item,
    int? last_item,
    bool? has_previous_page,
    bool? has_next_page,
    Map<String, dynamic>? custom_properties,
  }) {
    return ListPostRequest(
      page_index: page_index ?? this.page_index,
      page_number: page_number ?? this.page_number,
      page_size: page_size ?? this.page_size,
      total_items: total_items ?? this.total_items,
      total_pages: total_pages ?? this.total_pages,
      first_item: first_item ?? this.first_item,
      last_item: last_item ?? this.last_item,
      has_previous_page: has_previous_page ?? this.has_previous_page,
      has_next_page: has_next_page ?? this.has_next_page,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      page_index,
      page_number,
      page_size,
      total_items,
      total_pages,
      first_item,
      last_item,
      has_previous_page,
      has_next_page,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
