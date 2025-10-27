import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:example/failure.dart';
import 'package:example/data/models/product/requests/products_req.dart';
import 'package:example/data/models/product/requests/productsid_req.dart';
import 'package:example/data/models/product/responses/products_res.dart';
import 'package:example/data/models/product/responses/productsid_res.dart';

abstract class ProductRepository {
  Future<Either<FailureDetails, ProductsRes>> products(ProductsReq req, {CancelToken? cancelToken});
  Future<Either<FailureDetails, ProductsidRes>> productsid(ProductsidReq req, {CancelToken? cancelToken});
}
