// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'products_res.freezed.dart';
part 'products_res.g.dart';

ProductsRes productsResFromJsonString(String str) => ProductsRes.fromJson(json.decode(str));

String productsResToJsonString(ProductsRes data) => json.encode(data.toJson());

@freezed
abstract class ProductsRes with _$ProductsRes {
  const factory ProductsRes() = _ProductsRes;

  factory ProductsRes.fromJson(Map<String, dynamic> json) => _$ProductsResFromJson(json);
}



