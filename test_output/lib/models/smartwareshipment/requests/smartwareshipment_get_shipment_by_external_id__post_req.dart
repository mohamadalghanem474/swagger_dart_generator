import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetShipmentByExternalIdPostRequest extends Equatable {
  const GetShipmentByExternalIdPostRequest({this.externalid});

  final String? externalid;

  static GetShipmentByExternalIdPostRequest fromJson(
      Map<String, dynamic> json) {
    return GetShipmentByExternalIdPostRequest(
        externalid:
            json['externalid'] == null ? null : (json['externalid'] as String));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'externalid': externalid};
  }

  GetShipmentByExternalIdPostRequest copyWith({String? externalid}) {
    return GetShipmentByExternalIdPostRequest(
        externalid: externalid ?? this.externalid);
  }

  @override
  List<Object?> get props {
    return [externalid];
  }

  @override
  bool get stringify {
    return true;
  }
}
