// ignore_for_file: unused_import, prefer_const_constructors
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:example/failure.dart';
import 'package:example/example.dart';
import 'package:example/data/models/auth/requests/login_post_req.dart';
import 'package:example/data/models/auth/responses/login_post_res.dart';
import 'package:test/test.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.example.com'));
  final api = Example.init(dio);
  final repo = api.repository.auth;

  test('loginPost', () async {
    final req = LoginPostReq();
    final result = await repo.loginPost(req);
    expect(result.isRight(), true);
  });

}
