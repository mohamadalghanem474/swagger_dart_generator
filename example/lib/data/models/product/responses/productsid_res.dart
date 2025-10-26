// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'productsid_res.freezed.dart';
part 'productsid_res.g.dart';

ProductsidRes productsidResFromJsonString(String str) =>
    ProductsidRes.fromJson(json.decode(str));

String productsidResToJsonString(ProductsidRes data) =>
    json.encode(data.toJson());

@freezed
abstract class ProductsidRes with _$ProductsidRes {
  const factory ProductsidRes() = _ProductsidRes;

  factory ProductsidRes.fromJson(Map<String, dynamic> json) =>
      _$ProductsidResFromJson(json);
}
