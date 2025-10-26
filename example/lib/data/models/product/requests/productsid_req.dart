// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'productsid_req.freezed.dart';
part 'productsid_req.g.dart';

ProductsidReq productsidReqFromJsonString(String str) =>
    ProductsidReq.fromJson(json.decode(str));

String productsidReqToJsonString(ProductsidReq data) =>
    json.encode(data.toJson());

@freezed
abstract class ProductsidReq with _$ProductsidReq {
  const factory ProductsidReq({
    @JsonKey(name: "params", includeIfNull: false) ProductsidReqParams? params,
  }) = _ProductsidReq;

  factory ProductsidReq.fromJson(Map<String, dynamic> json) =>
      _$ProductsidReqFromJson(json);
}

ProductsidReqParams productsidReqParamsFromJsonString(String str) =>
    ProductsidReqParams.fromJson(json.decode(str));

String productsidReqParamsToJsonString(ProductsidReqParams data) =>
    json.encode(data.toJson());

@freezed
abstract class ProductsidReqParams with _$ProductsidReqParams {
  const factory ProductsidReqParams({
    @JsonKey(name: "id", includeIfNull: false) String? id,
  }) = _ProductsidReqParams;

  factory ProductsidReqParams.fromJson(Map<String, dynamic> json) =>
      _$ProductsidReqParamsFromJson(json);
}
