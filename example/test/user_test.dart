// ignore_for_file: unused_import, prefer_const_constructors
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:example/failure.dart';
import 'package:example/example.dart';
import 'package:example/data/models/user/requests/useruser_id_req.dart';
import 'package:example/data/models/user/responses/useruser_id_res.dart';
import 'package:test/test.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.example.com'));
  final api = Example.init(dio);
  final repo = api.repository.user;

  test('useruserId', () async {
    final req = UseruserIdReq();
    final result = await repo.useruserId(req);
    expect(result.isRight(), true);
  });

}
