// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_get_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserGetRes _$UserGetResFromJson(Map<String, dynamic> json) => _UserGetRes(
  id: json['id'] as String?,
  firstName: json['firstName'] as String?,
  lastName: json['lastName'] as String?,
  role: json['role'] as String?,
);

Map<String, dynamic> _$UserGetResToJson(_UserGetRes instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'firstName': ?instance.firstName,
      'lastName': ?instance.lastName,
      'role': ?instance.role,
    };
