import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetCarrierSubStatusListPostRequest extends Equatable {
  const GetCarrierSubStatusListPostRequest({this.icarrystatusid});

  final int? icarrystatusid;

  static GetCarrierSubStatusListPostRequest fromJson(
      Map<String, dynamic> json) {
    return GetCarrierSubStatusListPostRequest(
        icarrystatusid: json['icarrystatusid'] == null
            ? null
            : (json['icarrystatusid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'icarrystatusid': icarrystatusid};
  }

  GetCarrierSubStatusListPostRequest copyWith({int? icarrystatusid}) {
    return GetCarrierSubStatusListPostRequest(
        icarrystatusid: icarrystatusid ?? this.icarrystatusid);
  }

  @override
  List<Object?> get props {
    return [icarrystatusid];
  }

  @override
  bool get stringify {
    return true;
  }
}
