import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ReturnRequestGetRequest extends Equatable {
  const ReturnRequestGetRequest({this.orderid});

  final int? orderid;

  static ReturnRequestGetRequest fromJson(Map<String, dynamic> json) {
    return ReturnRequestGetRequest(
        orderid: json['orderid'] == null ? null : (json['orderid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'orderid': orderid};
  }

  ReturnRequestGetRequest copyWith({int? orderid}) {
    return ReturnRequestGetRequest(orderid: orderid ?? this.orderid);
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
