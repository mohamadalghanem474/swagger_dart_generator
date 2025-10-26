import 'package:example/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:example/data/repositories/product/product.dart';
import 'package:example/data/datasources/product/product.dart';
import 'package:example/data/models/product/requests/products_req.dart';
import 'package:example/data/models/product/requests/productsid_req.dart';
import 'package:example/data/models/product/responses/products_res.dart';
import 'package:example/data/models/product/responses/productsid_res.dart';

class ProductRepositoryImpl implements ProductRepository {
  final Failure failure;
  final ProductDataSource _dataSource;

  ProductRepositoryImpl(this._dataSource, this.failure);

  @override
  Future<Either<Failure, ProductsRes>> products(
    ProductsReq req, {
    CancelToken? cancelToken,
  }) async {
    try {
      final result = await _dataSource.products(req, cancelToken: cancelToken);
      return Right(result);
    } catch (e, stackTrace) {
      return Left(failure.handle(e, stackTrace));
    }
  }

  @override
  Future<Either<Failure, ProductsidRes>> productsid(
    ProductsidReq req, {
    CancelToken? cancelToken,
  }) async {
    try {
      final result = await _dataSource.productsid(
        req,
        cancelToken: cancelToken,
      );
      return Right(result);
    } catch (e, stackTrace) {
      return Left(failure.handle(e, stackTrace));
    }
  }
}
