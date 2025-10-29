// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'login_post_res.freezed.dart';
part 'login_post_res.g.dart';

LoginPostRes loginPostResFromJsonString(String str) => LoginPostRes.fromJson(json.decode(str));

String loginPostResToJsonString(LoginPostRes data) => json.encode(data.toJson());

@freezed
abstract class LoginPostRes with _$LoginPostRes {
  const factory LoginPostRes({
    @JsonKey(name: "accessToken", includeIfNull: false) String? accessToken,
    @JsonKey(name: "refreshToken", includeIfNull: false) String? refreshToken,
    @JsonKey(name: "expiresIn", includeIfNull: false) int? expiresIn,
}) = _LoginPostRes;

  factory LoginPostRes.fromJson(Map<String, dynamic> json) => _$LoginPostResFromJson(json);
}



