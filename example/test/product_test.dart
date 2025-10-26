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

class ExampleFailure extends Failure {
  ExampleFailure(super.message);
  @override
  Failure handle(dynamic e, StackTrace stackTrace) {
    return ExampleFailure("${e.toString()} \n ${stackTrace.toString()}");
  }
}

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.example.com'));
  final api = Example.getInstance(dio, ExampleFailure(""));
  final repo = api.product;

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
