import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class InActiveCustomerAccountByPhonePostRequest extends Equatable {
  const InActiveCustomerAccountByPhonePostRequest({this.phone});

  final String? phone;

  static InActiveCustomerAccountByPhonePostRequest fromJson(
      Map<String, dynamic> json) {
    return InActiveCustomerAccountByPhonePostRequest(
        phone: json['phone'] == null ? null : (json['phone'] as String));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'phone': phone};
  }

  InActiveCustomerAccountByPhonePostRequest copyWith({String? phone}) {
    return InActiveCustomerAccountByPhonePostRequest(
        phone: phone ?? this.phone);
  }

  @override
  List<Object?> get props {
    return [phone];
  }

  @override
  bool get stringify {
    return true;
  }
}
