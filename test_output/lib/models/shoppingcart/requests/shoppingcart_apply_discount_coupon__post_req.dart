import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ApplyDiscountCouponPostRequest extends Equatable {
  const ApplyDiscountCouponPostRequest({this.discountcouponcode});

  final String? discountcouponcode;

  static ApplyDiscountCouponPostRequest fromJson(Map<String, dynamic> json) {
    return ApplyDiscountCouponPostRequest(
        discountcouponcode: json['discountcouponcode'] == null
            ? null
            : (json['discountcouponcode'] as String));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'discountcouponcode': discountcouponcode};
  }

  ApplyDiscountCouponPostRequest copyWith({String? discountcouponcode}) {
    return ApplyDiscountCouponPostRequest(
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
