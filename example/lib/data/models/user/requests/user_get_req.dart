// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user_get_req.freezed.dart';
part 'user_get_req.g.dart';

UserGetReq userGetReqFromJsonString(String str) => UserGetReq.fromJson(json.decode(str));

String userGetReqToJsonString(UserGetReq data) => json.encode(data.toJson());

@freezed
abstract class UserGetReq with _$UserGetReq {
  const factory UserGetReq({
    @JsonKey(name: "query", includeIfNull: false) UserGetReqQuery? query,
    @JsonKey(name: "params", includeIfNull: false) UserGetReqParams? params,
}) = _UserGetReq;

  factory UserGetReq.fromJson(Map<String, dynamic> json) => _$UserGetReqFromJson(json);
}


UserGetReqQuery userGetReqQueryFromJsonString(String str) => UserGetReqQuery.fromJson(json.decode(str));

String userGetReqQueryToJsonString(UserGetReqQuery data) => json.encode(data.toJson());

@freezed
abstract class UserGetReqQuery with _$UserGetReqQuery {
  const factory UserGetReqQuery({
    @JsonKey(name: "includeDetails", includeIfNull: false) bool? includeDetails,
}) = _UserGetReqQuery;

  factory UserGetReqQuery.fromJson(Map<String, dynamic> json) => _$UserGetReqQueryFromJson(json);
}


UserGetReqParams userGetReqParamsFromJsonString(String str) => UserGetReqParams.fromJson(json.decode(str));

String userGetReqParamsToJsonString(UserGetReqParams data) => json.encode(data.toJson());

@freezed
abstract class UserGetReqParams with _$UserGetReqParams {
  const factory UserGetReqParams({
    @JsonKey(name: "userId", includeIfNull: false) String? userId,
}) = _UserGetReqParams;

  factory UserGetReqParams.fromJson(Map<String, dynamic> json) => _$UserGetReqParamsFromJson(json);
}



