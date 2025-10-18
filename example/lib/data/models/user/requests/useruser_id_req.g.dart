// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'useruser_id_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UseruserIdReq _$UseruserIdReqFromJson(Map<String, dynamic> json) =>
    _UseruserIdReq(
      query: json['query'] == null
          ? null
          : UseruserIdReqQuery.fromJson(json['query'] as Map<String, dynamic>),
      params: json['params'] == null
          ? null
          : UseruserIdReqParams.fromJson(
              json['params'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$UseruserIdReqToJson(_UseruserIdReq instance) =>
    <String, dynamic>{'query': ?instance.query, 'params': ?instance.params};

_UseruserIdReqQuery _$UseruserIdReqQueryFromJson(Map<String, dynamic> json) =>
    _UseruserIdReqQuery(includeDetails: json['includeDetails'] as String?);

Map<String, dynamic> _$UseruserIdReqQueryToJson(_UseruserIdReqQuery instance) =>
    <String, dynamic>{'includeDetails': ?instance.includeDetails};

_UseruserIdReqParams _$UseruserIdReqParamsFromJson(Map<String, dynamic> json) =>
    _UseruserIdReqParams(userId: json['userId'] as String?);

Map<String, dynamic> _$UseruserIdReqParamsToJson(
  _UseruserIdReqParams instance,
) => <String, dynamic>{'userId': ?instance.userId};
