// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'useruser_id_res.freezed.dart';
part 'useruser_id_res.g.dart';

UseruserIdRes useruserIdResFromJsonString(String str) =>
    UseruserIdRes.fromJson(json.decode(str));

String useruserIdResToJsonString(UseruserIdRes data) =>
    json.encode(data.toJson());

@freezed
abstract class UseruserIdRes with _$UseruserIdRes {
  const factory UseruserIdRes() = _UseruserIdRes;

  factory UseruserIdRes.fromJson(Map<String, dynamic> json) =>
      _$UseruserIdResFromJson(json);
}
