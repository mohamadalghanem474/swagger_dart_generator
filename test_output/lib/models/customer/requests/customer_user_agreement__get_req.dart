import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class UserAgreementGetRequest extends Equatable {
  const UserAgreementGetRequest({this.orderitemid});

  final String? orderitemid;

  static UserAgreementGetRequest fromJson(Map<String, dynamic> json) {
    return UserAgreementGetRequest(
        orderitemid: json['orderitemid'] == null
            ? null
            : (json['orderitemid'] as String));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'orderitemid': orderitemid};
  }

  UserAgreementGetRequest copyWith({String? orderitemid}) {
    return UserAgreementGetRequest(
        orderitemid: orderitemid ?? this.orderitemid);
  }

  @override
  List<Object?> get props {
    return [orderitemid];
  }

  @override
  bool get stringify {
    return true;
  }
}
