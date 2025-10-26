// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'products_req.freezed.dart';
part 'products_req.g.dart';

ProductsReq productsReqFromJsonString(String str) =>
    ProductsReq.fromJson(json.decode(str));

String productsReqToJsonString(ProductsReq data) => json.encode(data.toJson());

@freezed
abstract class ProductsReq with _$ProductsReq {
  const factory ProductsReq() = _ProductsReq;

  factory ProductsReq.fromJson(Map<String, dynamic> json) =>
      _$ProductsReqFromJson(json);
}
