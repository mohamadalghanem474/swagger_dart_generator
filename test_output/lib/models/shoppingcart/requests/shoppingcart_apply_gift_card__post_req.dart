import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ApplyGiftCardPostRequest extends Equatable {
  const ApplyGiftCardPostRequest({this.giftcardcouponcode});

  final String? giftcardcouponcode;

  static ApplyGiftCardPostRequest fromJson(Map<String, dynamic> json) {
    return ApplyGiftCardPostRequest(
        giftcardcouponcode: json['giftcardcouponcode'] == null
            ? null
            : (json['giftcardcouponcode'] as String));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'giftcardcouponcode': giftcardcouponcode};
  }

  ApplyGiftCardPostRequest copyWith({String? giftcardcouponcode}) {
    return ApplyGiftCardPostRequest(
        giftcardcouponcode: giftcardcouponcode ?? this.giftcardcouponcode);
  }

  @override
  List<Object?> get props {
    return [giftcardcouponcode];
  }

  @override
  bool get stringify {
    return true;
  }
}
