import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ApplySubscriptionDiscountCouponPostRequest extends Equatable {
  const ApplySubscriptionDiscountCouponPostRequest({this.discountcouponcode});

  final String? discountcouponcode;

  static ApplySubscriptionDiscountCouponPostRequest fromJson(
      Map<String, dynamic> json) {
    return ApplySubscriptionDiscountCouponPostRequest(
        discountcouponcode: json['discountcouponcode'] == null
            ? null
            : (json['discountcouponcode'] as String));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'discountcouponcode': discountcouponcode};
  }

  ApplySubscriptionDiscountCouponPostRequest copyWith(
      {String? discountcouponcode}) {
    return ApplySubscriptionDiscountCouponPostRequest(
        discountcouponcode: discountcouponcode ?? this.discountcouponcode);
  }

  @override
  List<Object?> get props {
    return [discountcouponcode];
  }

  @override
  bool get stringify {
    return true;
  }
}
