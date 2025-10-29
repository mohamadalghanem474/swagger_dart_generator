import 'package:dio/dio.dart';
import 'package:example/data/datasources/product/product.dart';
import 'package:example/data/models/product/requests/products_get_req.dart';
import 'package:example/data/models/product/requests/products_post_req.dart';
import 'package:example/data/models/product/requests/products_delete_req.dart';
import 'package:example/data/models/product/responses/products_get_res.dart';
import 'package:example/data/models/product/responses/products_post_res.dart';
import 'package:example/data/models/product/responses/products_delete_res.dart';
import 'package:example/end_points.dart';

class ProductRemoteDataSourceImpl implements ProductDataSource {
  final Dio _dio;
  ProductRemoteDataSourceImpl(this._dio);

  @override
  Future<ProductsGetRes> productsGet(ProductsGetReq req, {CancelToken? cancelToken, void Function(int, int)? onReceiveProgress, Options? options}) async {
    String url = EndPoints.product.productsGet;
    final result = await _dio.get(url, queryParameters: req.query?.toJson(), cancelToken: cancelToken, onReceiveProgress: onReceiveProgress, options: options);
    return ProductsGetRes(items: (result.data as List).map((e) => ProductsGetResItem.fromJson(e)).toList());
  }

  @override
  Future<ProductsPostRes> productsPost(ProductsPostReq req, {CancelToken? cancelToken, void Function(int, int)? onReceiveProgress, Options? options}) async {
    String url = EndPoints.product.productsPost;
    final result = await _dio.post(url, data: req.body?.toJson(), cancelToken: cancelToken, onReceiveProgress: onReceiveProgress, options: options);
    return ProductsPostRes.fromJson(result.data);
  }

  @override
  Future<ProductsDeleteRes> productsDelete(ProductsDeleteReq req, {CancelToken? cancelToken, Options? options}) async {
    String url = EndPoints.product.productsDelete;
    url = url.replaceAll('{id}', req.params?.id?.toString() ?? '');
    final result = await _dio.delete(url, cancelToken: cancelToken, options: options);
    return ProductsDeleteRes.fromJson(result.data);
  }

}
