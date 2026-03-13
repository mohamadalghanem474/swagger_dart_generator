import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class AddSubscriptionPlanToCartDetailsPostRequest extends Equatable {
  const AddSubscriptionPlanToCartDetailsPostRequest({
    this.tovendorid,
    this.productid,
  });

  final int? tovendorid;

  final int? productid;

  static AddSubscriptionPlanToCartDetailsPostRequest fromJson(
      Map<String, dynamic> json) {
    return AddSubscriptionPlanToCartDetailsPostRequest(
      tovendorid:
          json['tovendorid'] == null ? null : (json['tovendorid'] as int),
      productid: json['productid'] == null ? null : (json['productid'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'tovendorid': tovendorid,
      'productid': productid,
    };
  }

  AddSubscriptionPlanToCartDetailsPostRequest copyWith({
    int? tovendorid,
    int? productid,
  }) {
    return AddSubscriptionPlanToCartDetailsPostRequest(
      tovendorid: tovendorid ?? this.tovendorid,
      productid: productid ?? this.productid,
    );
  }

  @override
  List<Object?> get props {
    return [
      tovendorid,
      productid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
