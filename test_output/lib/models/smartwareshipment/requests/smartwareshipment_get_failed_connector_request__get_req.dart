import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetFailedConnectorRequestGetRequest extends Equatable {
  const GetFailedConnectorRequestGetRequest({this.failedconnectorrequestid});

  final int? failedconnectorrequestid;

  static GetFailedConnectorRequestGetRequest fromJson(
      Map<String, dynamic> json) {
    return GetFailedConnectorRequestGetRequest(
        failedconnectorrequestid: json['failedconnectorrequestid'] == null
            ? null
            : (json['failedconnectorrequestid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'failedconnectorrequestid': failedconnectorrequestid
    };
  }

  GetFailedConnectorRequestGetRequest copyWith(
      {int? failedconnectorrequestid}) {
    return GetFailedConnectorRequestGetRequest(
        failedconnectorrequestid:
            failedconnectorrequestid ?? this.failedconnectorrequestid);
  }

  @override
  List<Object?> get props {
    return [failedconnectorrequestid];
  }

  @override
  bool get stringify {
    return true;
  }
}
