// ignore_for_file: unused_import, prefer_const_constructors
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:example/failure.dart';
import 'package:example/example.dart';
import 'package:example/data/models/product/requests/products_get_req.dart';
import 'package:example/data/models/product/requests/products_post_req.dart';
import 'package:example/data/models/product/requests/products_delete_req.dart';
import 'package:example/data/models/product/responses/products_get_res.dart';
import 'package:example/data/models/product/responses/products_post_res.dart';
import 'package:example/data/models/product/responses/products_delete_res.dart';
import 'package:test/test.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.example.com'));
  final api = Example.init(dio);
  final repo = api.repository.product;

  test('productsGet', () async {
    final req = ProductsGetReq();
    final result = await repo.productsGet(req);
    expect(result.isRight(), true);
  });

  test('productsPost', () async {
    final req = ProductsPostReq();
    final result = await repo.productsPost(req);
    expect(result.isRight(), true);
  });

  test('productsDelete', () async {
    final req = ProductsDeleteReq();
    final result = await repo.productsDelete(req);
    expect(result.isRight(), true);
  });

}
