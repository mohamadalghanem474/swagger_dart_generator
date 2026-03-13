import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class OrderListGetRequest extends Equatable {
  const OrderListGetRequest({
    this.storeid,
    this.vendorid,
    this.customerid,
    this.productid,
    this.affiliateid,
    this.warehouseid,
    this.billingcountryid,
    this.paymentmethodsystemname,
    this.createdfromutc,
    this.createdtoutc,
    this.osids,
    this.psids,
    this.ssids,
    this.billingphone,
    this.billingemail,
    this.billinglastname,
    this.ordernotes,
    this.pageindex,
    this.pagesize,
    this.orderstatuses,
    this.paymentstatuses,
    this.shippingstatuses,
  });

  final int? storeid;

  final int? vendorid;

  final int? customerid;

  final int? productid;

  final int? affiliateid;

  final int? warehouseid;

  final int? billingcountryid;

  final String? paymentmethodsystemname;

  final String? createdfromutc;

  final String? createdtoutc;

  final List<dynamic>? osids;

  final List<dynamic>? psids;

  final List<dynamic>? ssids;

  final String? billingphone;

  final String? billingemail;

  final String? billinglastname;

  final String? ordernotes;

  final int? pageindex;

  final int? pagesize;

  final List<dynamic>? orderstatuses;

  final List<dynamic>? paymentstatuses;

  final List<dynamic>? shippingstatuses;

  static OrderListGetRequest fromJson(Map<String, dynamic> json) {
    return OrderListGetRequest(
      storeid: json['storeid'] == null ? null : (json['storeid'] as int),
      vendorid: json['vendorid'] == null ? null : (json['vendorid'] as int),
      customerid:
          json['customerid'] == null ? null : (json['customerid'] as int),
      productid: json['productid'] == null ? null : (json['productid'] as int),
      affiliateid:
          json['affiliateid'] == null ? null : (json['affiliateid'] as int),
      warehouseid:
          json['warehouseid'] == null ? null : (json['warehouseid'] as int),
      billingcountryid: json['billingcountryid'] == null
          ? null
          : (json['billingcountryid'] as int),
      paymentmethodsystemname: json['paymentmethodsystemname'] == null
          ? null
          : (json['paymentmethodsystemname'] as String),
      createdfromutc: json['createdfromutc'] == null
          ? null
          : (json['createdfromutc'] as String),
      createdtoutc: json['createdtoutc'] == null
          ? null
          : (json['createdtoutc'] as String),
      osids: json['osids'] == null ? null : (json['osids'] as List<dynamic>),
      psids: json['psids'] == null ? null : (json['psids'] as List<dynamic>),
      ssids: json['ssids'] == null ? null : (json['ssids'] as List<dynamic>),
      billingphone: json['billingphone'] == null
          ? null
          : (json['billingphone'] as String),
      billingemail: json['billingemail'] == null
          ? null
          : (json['billingemail'] as String),
      billinglastname: json['billinglastname'] == null
          ? null
          : (json['billinglastname'] as String),
      ordernotes:
          json['ordernotes'] == null ? null : (json['ordernotes'] as String),
      pageindex: json['pageindex'] == null ? null : (json['pageindex'] as int),
      pagesize: json['pagesize'] == null ? null : (json['pagesize'] as int),
      orderstatuses: json['orderstatuses'] == null
          ? null
          : (json['orderstatuses'] as List<dynamic>),
      paymentstatuses: json['paymentstatuses'] == null
          ? null
          : (json['paymentstatuses'] as List<dynamic>),
      shippingstatuses: json['shippingstatuses'] == null
          ? null
          : (json['shippingstatuses'] as List<dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'storeid': storeid,
      'vendorid': vendorid,
      'customerid': customerid,
      'productid': productid,
      'affiliateid': affiliateid,
      'warehouseid': warehouseid,
      'billingcountryid': billingcountryid,
      'paymentmethodsystemname': paymentmethodsystemname,
      'createdfromutc': createdfromutc,
      'createdtoutc': createdtoutc,
      'osids': osids,
      'psids': psids,
      'ssids': ssids,
      'billingphone': billingphone,
      'billingemail': billingemail,
      'billinglastname': billinglastname,
      'ordernotes': ordernotes,
      'pageindex': pageindex,
      'pagesize': pagesize,
      'orderstatuses': orderstatuses,
      'paymentstatuses': paymentstatuses,
      'shippingstatuses': shippingstatuses,
    };
  }

  OrderListGetRequest copyWith({
    int? storeid,
    int? vendorid,
    int? customerid,
    int? productid,
    int? affiliateid,
    int? warehouseid,
    int? billingcountryid,
    String? paymentmethodsystemname,
    String? createdfromutc,
    String? createdtoutc,
    List<dynamic>? osids,
    List<dynamic>? psids,
    List<dynamic>? ssids,
    String? billingphone,
    String? billingemail,
    String? billinglastname,
    String? ordernotes,
    int? pageindex,
    int? pagesize,
    List<dynamic>? orderstatuses,
    List<dynamic>? paymentstatuses,
    List<dynamic>? shippingstatuses,
  }) {
    return OrderListGetRequest(
      storeid: storeid ?? this.storeid,
      vendorid: vendorid ?? this.vendorid,
      customerid: customerid ?? this.customerid,
      productid: productid ?? this.productid,
      affiliateid: affiliateid ?? this.affiliateid,
      warehouseid: warehouseid ?? this.warehouseid,
      billingcountryid: billingcountryid ?? this.billingcountryid,
      paymentmethodsystemname:
          paymentmethodsystemname ?? this.paymentmethodsystemname,
      createdfromutc: createdfromutc ?? this.createdfromutc,
      createdtoutc: createdtoutc ?? this.createdtoutc,
      osids: osids ?? this.osids,
      psids: psids ?? this.psids,
      ssids: ssids ?? this.ssids,
      billingphone: billingphone ?? this.billingphone,
      billingemail: billingemail ?? this.billingemail,
      billinglastname: billinglastname ?? this.billinglastname,
      ordernotes: ordernotes ?? this.ordernotes,
      pageindex: pageindex ?? this.pageindex,
      pagesize: pagesize ?? this.pagesize,
      orderstatuses: orderstatuses ?? this.orderstatuses,
      paymentstatuses: paymentstatuses ?? this.paymentstatuses,
      shippingstatuses: shippingstatuses ?? this.shippingstatuses,
    );
  }

  @override
  List<Object?> get props {
    return [
      storeid,
      vendorid,
      customerid,
      productid,
      affiliateid,
      warehouseid,
      billingcountryid,
      paymentmethodsystemname,
      createdfromutc,
      createdtoutc,
      osids,
      psids,
      ssids,
      billingphone,
      billingemail,
      billinglastname,
      ordernotes,
      pageindex,
      pagesize,
      orderstatuses,
      paymentstatuses,
      shippingstatuses,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
