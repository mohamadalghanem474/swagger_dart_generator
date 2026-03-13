import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CompleteSubscriptionGetRequest extends Equatable {
  const CompleteSubscriptionGetRequest({
    this.orderid,
    this.selectedmethod,
    this.ponumber,
    this.tovendorid,
  });

  final int? orderid;

  final String? selectedmethod;

  final String? ponumber;

  final int? tovendorid;

  static CompleteSubscriptionGetRequest fromJson(Map<String, dynamic> json) {
    return CompleteSubscriptionGetRequest(
      orderid: json['orderid'] == null ? null : (json['orderid'] as int),
      selectedmethod: json['selectedmethod'] == null
          ? null
          : (json['selectedmethod'] as String),
      ponumber: json['ponumber'] == null ? null : (json['ponumber'] as String),
      tovendorid:
          json['tovendorid'] == null ? null : (json['tovendorid'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'orderid': orderid,
      'selectedmethod': selectedmethod,
      'ponumber': ponumber,
      'tovendorid': tovendorid,
    };
  }

  CompleteSubscriptionGetRequest copyWith({
    int? orderid,
    String? selectedmethod,
    String? ponumber,
    int? tovendorid,
  }) {
    return CompleteSubscriptionGetRequest(
      orderid: orderid ?? this.orderid,
      selectedmethod: selectedmethod ?? this.selectedmethod,
      ponumber: ponumber ?? this.ponumber,
      tovendorid: tovendorid ?? this.tovendorid,
    );
  }

  @override
  List<Object?> get props {
    return [
      orderid,
      selectedmethod,
      ponumber,
      tovendorid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
