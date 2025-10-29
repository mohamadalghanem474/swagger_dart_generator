// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'products_get_res.freezed.dart';
part 'products_get_res.g.dart';


@freezed
abstract class ProductsGetRes with _$ProductsGetRes {
  const factory ProductsGetRes({@Default([]) List<ProductsGetResItem> items,
}) = _ProductsGetRes;
}

ProductsGetResItem productsGetResItemFromJsonString(String str) => ProductsGetResItem.fromJson(json.decode(str));

String productsGetResItemToJsonString(ProductsGetResItem data) => json.encode(data.toJson());

@freezed
abstract class ProductsGetResItem with _$ProductsGetResItem {
  const factory ProductsGetResItem({
    @JsonKey(name: "productId", includeIfNull: false) int? productId,
    @JsonKey(name: "name", includeIfNull: false) String? name,
    @JsonKey(name: "price", includeIfNull: false) int? price,
    @JsonKey(name: "inStock", includeIfNull: false) bool? inStock,
    @Default([]) @JsonKey(name: "tags", includeIfNull: false) List<String> tags,
}  ) = _ProductsGetResItem;

  factory ProductsGetResItem.fromJson(Map<String, dynamic> json) => _$ProductsGetResItemFromJson(json);
}



