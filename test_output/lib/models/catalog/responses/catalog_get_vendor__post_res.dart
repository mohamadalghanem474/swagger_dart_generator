import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetVendorPostResponse extends Equatable {
  const GetVendorPostResponse({
    this.name,
    this.description,
    this.meta_keywords,
    this.meta_description,
    this.meta_title,
    this.se_name,
    this.allow_customers_to_contact_vendors,
    this.picture_model,
    this.catalog_products_model,
    this.id,
    this.custom_properties,
  });

  final String? name;

  final String? description;

  final String? meta_keywords;

  final String? meta_description;

  final String? meta_title;

  final String? se_name;

  final bool? allow_customers_to_contact_vendors;

  final String? picture_model;

  final String? catalog_products_model;

  final int? id;

  final Map<String, dynamic>? custom_properties;

  static GetVendorPostResponse fromJson(Map<String, dynamic> json) {
    return GetVendorPostResponse(
      name: json['name'] == null ? null : (json['name'] as String),
      description:
          json['description'] == null ? null : (json['description'] as String),
      meta_keywords: json['meta_keywords'] == null
          ? null
          : (json['meta_keywords'] as String),
      meta_description: json['meta_description'] == null
          ? null
          : (json['meta_description'] as String),
      meta_title:
          json['meta_title'] == null ? null : (json['meta_title'] as String),
      se_name: json['se_name'] == null ? null : (json['se_name'] as String),
      allow_customers_to_contact_vendors:
          json['allow_customers_to_contact_vendors'] == null
              ? null
              : (json['allow_customers_to_contact_vendors'] as bool),
      picture_model: json['picture_model'] == null
          ? null
          : (json['picture_model'] as String),
      catalog_products_model: json['catalog_products_model'] == null
          ? null
          : (json['catalog_products_model'] as String),
      id: json['id'] == null ? null : (json['id'] as int),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'meta_keywords': meta_keywords,
      'meta_description': meta_description,
      'meta_title': meta_title,
      'se_name': se_name,
      'allow_customers_to_contact_vendors': allow_customers_to_contact_vendors,
      'picture_model': picture_model,
      'catalog_products_model': catalog_products_model,
      'id': id,
      'custom_properties': custom_properties,
    };
  }

  GetVendorPostResponse copyWith({
    String? name,
    String? description,
    String? meta_keywords,
    String? meta_description,
    String? meta_title,
    String? se_name,
    bool? allow_customers_to_contact_vendors,
    String? picture_model,
    String? catalog_products_model,
    int? id,
    Map<String, dynamic>? custom_properties,
  }) {
    return GetVendorPostResponse(
      name: name ?? this.name,
      description: description ?? this.description,
      meta_keywords: meta_keywords ?? this.meta_keywords,
      meta_description: meta_description ?? this.meta_description,
      meta_title: meta_title ?? this.meta_title,
      se_name: se_name ?? this.se_name,
      allow_customers_to_contact_vendors: allow_customers_to_contact_vendors ??
          this.allow_customers_to_contact_vendors,
      picture_model: picture_model ?? this.picture_model,
      catalog_products_model:
          catalog_products_model ?? this.catalog_products_model,
      id: id ?? this.id,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      name,
      description,
      meta_keywords,
      meta_description,
      meta_title,
      se_name,
      allow_customers_to_contact_vendors,
      picture_model,
      catalog_products_model,
      id,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
