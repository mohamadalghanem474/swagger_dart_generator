import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CancelShipmentByExternalIdPostRequest extends Equatable {
  const CancelShipmentByExternalIdPostRequest({this.externalid});

  final String? externalid;

  static CancelShipmentByExternalIdPostRequest fromJson(
      Map<String, dynamic> json) {
    return CancelShipmentByExternalIdPostRequest(
        externalid:
            json['externalid'] == null ? null : (json['externalid'] as String));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'externalid': externalid};
  }

  CancelShipmentByExternalIdPostRequest copyWith({String? externalid}) {
    return CancelShipmentByExternalIdPostRequest(
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
