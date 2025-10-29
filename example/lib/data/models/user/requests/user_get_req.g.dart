// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_get_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserGetReq _$UserGetReqFromJson(Map<String, dynamic> json) => _UserGetReq(
  query: json['query'] == null
      ? null
      : UserGetReqQuery.fromJson(json['query'] as Map<String, dynamic>),
  params: json['params'] == null
      ? null
      : UserGetReqParams.fromJson(json['params'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UserGetReqToJson(_UserGetReq instance) =>
    <String, dynamic>{'query': ?instance.query, 'params': ?instance.params};

_UserGetReqQuery _$UserGetReqQueryFromJson(Map<String, dynamic> json) =>
    _UserGetReqQuery(includeDetails: json['includeDetails'] as bool?);

Map<String, dynamic> _$UserGetReqQueryToJson(_UserGetReqQuery instance) =>
    <String, dynamic>{'includeDetails': ?instance.includeDetails};

_UserGetReqParams _$UserGetReqParamsFromJson(Map<String, dynamic> json) =>
    _UserGetReqParams(userId: json['userId'] as String?);

Map<String, dynamic> _$UserGetReqParamsToJson(_UserGetReqParams instance) =>
    <String, dynamic>{'userId': ?instance.userId};
