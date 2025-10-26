import 'package:dio/dio.dart';
import 'package:example/failure.dart';
import 'package:example/data/datasources/auth/auth.dart';
import 'package:example/data/datasources/auth/auth_remote_datasource_impl.dart';
import 'package:example/data/repositories/auth/auth.dart';
import 'package:example/data/repositories/auth/auth_repository_impl.dart';
import 'package:example/data/datasources/user/user.dart';
import 'package:example/data/datasources/user/user_remote_datasource_impl.dart';
import 'package:example/data/repositories/user/user.dart';
import 'package:example/data/repositories/user/user_repository_impl.dart';
import 'package:example/data/datasources/product/product.dart';
import 'package:example/data/datasources/product/product_remote_datasource_impl.dart';
import 'package:example/data/repositories/product/product.dart';
import 'package:example/data/repositories/product/product_repository_impl.dart';

class Example {
  static Example? _instance;
  final Dio _dio;
  final Failure mainFailure;
  Example._internal(this._dio, this.mainFailure);
  static Example getInstance(Dio dio, Failure mainFailure) =>
      _instance ??= Example._internal(dio, mainFailure);

  AuthRepository? _auth;
  AuthRepository get auth =>
      _auth ??= AuthRepositoryImpl(AuthRemoteDataSourceImpl(_dio), mainFailure);
  UserRepository? _user;
  UserRepository get user =>
      _user ??= UserRepositoryImpl(UserRemoteDataSourceImpl(_dio), mainFailure);
  ProductRepository? _product;
  ProductRepository get product => _product ??= ProductRepositoryImpl(
    ProductRemoteDataSourceImpl(_dio),
    mainFailure,
  );
}

class DataSource {
  static DataSource? _instance;
  final Dio _dio;
  DataSource._internal(this._dio);
  static DataSource getInstance(Dio dio) =>
      _instance ??= DataSource._internal(dio);

  AuthDataSource? _auth;
  AuthDataSource get auth => _auth ??= AuthRemoteDataSourceImpl(_dio);
  UserDataSource? _user;
  UserDataSource get user => _user ??= UserRemoteDataSourceImpl(_dio);
  ProductDataSource? _product;
  ProductDataSource get product =>
      _product ??= ProductRemoteDataSourceImpl(_dio);
}
