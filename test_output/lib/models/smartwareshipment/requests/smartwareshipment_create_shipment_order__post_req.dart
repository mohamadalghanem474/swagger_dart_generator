import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CreateShipmentOrderPostRequest extends Equatable {
  const CreateShipmentOrderPostRequest({
    this.cardnumber,
    this.cardcvv,
    this.cardtype,
    this.cardname,
    this.cardexpirationmonth,
    this.cardexpirationyear,
    this.redirecturl,
    this.successurl,
    this.cancelurl,
    this.paymentmethodsystemname,
    this.shipmentid,
  });

  final String? cardnumber;

  final String? cardcvv;

  final String? cardtype;

  final String? cardname;

  final int? cardexpirationmonth;

  final int? cardexpirationyear;

  final String? redirecturl;

  final String? successurl;

  final String? cancelurl;

  final String? paymentmethodsystemname;

  final int? shipmentid;

  static CreateShipmentOrderPostRequest fromJson(Map<String, dynamic> json) {
    return CreateShipmentOrderPostRequest(
      cardnumber:
          json['cardnumber'] == null ? null : (json['cardnumber'] as String),
      cardcvv: json['cardcvv'] == null ? null : (json['cardcvv'] as String),
      cardtype: json['cardtype'] == null ? null : (json['cardtype'] as String),
      cardname: json['cardname'] == null ? null : (json['cardname'] as String),
      cardexpirationmonth: json['cardexpirationmonth'] == null
          ? null
          : (json['cardexpirationmonth'] as int),
      cardexpirationyear: json['cardexpirationyear'] == null
          ? null
          : (json['cardexpirationyear'] as int),
      redirecturl:
          json['redirecturl'] == null ? null : (json['redirecturl'] as String),
      successurl:
          json['successurl'] == null ? null : (json['successurl'] as String),
      cancelurl:
          json['cancelurl'] == null ? null : (json['cancelurl'] as String),
      paymentmethodsystemname: json['paymentmethodsystemname'] == null
          ? null
          : (json['paymentmethodsystemname'] as String),
      shipmentid:
          json['shipmentid'] == null ? null : (json['shipmentid'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'cardnumber': cardnumber,
      'cardcvv': cardcvv,
      'cardtype': cardtype,
      'cardname': cardname,
      'cardexpirationmonth': cardexpirationmonth,
      'cardexpirationyear': cardexpirationyear,
      'redirecturl': redirecturl,
      'successurl': successurl,
      'cancelurl': cancelurl,
      'paymentmethodsystemname': paymentmethodsystemname,
      'shipmentid': shipmentid,
    };
  }

  CreateShipmentOrderPostRequest copyWith({
    String? cardnumber,
    String? cardcvv,
    String? cardtype,
    String? cardname,
    int? cardexpirationmonth,
    int? cardexpirationyear,
    String? redirecturl,
    String? successurl,
    String? cancelurl,
    String? paymentmethodsystemname,
    int? shipmentid,
  }) {
    return CreateShipmentOrderPostRequest(
      cardnumber: cardnumber ?? this.cardnumber,
      cardcvv: cardcvv ?? this.cardcvv,
      cardtype: cardtype ?? this.cardtype,
      cardname: cardname ?? this.cardname,
      cardexpirationmonth: cardexpirationmonth ?? this.cardexpirationmonth,
      cardexpirationyear: cardexpirationyear ?? this.cardexpirationyear,
      redirecturl: redirecturl ?? this.redirecturl,
      successurl: successurl ?? this.successurl,
      cancelurl: cancelurl ?? this.cancelurl,
      paymentmethodsystemname:
          paymentmethodsystemname ?? this.paymentmethodsystemname,
      shipmentid: shipmentid ?? this.shipmentid,
    );
  }

  @override
  List<Object?> get props {
    return [
      cardnumber,
      cardcvv,
      cardtype,
      cardname,
      cardexpirationmonth,
      cardexpirationyear,
      redirecturl,
      successurl,
      cancelurl,
      paymentmethodsystemname,
      shipmentid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
