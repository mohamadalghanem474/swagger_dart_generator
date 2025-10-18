import 'package:dio/dio.dart';
import 'package:example/data/datasources/product/product.dart';
import 'package:example/data/models/product/requests/products_req.dart';
import 'package:example/data/models/product/requests/productsid_req.dart';
import 'package:example/data/models/product/responses/products_res.dart';
import 'package:example/data/models/product/responses/productsid_res.dart';
import 'package:example/end_points.dart';

class ProductRemoteDataSourceImpl implements ProductDataSource {
  final Dio _dio;
  ProductRemoteDataSourceImpl(this._dio);

  @override
  Future<ProductsRes> products(ProductsReq req, {CancelToken? cancelToken}) async {
    String url = EndPoints.product.products;
    final result = await _dio.post(url, cancelToken: cancelToken);
    return ProductsRes.fromJson(result.data);
  }

  @override
  Future<ProductsidRes> productsid(ProductsidReq req, {CancelToken? cancelToken}) async {
    String url = EndPoints.product.productsid;
    url = url.replaceAll('{id}', req.params?.id?.toString() ?? '');
    final result = await _dio.delete(url, cancelToken: cancelToken);
    return ProductsidRes.fromJson(result.data);
  }

}
