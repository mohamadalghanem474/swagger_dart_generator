import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:example/failure.dart';
import 'package:example/data/models/product/requests/products_get_req.dart';
import 'package:example/data/models/product/requests/products_post_req.dart';
import 'package:example/data/models/product/requests/products_delete_req.dart';
import 'package:example/data/models/product/responses/products_get_res.dart';
import 'package:example/data/models/product/responses/products_post_res.dart';
import 'package:example/data/models/product/responses/products_delete_res.dart';

abstract class ProductRepository {
  Future<Either<FailureDetails, ProductsGetRes>> productsGet(ProductsGetReq req, {CancelToken? cancelToken, void Function(int, int)? onReceiveProgress, Options? options});
  Future<Either<FailureDetails, ProductsPostRes>> productsPost(ProductsPostReq req, {CancelToken? cancelToken, void Function(int, int)? onReceiveProgress, Options? options});
  Future<Either<FailureDetails, ProductsDeleteRes>> productsDelete(ProductsDeleteReq req, {CancelToken? cancelToken, Options? options});
}
