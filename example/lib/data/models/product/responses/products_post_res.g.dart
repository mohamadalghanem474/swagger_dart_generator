// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_post_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductsPostRes _$ProductsPostResFromJson(Map<String, dynamic> json) =>
    _ProductsPostRes(
      productId: (json['productId'] as num?)?.toInt(),
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toInt(),
      inStock: json['inStock'] as bool?,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
    );

Map<String, dynamic> _$ProductsPostResToJson(_ProductsPostRes instance) =>
    <String, dynamic>{
      'productId': ?instance.productId,
      'name': ?instance.name,
      'price': ?instance.price,
      'inStock': ?instance.inStock,
      'tags': instance.tags,
    };
