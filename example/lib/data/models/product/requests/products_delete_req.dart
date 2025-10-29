// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'products_delete_req.freezed.dart';
part 'products_delete_req.g.dart';

ProductsDeleteReq productsDeleteReqFromJsonString(String str) => ProductsDeleteReq.fromJson(json.decode(str));

String productsDeleteReqToJsonString(ProductsDeleteReq data) => json.encode(data.toJson());

@freezed
abstract class ProductsDeleteReq with _$ProductsDeleteReq {
  const factory ProductsDeleteReq({
    @JsonKey(name: "params", includeIfNull: false) ProductsDeleteReqParams? params,
}) = _ProductsDeleteReq;

  factory ProductsDeleteReq.fromJson(Map<String, dynamic> json) => _$ProductsDeleteReqFromJson(json);
}


ProductsDeleteReqParams productsDeleteReqParamsFromJsonString(String str) => ProductsDeleteReqParams.fromJson(json.decode(str));

String productsDeleteReqParamsToJsonString(ProductsDeleteReqParams data) => json.encode(data.toJson());

@freezed
abstract class ProductsDeleteReqParams with _$ProductsDeleteReqParams {
  const factory ProductsDeleteReqParams({
    @JsonKey(name: "id", includeIfNull: false) int? id,
}) = _ProductsDeleteReqParams;

  factory ProductsDeleteReqParams.fromJson(Map<String, dynamic> json) => _$ProductsDeleteReqParamsFromJson(json);
}



