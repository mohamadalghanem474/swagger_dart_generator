// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user_get_res.freezed.dart';
part 'user_get_res.g.dart';

UserGetRes userGetResFromJsonString(String str) => UserGetRes.fromJson(json.decode(str));

String userGetResToJsonString(UserGetRes data) => json.encode(data.toJson());

@freezed
abstract class UserGetRes with _$UserGetRes {
  const factory UserGetRes({
    @JsonKey(name: "id", includeIfNull: false) String? id,
    @JsonKey(name: "firstName", includeIfNull: false) String? firstName,
    @JsonKey(name: "lastName", includeIfNull: false) String? lastName,
    @JsonKey(name: "role", includeIfNull: false) String? role,
}) = _UserGetRes;

  factory UserGetRes.fromJson(Map<String, dynamic> json) => _$UserGetResFromJson(json);
}



