import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class RePostPaymentGetRequest extends Equatable {
  const RePostPaymentGetRequest({this.orderid});

  final int? orderid;

  static RePostPaymentGetRequest fromJson(Map<String, dynamic> json) {
    return RePostPaymentGetRequest(
        orderid: json['orderid'] == null ? null : (json['orderid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'orderid': orderid};
  }

  RePostPaymentGetRequest copyWith({int? orderid}) {
    return RePostPaymentGetRequest(orderid: orderid ?? this.orderid);
  }

  @override
  List<Object?> get props {
    return [orderid];
  }

  @override
  bool get stringify {
    return true;
  }
}
