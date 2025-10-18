// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'authlogin_res.freezed.dart';
part 'authlogin_res.g.dart';

AuthloginRes authloginResFromJsonString(String str) => AuthloginRes.fromJson(json.decode(str));

String authloginResToJsonString(AuthloginRes data) => json.encode(data.toJson());

@freezed
abstract class AuthloginRes with _$AuthloginRes {
  const factory AuthloginRes() = _AuthloginRes;

  factory AuthloginRes.fromJson(Map<String, dynamic> json) => _$AuthloginResFromJson(json);
}



