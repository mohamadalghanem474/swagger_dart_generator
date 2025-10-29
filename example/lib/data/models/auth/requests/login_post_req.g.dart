// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_post_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginPostReq _$LoginPostReqFromJson(Map<String, dynamic> json) =>
    _LoginPostReq(
      body: json['body'] == null
          ? null
          : LoginPostReqBody.fromJson(json['body'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginPostReqToJson(_LoginPostReq instance) =>
    <String, dynamic>{'body': ?instance.body};

_LoginPostReqBody _$LoginPostReqBodyFromJson(Map<String, dynamic> json) =>
    _LoginPostReqBody(
      email: json['email'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$LoginPostReqBodyToJson(_LoginPostReqBody instance) =>
    <String, dynamic>{'email': ?instance.email, 'password': ?instance.password};
