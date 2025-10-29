// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'products_get_req.freezed.dart';
part 'products_get_req.g.dart';

ProductsGetReq productsGetReqFromJsonString(String str) => ProductsGetReq.fromJson(json.decode(str));

String productsGetReqToJsonString(ProductsGetReq data) => json.encode(data.toJson());

@freezed
abstract class ProductsGetReq with _$ProductsGetReq {
  const factory ProductsGetReq({
    @JsonKey(name: "query", includeIfNull: false) ProductsGetReqQuery? query,
}) = _ProductsGetReq;

  factory ProductsGetReq.fromJson(Map<String, dynamic> json) => _$ProductsGetReqFromJson(json);
}


ProductsGetReqQuery productsGetReqQueryFromJsonString(String str) => ProductsGetReqQuery.fromJson(json.decode(str));

String productsGetReqQueryToJsonString(ProductsGetReqQuery data) => json.encode(data.toJson());

@freezed
abstract class ProductsGetReqQuery with _$ProductsGetReqQuery {
  const factory ProductsGetReqQuery({
    @JsonKey(name: "searchQuery", includeIfNull: false) String? searchQuery,
}) = _ProductsGetReqQuery;

  factory ProductsGetReqQuery.fromJson(Map<String, dynamic> json) => _$ProductsGetReqQueryFromJson(json);
}



