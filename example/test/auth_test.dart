// ignore_for_file: unused_import, prefer_const_constructors
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:example/failure.dart';
import 'package:example/example.dart';
import 'package:example/data/models/auth/requests/authlogin_req.dart';
import 'package:example/data/models/auth/responses/authlogin_res.dart';
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
  final repo = api.auth;

  test('authlogin', () async {
    final req = AuthloginReq();
    final result = await repo.authlogin(req);
    expect(result.isRight(), true);
  });
}
