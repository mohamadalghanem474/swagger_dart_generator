// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'products_delete_res.freezed.dart';
part 'products_delete_res.g.dart';

ProductsDeleteRes productsDeleteResFromJsonString(String str) => ProductsDeleteRes.fromJson(json.decode(str));

String productsDeleteResToJsonString(ProductsDeleteRes data) => json.encode(data.toJson());

@freezed
abstract class ProductsDeleteRes with _$ProductsDeleteRes {
  const factory ProductsDeleteRes() = _ProductsDeleteRes;

  factory ProductsDeleteRes.fromJson(Map<String, dynamic> json) => _$ProductsDeleteResFromJson(json);
}



