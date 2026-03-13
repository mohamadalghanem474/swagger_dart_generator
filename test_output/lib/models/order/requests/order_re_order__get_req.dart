import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ReOrderGetRequest extends Equatable {
  const ReOrderGetRequest({this.orderid});

  final int? orderid;

  static ReOrderGetRequest fromJson(Map<String, dynamic> json) {
    return ReOrderGetRequest(
        orderid: json['orderid'] == null ? null : (json['orderid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'orderid': orderid};
  }

  ReOrderGetRequest copyWith({int? orderid}) {
    return ReOrderGetRequest(orderid: orderid ?? this.orderid);
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
