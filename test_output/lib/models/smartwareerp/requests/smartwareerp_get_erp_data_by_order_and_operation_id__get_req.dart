import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetErpDataByOrderAndOperationIdGetRequest extends Equatable {
  const GetErpDataByOrderAndOperationIdGetRequest({
    this.entityid,
    this.operationid,
  });

  final int? entityid;

  final int? operationid;

  static GetErpDataByOrderAndOperationIdGetRequest fromJson(
      Map<String, dynamic> json) {
    return GetErpDataByOrderAndOperationIdGetRequest(
      entityid: json['entityid'] == null ? null : (json['entityid'] as int),
      operationid:
          json['operationid'] == null ? null : (json['operationid'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'entityid': entityid,
      'operationid': operationid,
    };
  }

  GetErpDataByOrderAndOperationIdGetRequest copyWith({
    int? entityid,
    int? operationid,
  }) {
    return GetErpDataByOrderAndOperationIdGetRequest(
      entityid: entityid ?? this.entityid,
      operationid: operationid ?? this.operationid,
    );
  }

  @override
  List<Object?> get props {
    return [
      entityid,
      operationid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
