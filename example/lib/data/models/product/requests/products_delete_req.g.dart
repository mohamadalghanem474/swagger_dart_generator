// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_delete_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductsDeleteReq _$ProductsDeleteReqFromJson(Map<String, dynamic> json) =>
    _ProductsDeleteReq(
      params: json['params'] == null
          ? null
          : ProductsDeleteReqParams.fromJson(
              json['params'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$ProductsDeleteReqToJson(_ProductsDeleteReq instance) =>
    <String, dynamic>{'params': ?instance.params};

_ProductsDeleteReqParams _$ProductsDeleteReqParamsFromJson(
  Map<String, dynamic> json,
) => _ProductsDeleteReqParams(id: (json['id'] as num?)?.toInt());

Map<String, dynamic> _$ProductsDeleteReqParamsToJson(
  _ProductsDeleteReqParams instance,
) => <String, dynamic>{'id': ?instance.id};
