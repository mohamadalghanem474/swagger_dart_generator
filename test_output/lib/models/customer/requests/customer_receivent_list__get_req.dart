import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ReceiventListGetRequest extends Equatable {
  const ReceiventListGetRequest({
    this.email,
    this.username,
    this.firstname,
    this.lastname,
    this.dayofbirth,
    this.monthofbirth,
    this.company,
    this.phone,
    this.zippostalcode,
    this.ipaddress,
    this.pageindex,
    this.pagesize,
  });

  final String? email;

  final String? username;

  final String? firstname;

  final String? lastname;

  final int? dayofbirth;

  final int? monthofbirth;

  final String? company;

  final String? phone;

  final String? zippostalcode;

  final String? ipaddress;

  final int? pageindex;

  final int? pagesize;

  static ReceiventListGetRequest fromJson(Map<String, dynamic> json) {
    return ReceiventListGetRequest(
      email: json['email'] == null ? null : (json['email'] as String),
      username: json['username'] == null ? null : (json['username'] as String),
      firstname:
          json['firstname'] == null ? null : (json['firstname'] as String),
      lastname: json['lastname'] == null ? null : (json['lastname'] as String),
      dayofbirth:
          json['dayofbirth'] == null ? null : (json['dayofbirth'] as int),
      monthofbirth:
          json['monthofbirth'] == null ? null : (json['monthofbirth'] as int),
      company: json['company'] == null ? null : (json['company'] as String),
      phone: json['phone'] == null ? null : (json['phone'] as String),
      zippostalcode: json['zippostalcode'] == null
          ? null
          : (json['zippostalcode'] as String),
      ipaddress:
          json['ipaddress'] == null ? null : (json['ipaddress'] as String),
      pageindex: json['pageindex'] == null ? null : (json['pageindex'] as int),
      pagesize: json['pagesize'] == null ? null : (json['pagesize'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'email': email,
      'username': username,
      'firstname': firstname,
      'lastname': lastname,
      'dayofbirth': dayofbirth,
      'monthofbirth': monthofbirth,
      'company': company,
      'phone': phone,
      'zippostalcode': zippostalcode,
      'ipaddress': ipaddress,
      'pageindex': pageindex,
      'pagesize': pagesize,
    };
  }

  ReceiventListGetRequest copyWith({
    String? email,
    String? username,
    String? firstname,
    String? lastname,
    int? dayofbirth,
    int? monthofbirth,
    String? company,
    String? phone,
    String? zippostalcode,
    String? ipaddress,
    int? pageindex,
    int? pagesize,
  }) {
    return ReceiventListGetRequest(
      email: email ?? this.email,
      username: username ?? this.username,
      firstname: firstname ?? this.firstname,
      lastname: lastname ?? this.lastname,
      dayofbirth: dayofbirth ?? this.dayofbirth,
      monthofbirth: monthofbirth ?? this.monthofbirth,
      company: company ?? this.company,
      phone: phone ?? this.phone,
      zippostalcode: zippostalcode ?? this.zippostalcode,
      ipaddress: ipaddress ?? this.ipaddress,
      pageindex: pageindex ?? this.pageindex,
      pagesize: pagesize ?? this.pagesize,
    );
  }

  @override
  List<Object?> get props {
    return [
      email,
      username,
      firstname,
      lastname,
      dayofbirth,
      monthofbirth,
      company,
      phone,
      zippostalcode,
      ipaddress,
      pageindex,
      pagesize,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
