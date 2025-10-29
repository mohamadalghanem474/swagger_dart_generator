import 'package:example/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:example/data/repositories/product/product.dart';
import 'package:example/data/datasources/product/product.dart';
import 'package:example/data/models/product/requests/products_get_req.dart';
import 'package:example/data/models/product/requests/products_post_req.dart';
import 'package:example/data/models/product/requests/products_delete_req.dart';
import 'package:example/data/models/product/responses/products_get_res.dart';
import 'package:example/data/models/product/responses/products_post_res.dart';
import 'package:example/data/models/product/responses/products_delete_res.dart';

class ProductRepositoryImpl implements ProductRepository {
  final Failure failure;
  final ProductDataSource _dataSource;

  ProductRepositoryImpl(this._dataSource, this.failure);

  @override
  Future<Either<FailureDetails, ProductsGetRes>> productsGet(ProductsGetReq req, {CancelToken? cancelToken, void Function(int, int)? onReceiveProgress, Options? options}) async {
    try {
      final result = await _dataSource.productsGet(req, cancelToken: cancelToken, onReceiveProgress: onReceiveProgress, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, ProductsPostRes>> productsPost(ProductsPostReq req, {CancelToken? cancelToken, void Function(int, int)? onReceiveProgress, Options? options}) async {
    try {
      final result = await _dataSource.productsPost(req, cancelToken: cancelToken, onReceiveProgress: onReceiveProgress, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<FailureDetails, ProductsDeleteRes>> productsDelete(ProductsDeleteReq req, {CancelToken? cancelToken, Options? options}) async {
    try {
      final result = await _dataSource.productsDelete(req, cancelToken: cancelToken, options: options);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(failure.handle(e, stackTrace));
    }
  }

}
