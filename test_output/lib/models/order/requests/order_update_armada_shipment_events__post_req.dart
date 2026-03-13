import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class UpdateArmadaShipmentEventsPostRequest extends Equatable {
  const UpdateArmadaShipmentEventsPostRequest({
    this.code,
    this.status,
    this.amount,
    this.created_at,
    this.currency,
    this.customer,
    this.driver,
    this.logistics,
  });

  final String? code;

  final String? status;

  final double? amount;

  final String? created_at;

  final String? currency;

  final Map<String, dynamic>? customer;

  final Map<String, dynamic>? driver;

  final Map<String, dynamic>? logistics;

  static UpdateArmadaShipmentEventsPostRequest fromJson(
      Map<String, dynamic> json) {
    return UpdateArmadaShipmentEventsPostRequest(
      code: json['code'] == null ? null : (json['code'] as String),
      status: json['status'] == null ? null : (json['status'] as String),
      amount: json['amount'] == null ? null : (json['amount'] as double),
      created_at:
          json['created_at'] == null ? null : (json['created_at'] as String),
      currency: json['currency'] == null ? null : (json['currency'] as String),
      customer: json['customer'] == null
          ? null
          : (json['customer'] as Map<String, dynamic>),
      driver: json['driver'] == null
          ? null
          : (json['driver'] as Map<String, dynamic>),
      logistics: json['logistics'] == null
          ? null
          : (json['logistics'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'code': code,
      'status': status,
      'amount': amount,
      'created_at': created_at,
      'currency': currency,
      'customer': customer,
      'driver': driver,
      'logistics': logistics,
    };
  }

  UpdateArmadaShipmentEventsPostRequest copyWith({
    String? code,
    String? status,
    double? amount,
    String? created_at,
    String? currency,
    Map<String, dynamic>? customer,
    Map<String, dynamic>? driver,
    Map<String, dynamic>? logistics,
  }) {
    return UpdateArmadaShipmentEventsPostRequest(
      code: code ?? this.code,
      status: status ?? this.status,
      amount: amount ?? this.amount,
      created_at: created_at ?? this.created_at,
      currency: currency ?? this.currency,
      customer: customer ?? this.customer,
      driver: driver ?? this.driver,
      logistics: logistics ?? this.logistics,
    );
  }

  @override
  List<Object?> get props {
    return [
      code,
      status,
      amount,
      created_at,
      currency,
      customer,
      driver,
      logistics,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
