import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ReceiventVendorListGetResponse extends Equatable {
  const ReceiventVendorListGetResponse({
    this.total_count,
    this.total_pages,
    this.has_previous_page,
    this.has_next_page,
    this.items,
    this.page_index,
    this.page_size,
  });

  final int? total_count;

  final int? total_pages;

  final bool? has_previous_page;

  final bool? has_next_page;

  final List<String>? items;

  final int? page_index;

  final int? page_size;

  static ReceiventVendorListGetResponse fromJson(Map<String, dynamic> json) {
    return ReceiventVendorListGetResponse(
      total_count:
          json['total_count'] == null ? null : (json['total_count'] as int),
      total_pages:
          json['total_pages'] == null ? null : (json['total_pages'] as int),
      has_previous_page: json['has_previous_page'] == null
          ? null
          : (json['has_previous_page'] as bool),
      has_next_page: json['has_next_page'] == null
          ? null
          : (json['has_next_page'] as bool),
      items: json['items'] == null ? null : json['items'],
      page_index:
          json['page_index'] == null ? null : (json['page_index'] as int),
      page_size: json['page_size'] == null ? null : (json['page_size'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'total_count': total_count,
      'total_pages': total_pages,
      'has_previous_page': has_previous_page,
      'has_next_page': has_next_page,
      'items': items,
      'page_index': page_index,
      'page_size': page_size,
    };
  }

  ReceiventVendorListGetResponse copyWith({
    int? total_count,
    int? total_pages,
    bool? has_previous_page,
    bool? has_next_page,
    List<String>? items,
    int? page_index,
    int? page_size,
  }) {
    return ReceiventVendorListGetResponse(
      total_count: total_count ?? this.total_count,
      total_pages: total_pages ?? this.total_pages,
      has_previous_page: has_previous_page ?? this.has_previous_page,
      has_next_page: has_next_page ?? this.has_next_page,
      items: items ?? this.items,
      page_index: page_index ?? this.page_index,
      page_size: page_size ?? this.page_size,
    );
  }

  @override
  List<Object?> get props {
    return [
      total_count,
      total_pages,
      has_previous_page,
      has_next_page,
      items,
      page_index,
      page_size,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
