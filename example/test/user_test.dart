// ignore_for_file: unused_import, prefer_const_constructors
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:example/failure.dart';
import 'package:example/example.dart';
import 'package:example/data/models/user/requests/user_get_req.dart';
import 'package:example/data/models/user/responses/user_get_res.dart';
import 'package:test/test.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.example.com'));
  final api = Example.init(dio);
  final repo = api.repository.user;

  test('userGet', () async {
    final req = UserGetReq();
    final result = await repo.userGet(req);
    expect(result.isRight(), true);
  });

}
