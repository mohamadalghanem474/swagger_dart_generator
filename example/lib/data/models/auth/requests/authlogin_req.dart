// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'authlogin_req.freezed.dart';
part 'authlogin_req.g.dart';

AuthloginReq authloginReqFromJsonString(String str) =>
    AuthloginReq.fromJson(json.decode(str));

String authloginReqToJsonString(AuthloginReq data) =>
    json.encode(data.toJson());

@freezed
abstract class AuthloginReq with _$AuthloginReq {
  const factory AuthloginReq() = _AuthloginReq;

  factory AuthloginReq.fromJson(Map<String, dynamic> json) =>
      _$AuthloginReqFromJson(json);
}
