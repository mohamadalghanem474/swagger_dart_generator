// ignore_for_file: unused_import, prefer_const_constructors
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:example/failure.dart';
import 'package:example/example.dart';
import 'package:example/data/models/product/requests/products_req.dart';
import 'package:example/data/models/product/requests/productsid_req.dart';
import 'package:example/data/models/product/responses/products_res.dart';
import 'package:example/data/models/product/responses/productsid_res.dart';
import 'package:test/test.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.example.com'));
  final api = Example.init(dio);
  final repo = api.repository.product;

  test('products', () async {
    final req = ProductsReq();
    final result = await repo.products(req);
    expect(result.isRight(), true);
  });

  test('productsid', () async {
    final req = ProductsidReq();
    final result = await repo.productsid(req);
    expect(result.isRight(), true);
  });

}
