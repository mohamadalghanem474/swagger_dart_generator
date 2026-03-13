import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetPdfInvoiceGetRequest extends Equatable {
  const GetPdfInvoiceGetRequest({this.orderid});

  final int? orderid;

  static GetPdfInvoiceGetRequest fromJson(Map<String, dynamic> json) {
    return GetPdfInvoiceGetRequest(
        orderid: json['orderid'] == null ? null : (json['orderid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'orderid': orderid};
  }

  GetPdfInvoiceGetRequest copyWith({int? orderid}) {
    return GetPdfInvoiceGetRequest(orderid: orderid ?? this.orderid);
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
