import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class RemoveSubscriptionDiscountCouponPostRequest extends Equatable {
  const RemoveSubscriptionDiscountCouponPostRequest({this.discountid});

  final int? discountid;

  static RemoveSubscriptionDiscountCouponPostRequest fromJson(
      Map<String, dynamic> json) {
    return RemoveSubscriptionDiscountCouponPostRequest(
        discountid:
            json['discountid'] == null ? null : (json['discountid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'discountid': discountid};
  }

  RemoveSubscriptionDiscountCouponPostRequest copyWith({int? discountid}) {
    return RemoveSubscriptionDiscountCouponPostRequest(
        discountid: discountid ?? this.discountid);
  }

  @override
  List<Object?> get props {
    return [discountid];
  }

  @override
  bool get stringify {
    return true;
  }
}
