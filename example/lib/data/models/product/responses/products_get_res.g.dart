// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_get_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductsGetResItem _$ProductsGetResItemFromJson(Map<String, dynamic> json) =>
    _ProductsGetResItem(
      productId: (json['productId'] as num?)?.toInt(),
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toInt(),
      inStock: json['inStock'] as bool?,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
    );

Map<String, dynamic> _$ProductsGetResItemToJson(_ProductsGetResItem instance) =>
    <String, dynamic>{
      'productId': ?instance.productId,
      'name': ?instance.name,
      'price': ?instance.price,
      'inStock': ?instance.inStock,
      'tags': instance.tags,
    };
