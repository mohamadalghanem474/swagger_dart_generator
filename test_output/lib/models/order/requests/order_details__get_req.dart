import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class DetailsGetRequest extends Equatable {
  const DetailsGetRequest({this.orderid});

  final int? orderid;

  static DetailsGetRequest fromJson(Map<String, dynamic> json) {
    return DetailsGetRequest(
        orderid: json['orderid'] == null ? null : (json['orderid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'orderid': orderid};
  }

  DetailsGetRequest copyWith({int? orderid}) {
    return DetailsGetRequest(orderid: orderid ?? this.orderid);
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
