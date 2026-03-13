import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SmartwareOpcConfirmAndPayOrderPostRequest extends Equatable {
  const SmartwareOpcConfirmAndPayOrderPostRequest({
    this.paymentmethodsystemname,
    this.cardtype,
    this.cardname,
    this.cardnumber,
    this.cardcvv2,
    this.cardexpirationmonth,
    this.cardexpirationyear,
    this.ordertype,
    this.vendorid,
    this.walletid,
    this.amount,
  });

  final String? paymentmethodsystemname;

  final String? cardtype;

  final String? cardname;

  final String? cardnumber;

  final String? cardcvv2;

  final String? cardexpirationmonth;

  final String? cardexpirationyear;

  final String? ordertype;

  final int? vendorid;

  final int? walletid;

  final double? amount;

  static SmartwareOpcConfirmAndPayOrderPostRequest fromJson(
      Map<String, dynamic> json) {
    return SmartwareOpcConfirmAndPayOrderPostRequest(
      paymentmethodsystemname: json['paymentmethodsystemname'] == null
          ? null
          : (json['paymentmethodsystemname'] as String),
      cardtype: json['cardtype'] == null ? null : (json['cardtype'] as String),
      cardname: json['cardname'] == null ? null : (json['cardname'] as String),
      cardnumber:
          json['cardnumber'] == null ? null : (json['cardnumber'] as String),
      cardcvv2: json['cardcvv2'] == null ? null : (json['cardcvv2'] as String),
      cardexpirationmonth: json['cardexpirationmonth'] == null
          ? null
          : (json['cardexpirationmonth'] as String),
      cardexpirationyear: json['cardexpirationyear'] == null
          ? null
          : (json['cardexpirationyear'] as String),
      ordertype:
          json['ordertype'] == null ? null : (json['ordertype'] as String),
      vendorid: json['vendorid'] == null ? null : (json['vendorid'] as int),
      walletid: json['walletid'] == null ? null : (json['walletid'] as int),
      amount: json['amount'] == null ? null : (json['amount'] as double),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'paymentmethodsystemname': paymentmethodsystemname,
      'cardtype': cardtype,
      'cardname': cardname,
      'cardnumber': cardnumber,
      'cardcvv2': cardcvv2,
      'cardexpirationmonth': cardexpirationmonth,
      'cardexpirationyear': cardexpirationyear,
      'ordertype': ordertype,
      'vendorid': vendorid,
      'walletid': walletid,
      'amount': amount,
    };
  }

  SmartwareOpcConfirmAndPayOrderPostRequest copyWith({
    String? paymentmethodsystemname,
    String? cardtype,
    String? cardname,
    String? cardnumber,
    String? cardcvv2,
    String? cardexpirationmonth,
    String? cardexpirationyear,
    String? ordertype,
    int? vendorid,
    int? walletid,
    double? amount,
  }) {
    return SmartwareOpcConfirmAndPayOrderPostRequest(
      paymentmethodsystemname:
          paymentmethodsystemname ?? this.paymentmethodsystemname,
      cardtype: cardtype ?? this.cardtype,
      cardname: cardname ?? this.cardname,
      cardnumber: cardnumber ?? this.cardnumber,
      cardcvv2: cardcvv2 ?? this.cardcvv2,
      cardexpirationmonth: cardexpirationmonth ?? this.cardexpirationmonth,
      cardexpirationyear: cardexpirationyear ?? this.cardexpirationyear,
      ordertype: ordertype ?? this.ordertype,
      vendorid: vendorid ?? this.vendorid,
      walletid: walletid ?? this.walletid,
      amount: amount ?? this.amount,
    );
  }

  @override
  List<Object?> get props {
    return [
      paymentmethodsystemname,
      cardtype,
      cardname,
      cardnumber,
      cardcvv2,
      cardexpirationmonth,
      cardexpirationyear,
      ordertype,
      vendorid,
      walletid,
      amount,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
