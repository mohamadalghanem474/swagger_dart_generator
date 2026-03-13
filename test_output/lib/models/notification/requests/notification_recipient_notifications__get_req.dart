import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class RecipientNotificationsGetRequest extends Equatable {
  const RecipientNotificationsGetRequest({
    this.senderid,
    this.vendorid,
    this.recipientid,
    this.deliveryid,
  });

  final int? senderid;

  final int? vendorid;

  final int? recipientid;

  final int? deliveryid;

  static RecipientNotificationsGetRequest fromJson(Map<String, dynamic> json) {
    return RecipientNotificationsGetRequest(
      senderid: json['senderid'] == null ? null : (json['senderid'] as int),
      vendorid: json['vendorid'] == null ? null : (json['vendorid'] as int),
      recipientid:
          json['recipientid'] == null ? null : (json['recipientid'] as int),
      deliveryid:
          json['deliveryid'] == null ? null : (json['deliveryid'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'senderid': senderid,
      'vendorid': vendorid,
      'recipientid': recipientid,
      'deliveryid': deliveryid,
    };
  }

  RecipientNotificationsGetRequest copyWith({
    int? senderid,
    int? vendorid,
    int? recipientid,
    int? deliveryid,
  }) {
    return RecipientNotificationsGetRequest(
      senderid: senderid ?? this.senderid,
      vendorid: vendorid ?? this.vendorid,
      recipientid: recipientid ?? this.recipientid,
      deliveryid: deliveryid ?? this.deliveryid,
    );
  }

  @override
  List<Object?> get props {
    return [
      senderid,
      vendorid,
      recipientid,
      deliveryid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
