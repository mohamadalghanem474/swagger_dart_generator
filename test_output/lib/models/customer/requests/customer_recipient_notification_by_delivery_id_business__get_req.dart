import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class RecipientNotificationByDeliveryIdBusinessGetRequest extends Equatable {
  const RecipientNotificationByDeliveryIdBusinessGetRequest({
    this.reciepentid,
    this.deliveryid,
  });

  final int? reciepentid;

  final int? deliveryid;

  static RecipientNotificationByDeliveryIdBusinessGetRequest fromJson(
      Map<String, dynamic> json) {
    return RecipientNotificationByDeliveryIdBusinessGetRequest(
      reciepentid:
          json['reciepentid'] == null ? null : (json['reciepentid'] as int),
      deliveryid:
          json['deliveryid'] == null ? null : (json['deliveryid'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'reciepentid': reciepentid,
      'deliveryid': deliveryid,
    };
  }

  RecipientNotificationByDeliveryIdBusinessGetRequest copyWith({
    int? reciepentid,
    int? deliveryid,
  }) {
    return RecipientNotificationByDeliveryIdBusinessGetRequest(
      reciepentid: reciepentid ?? this.reciepentid,
      deliveryid: deliveryid ?? this.deliveryid,
    );
  }

  @override
  List<Object?> get props {
    return [
      reciepentid,
      deliveryid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
