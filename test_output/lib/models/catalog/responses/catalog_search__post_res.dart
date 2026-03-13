import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SearchPostResponse extends Equatable {
  const SearchPostResponse({
    this.q,
    this.cid,
    this.isc,
    this.mid,
    this.vid,
    this.sid,
    this.advs,
    this.asv,
    this.catalog_products_model,
    this.available_categories,
    this.available_manufacturers,
    this.available_vendors,
    this.rating,
    this.custom_properties,
  });

  final String? q;

  final int? cid;

  final bool? isc;

  final int? mid;

  final int? vid;

  final bool? sid;

  final bool? advs;

  final bool? asv;

  final String? catalog_products_model;

  final List<String>? available_categories;

  final List<String>? available_manufacturers;

  final List<String>? available_vendors;

  final int? rating;

  final Map<String, dynamic>? custom_properties;

  static SearchPostResponse fromJson(Map<String, dynamic> json) {
    return SearchPostResponse(
      q: json['q'] == null ? null : (json['q'] as String),
      cid: json['cid'] == null ? null : (json['cid'] as int),
      isc: json['isc'] == null ? null : (json['isc'] as bool),
      mid: json['mid'] == null ? null : (json['mid'] as int),
      vid: json['vid'] == null ? null : (json['vid'] as int),
      sid: json['sid'] == null ? null : (json['sid'] as bool),
      advs: json['advs'] == null ? null : (json['advs'] as bool),
      asv: json['asv'] == null ? null : (json['asv'] as bool),
      catalog_products_model: json['catalog_products_model'] == null
          ? null
          : (json['catalog_products_model'] as String),
      available_categories: json['available_categories'] == null
          ? null
          : json['available_categories'],
      available_manufacturers: json['available_manufacturers'] == null
          ? null
          : json['available_manufacturers'],
      available_vendors:
          json['available_vendors'] == null ? null : json['available_vendors'],
      rating: json['rating'] == null ? null : (json['rating'] as int),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'q': q,
      'cid': cid,
      'isc': isc,
      'mid': mid,
      'vid': vid,
      'sid': sid,
      'advs': advs,
      'asv': asv,
      'catalog_products_model': catalog_products_model,
      'available_categories': available_categories,
      'available_manufacturers': available_manufacturers,
      'available_vendors': available_vendors,
      'rating': rating,
      'custom_properties': custom_properties,
    };
  }

  SearchPostResponse copyWith({
    String? q,
    int? cid,
    bool? isc,
    int? mid,
    int? vid,
    bool? sid,
    bool? advs,
    bool? asv,
    String? catalog_products_model,
    List<String>? available_categories,
    List<String>? available_manufacturers,
    List<String>? available_vendors,
    int? rating,
    Map<String, dynamic>? custom_properties,
  }) {
    return SearchPostResponse(
      q: q ?? this.q,
      cid: cid ?? this.cid,
      isc: isc ?? this.isc,
      mid: mid ?? this.mid,
      vid: vid ?? this.vid,
      sid: sid ?? this.sid,
      advs: advs ?? this.advs,
      asv: asv ?? this.asv,
      catalog_products_model:
          catalog_products_model ?? this.catalog_products_model,
      available_categories: available_categories ?? this.available_categories,
      available_manufacturers:
          available_manufacturers ?? this.available_manufacturers,
      available_vendors: available_vendors ?? this.available_vendors,
      rating: rating ?? this.rating,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      q,
      cid,
      isc,
      mid,
      vid,
      sid,
      advs,
      asv,
      catalog_products_model,
      available_categories,
      available_manufacturers,
      available_vendors,
      rating,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
