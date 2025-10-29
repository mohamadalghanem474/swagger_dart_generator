// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'products_post_req.freezed.dart';
part 'products_post_req.g.dart';

ProductsPostReq productsPostReqFromJsonString(String str) => ProductsPostReq.fromJson(json.decode(str));

String productsPostReqToJsonString(ProductsPostReq data) => json.encode(data.toJson());

@freezed
abstract class ProductsPostReq with _$ProductsPostReq {
  const factory ProductsPostReq({
    @JsonKey(name: "body", includeIfNull: false) ProductsPostReqBody? body,
}) = _ProductsPostReq;

  factory ProductsPostReq.fromJson(Map<String, dynamic> json) => _$ProductsPostReqFromJson(json);
}


ProductsPostReqBody productsPostReqBodyFromJsonString(String str) => ProductsPostReqBody.fromJson(json.decode(str));

String productsPostReqBodyToJsonString(ProductsPostReqBody data) => json.encode(data.toJson());

@freezed
abstract class ProductsPostReqBody with _$ProductsPostReqBody {
  const factory ProductsPostReqBody({
    @JsonKey(name: "productId", includeIfNull: false) int? productId,
    @JsonKey(name: "name", includeIfNull: false) String? name,
    @JsonKey(name: "price", includeIfNull: false) int? price,
    @JsonKey(name: "inStock", includeIfNull: false) bool? inStock,
    @Default([]) @JsonKey(name: "tags", includeIfNull: false) List<String> tags,
}) = _ProductsPostReqBody;

  factory ProductsPostReqBody.fromJson(Map<String, dynamic> json) => _$ProductsPostReqBodyFromJson(json);
}



