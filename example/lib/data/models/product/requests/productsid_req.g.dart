// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'productsid_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductsidReq _$ProductsidReqFromJson(Map<String, dynamic> json) =>
    _ProductsidReq(
      params: json['params'] == null
          ? null
          : ProductsidReqParams.fromJson(
              json['params'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$ProductsidReqToJson(_ProductsidReq instance) =>
    <String, dynamic>{'params': ?instance.params};

_ProductsidReqParams _$ProductsidReqParamsFromJson(Map<String, dynamic> json) =>
    _ProductsidReqParams(id: json['id'] as String?);

Map<String, dynamic> _$ProductsidReqParamsToJson(
  _ProductsidReqParams instance,
) => <String, dynamic>{'id': ?instance.id};
