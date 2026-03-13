import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class RecipientNotificationByDeliveryIdGetRequest extends Equatable {
  const RecipientNotificationByDeliveryIdGetRequest({
    this.reciepentid,
    this.deliveryid,
  });

  final int? reciepentid;

  final int? deliveryid;

  static RecipientNotificationByDeliveryIdGetRequest fromJson(
      Map<String, dynamic> json) {
    return RecipientNotificationByDeliveryIdGetRequest(
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

  RecipientNotificationByDeliveryIdGetRequest copyWith({
    int? reciepentid,
    int? deliveryid,
  }) {
    return RecipientNotificationByDeliveryIdGetRequest(
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
