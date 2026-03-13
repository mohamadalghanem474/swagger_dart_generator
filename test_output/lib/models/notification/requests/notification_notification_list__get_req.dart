import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class NotificationListGetRequest extends Equatable {
  const NotificationListGetRequest({
    this.createdonfrom,
    this.createdonto,
    this.notificationcategoryid,
    this.notificationstatusid,
    this.recipientid,
    this.deliveryid,
    this.entityid,
    this.pageindex,
    this.pagesize,
  });

  final String? createdonfrom;

  final String? createdonto;

  final int? notificationcategoryid;

  final int? notificationstatusid;

  final int? recipientid;

  final int? deliveryid;

  final int? entityid;

  final int? pageindex;

  final int? pagesize;

  static NotificationListGetRequest fromJson(Map<String, dynamic> json) {
    return NotificationListGetRequest(
      createdonfrom: json['createdonfrom'] == null
          ? null
          : (json['createdonfrom'] as String),
      createdonto:
          json['createdonto'] == null ? null : (json['createdonto'] as String),
      notificationcategoryid: json['notificationcategoryid'] == null
          ? null
          : (json['notificationcategoryid'] as int),
      notificationstatusid: json['notificationstatusid'] == null
          ? null
          : (json['notificationstatusid'] as int),
      recipientid:
          json['recipientid'] == null ? null : (json['recipientid'] as int),
      deliveryid:
          json['deliveryid'] == null ? null : (json['deliveryid'] as int),
      entityid: json['entityid'] == null ? null : (json['entityid'] as int),
      pageindex: json['pageindex'] == null ? null : (json['pageindex'] as int),
      pagesize: json['pagesize'] == null ? null : (json['pagesize'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'createdonfrom': createdonfrom,
      'createdonto': createdonto,
      'notificationcategoryid': notificationcategoryid,
      'notificationstatusid': notificationstatusid,
      'recipientid': recipientid,
      'deliveryid': deliveryid,
      'entityid': entityid,
      'pageindex': pageindex,
      'pagesize': pagesize,
    };
  }

  NotificationListGetRequest copyWith({
    String? createdonfrom,
    String? createdonto,
    int? notificationcategoryid,
    int? notificationstatusid,
    int? recipientid,
    int? deliveryid,
    int? entityid,
    int? pageindex,
    int? pagesize,
  }) {
    return NotificationListGetRequest(
      createdonfrom: createdonfrom ?? this.createdonfrom,
      createdonto: createdonto ?? this.createdonto,
      notificationcategoryid:
          notificationcategoryid ?? this.notificationcategoryid,
      notificationstatusid: notificationstatusid ?? this.notificationstatusid,
      recipientid: recipientid ?? this.recipientid,
      deliveryid: deliveryid ?? this.deliveryid,
      entityid: entityid ?? this.entityid,
      pageindex: pageindex ?? this.pageindex,
      pagesize: pagesize ?? this.pagesize,
    );
  }

  @override
  List<Object?> get props {
    return [
      createdonfrom,
      createdonto,
      notificationcategoryid,
      notificationstatusid,
      recipientid,
      deliveryid,
      entityid,
      pageindex,
      pagesize,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
