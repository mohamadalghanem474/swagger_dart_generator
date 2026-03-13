import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetProductsByTagPostResponse extends Equatable {
  const GetProductsByTagPostResponse({
    this.tag_name,
    this.tag_se_name,
    this.catalog_products_model,
    this.id,
    this.custom_properties,
  });

  final String? tag_name;

  final String? tag_se_name;

  final String? catalog_products_model;

  final int? id;

  final Map<String, dynamic>? custom_properties;

  static GetProductsByTagPostResponse fromJson(Map<String, dynamic> json) {
    return GetProductsByTagPostResponse(
      tag_name: json['tag_name'] == null ? null : (json['tag_name'] as String),
      tag_se_name:
          json['tag_se_name'] == null ? null : (json['tag_se_name'] as String),
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
      'tag_name': tag_name,
      'tag_se_name': tag_se_name,
      'catalog_products_model': catalog_products_model,
      'id': id,
      'custom_properties': custom_properties,
    };
  }

  GetProductsByTagPostResponse copyWith({
    String? tag_name,
    String? tag_se_name,
    String? catalog_products_model,
    int? id,
    Map<String, dynamic>? custom_properties,
  }) {
    return GetProductsByTagPostResponse(
      tag_name: tag_name ?? this.tag_name,
      tag_se_name: tag_se_name ?? this.tag_se_name,
      catalog_products_model:
          catalog_products_model ?? this.catalog_products_model,
      id: id ?? this.id,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      tag_name,
      tag_se_name,
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
