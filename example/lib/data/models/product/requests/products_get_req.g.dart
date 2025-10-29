// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_get_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductsGetReq _$ProductsGetReqFromJson(Map<String, dynamic> json) =>
    _ProductsGetReq(
      query: json['query'] == null
          ? null
          : ProductsGetReqQuery.fromJson(json['query'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductsGetReqToJson(_ProductsGetReq instance) =>
    <String, dynamic>{'query': ?instance.query};

_ProductsGetReqQuery _$ProductsGetReqQueryFromJson(Map<String, dynamic> json) =>
    _ProductsGetReqQuery(searchQuery: json['searchQuery'] as String?);

Map<String, dynamic> _$ProductsGetReqQueryToJson(
  _ProductsGetReqQuery instance,
) => <String, dynamic>{'searchQuery': ?instance.searchQuery};
