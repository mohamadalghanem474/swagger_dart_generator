import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetLicenseGetRequest extends Equatable {
  const GetLicenseGetRequest({this.orderitemguid});

  final String? orderitemguid;

  static GetLicenseGetRequest fromJson(Map<String, dynamic> json) {
    return GetLicenseGetRequest(
        orderitemguid: json['orderitemguid'] == null
            ? null
            : (json['orderitemguid'] as String));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'orderitemguid': orderitemguid};
  }

  GetLicenseGetRequest copyWith({String? orderitemguid}) {
    return GetLicenseGetRequest(
        orderitemguid: orderitemguid ?? this.orderitemguid);
  }

  @override
  List<Object?> get props {
    return [orderitemguid];
  }

  @override
  bool get stringify {
    return true;
  }
}
