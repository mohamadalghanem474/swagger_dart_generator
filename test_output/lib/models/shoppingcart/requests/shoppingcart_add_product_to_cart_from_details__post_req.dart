import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class AddProductToCartFromDetailsPostRequest extends Equatable {
  const AddProductToCartFromDetailsPostRequest({
    this.shoppingcarttype,
    this.productid,
  });

  final String? shoppingcarttype;

  final int? productid;

  static AddProductToCartFromDetailsPostRequest fromJson(
      Map<String, dynamic> json) {
    return AddProductToCartFromDetailsPostRequest(
      shoppingcarttype: json['shoppingcarttype'] == null
          ? null
          : (json['shoppingcarttype'] as String),
      productid: json['productid'] == null ? null : (json['productid'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'shoppingcarttype': shoppingcarttype,
      'productid': productid,
    };
  }

  AddProductToCartFromDetailsPostRequest copyWith({
    String? shoppingcarttype,
    int? productid,
  }) {
    return AddProductToCartFromDetailsPostRequest(
      shoppingcarttype: shoppingcarttype ?? this.shoppingcarttype,
      productid: productid ?? this.productid,
    );
  }

  @override
  List<Object?> get props {
    return [
      shoppingcarttype,
      productid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
