// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'login_post_req.freezed.dart';
part 'login_post_req.g.dart';

LoginPostReq loginPostReqFromJsonString(String str) => LoginPostReq.fromJson(json.decode(str));

String loginPostReqToJsonString(LoginPostReq data) => json.encode(data.toJson());

@freezed
abstract class LoginPostReq with _$LoginPostReq {
  const factory LoginPostReq({
    @JsonKey(name: "body", includeIfNull: false) LoginPostReqBody? body,
}) = _LoginPostReq;

  factory LoginPostReq.fromJson(Map<String, dynamic> json) => _$LoginPostReqFromJson(json);
}


LoginPostReqBody loginPostReqBodyFromJsonString(String str) => LoginPostReqBody.fromJson(json.decode(str));

String loginPostReqBodyToJsonString(LoginPostReqBody data) => json.encode(data.toJson());

@freezed
abstract class LoginPostReqBody with _$LoginPostReqBody {
  const factory LoginPostReqBody({
    @JsonKey(name: "email", includeIfNull: false) String? email,
    @JsonKey(name: "password", includeIfNull: false) String? password,
}) = _LoginPostReqBody;

  factory LoginPostReqBody.fromJson(Map<String, dynamic> json) => _$LoginPostReqBodyFromJson(json);
}



