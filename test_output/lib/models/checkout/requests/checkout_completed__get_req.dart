import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CompletedGetRequest extends Equatable {
  const CompletedGetRequest({this.orderid});

  final int? orderid;

  static CompletedGetRequest fromJson(Map<String, dynamic> json) {
    return CompletedGetRequest(
        orderid: json['orderid'] == null ? null : (json['orderid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'orderid': orderid};
  }

  CompletedGetRequest copyWith({int? orderid}) {
    return CompletedGetRequest(orderid: orderid ?? this.orderid);
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
