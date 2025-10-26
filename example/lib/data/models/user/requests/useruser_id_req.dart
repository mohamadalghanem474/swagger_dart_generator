// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'useruser_id_req.freezed.dart';
part 'useruser_id_req.g.dart';

UseruserIdReq useruserIdReqFromJsonString(String str) =>
    UseruserIdReq.fromJson(json.decode(str));

String useruserIdReqToJsonString(UseruserIdReq data) =>
    json.encode(data.toJson());

@freezed
abstract class UseruserIdReq with _$UseruserIdReq {
  const factory UseruserIdReq({
    @JsonKey(name: "query", includeIfNull: false) UseruserIdReqQuery? query,
    @JsonKey(name: "params", includeIfNull: false) UseruserIdReqParams? params,
  }) = _UseruserIdReq;

  factory UseruserIdReq.fromJson(Map<String, dynamic> json) =>
      _$UseruserIdReqFromJson(json);
}

UseruserIdReqQuery useruserIdReqQueryFromJsonString(String str) =>
    UseruserIdReqQuery.fromJson(json.decode(str));

String useruserIdReqQueryToJsonString(UseruserIdReqQuery data) =>
    json.encode(data.toJson());

@freezed
abstract class UseruserIdReqQuery with _$UseruserIdReqQuery {
  const factory UseruserIdReqQuery({
    @JsonKey(name: "includeDetails", includeIfNull: false)
    String? includeDetails,
  }) = _UseruserIdReqQuery;

  factory UseruserIdReqQuery.fromJson(Map<String, dynamic> json) =>
      _$UseruserIdReqQueryFromJson(json);
}

UseruserIdReqParams useruserIdReqParamsFromJsonString(String str) =>
    UseruserIdReqParams.fromJson(json.decode(str));

String useruserIdReqParamsToJsonString(UseruserIdReqParams data) =>
    json.encode(data.toJson());

@freezed
abstract class UseruserIdReqParams with _$UseruserIdReqParams {
  const factory UseruserIdReqParams({
    @JsonKey(name: "userId", includeIfNull: false) String? userId,
  }) = _UseruserIdReqParams;

  factory UseruserIdReqParams.fromJson(Map<String, dynamic> json) =>
      _$UseruserIdReqParamsFromJson(json);
}
