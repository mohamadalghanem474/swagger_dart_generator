// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_post_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductsPostReq _$ProductsPostReqFromJson(Map<String, dynamic> json) =>
    _ProductsPostReq(
      body: json['body'] == null
          ? null
          : ProductsPostReqBody.fromJson(json['body'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductsPostReqToJson(_ProductsPostReq instance) =>
    <String, dynamic>{'body': ?instance.body};

_ProductsPostReqBody _$ProductsPostReqBodyFromJson(Map<String, dynamic> json) =>
    _ProductsPostReqBody(
      productId: (json['productId'] as num?)?.toInt(),
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toInt(),
      inStock: json['inStock'] as bool?,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
    );

Map<String, dynamic> _$ProductsPostReqBodyToJson(
  _ProductsPostReqBody instance,
) => <String, dynamic>{
  'productId': ?instance.productId,
  'name': ?instance.name,
  'price': ?instance.price,
  'inStock': ?instance.inStock,
  'tags': instance.tags,
};
