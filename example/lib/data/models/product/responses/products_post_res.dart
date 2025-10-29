// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'products_post_res.freezed.dart';
part 'products_post_res.g.dart';

ProductsPostRes productsPostResFromJsonString(String str) => ProductsPostRes.fromJson(json.decode(str));

String productsPostResToJsonString(ProductsPostRes data) => json.encode(data.toJson());

@freezed
abstract class ProductsPostRes with _$ProductsPostRes {
  const factory ProductsPostRes({
    @JsonKey(name: "productId", includeIfNull: false) int? productId,
    @JsonKey(name: "name", includeIfNull: false) String? name,
    @JsonKey(name: "price", includeIfNull: false) int? price,
    @JsonKey(name: "inStock", includeIfNull: false) bool? inStock,
    @Default([]) @JsonKey(name: "tags", includeIfNull: false) List<String> tags,
}) = _ProductsPostRes;

  factory ProductsPostRes.fromJson(Map<String, dynamic> json) => _$ProductsPostResFromJson(json);
}



