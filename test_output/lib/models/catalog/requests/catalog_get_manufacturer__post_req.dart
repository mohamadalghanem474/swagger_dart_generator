import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetManufacturerPostRequest extends Equatable {
  const GetManufacturerPostRequest({
    this.price,
    this.specification_option_ids,
    this.manufacturer_ids,
    this.order_by,
    this.view_mode,
    this.vendors_ids,
    this.categories_ids,
    this.rating,
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
    this.manufacturerid,
  });

  final String? price;

  final List<int>? specification_option_ids;

  final List<int>? manufacturer_ids;

  final int? order_by;

  final String? view_mode;

  final List<int>? vendors_ids;

  final List<int>? categories_ids;

  final int? rating;

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

  final int? manufacturerid;

  static GetManufacturerPostRequest fromJson(Map<String, dynamic> json) {
    return GetManufacturerPostRequest(
      price: json['price'] == null ? null : (json['price'] as String),
      specification_option_ids: json['specification_option_ids'] == null
          ? null
          : json['specification_option_ids'],
      manufacturer_ids:
          json['manufacturer_ids'] == null ? null : json['manufacturer_ids'],
      order_by: json['order_by'] == null ? null : (json['order_by'] as int),
      view_mode:
          json['view_mode'] == null ? null : (json['view_mode'] as String),
      vendors_ids: json['vendors_ids'] == null ? null : json['vendors_ids'],
      categories_ids:
          json['categories_ids'] == null ? null : json['categories_ids'],
      rating: json['rating'] == null ? null : (json['rating'] as int),
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
      manufacturerid: json['manufacturerid'] == null
          ? null
          : (json['manufacturerid'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'price': price,
      'specification_option_ids': specification_option_ids,
      'manufacturer_ids': manufacturer_ids,
      'order_by': order_by,
      'view_mode': view_mode,
      'vendors_ids': vendors_ids,
      'categories_ids': categories_ids,
      'rating': rating,
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
      'manufacturerid': manufacturerid,
    };
  }

  GetManufacturerPostRequest copyWith({
    String? price,
    List<int>? specification_option_ids,
    List<int>? manufacturer_ids,
    int? order_by,
    String? view_mode,
    List<int>? vendors_ids,
    List<int>? categories_ids,
    int? rating,
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
    int? manufacturerid,
  }) {
    return GetManufacturerPostRequest(
      price: price ?? this.price,
      specification_option_ids:
          specification_option_ids ?? this.specification_option_ids,
      manufacturer_ids: manufacturer_ids ?? this.manufacturer_ids,
      order_by: order_by ?? this.order_by,
      view_mode: view_mode ?? this.view_mode,
      vendors_ids: vendors_ids ?? this.vendors_ids,
      categories_ids: categories_ids ?? this.categories_ids,
      rating: rating ?? this.rating,
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
      manufacturerid: manufacturerid ?? this.manufacturerid,
    );
  }

  @override
  List<Object?> get props {
    return [
      price,
      specification_option_ids,
      manufacturer_ids,
      order_by,
      view_mode,
      vendors_ids,
      categories_ids,
      rating,
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
      manufacturerid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
