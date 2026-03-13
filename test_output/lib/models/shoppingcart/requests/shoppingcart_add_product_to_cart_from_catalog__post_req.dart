import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class AddProductToCartFromCatalogPostRequest extends Equatable {
  const AddProductToCartFromCatalogPostRequest({
    this.shoppingcarttype,
    this.quantity,
    this.productid,
  });

  final String? shoppingcarttype;

  final int? quantity;

  final int? productid;

  static AddProductToCartFromCatalogPostRequest fromJson(
      Map<String, dynamic> json) {
    return AddProductToCartFromCatalogPostRequest(
      shoppingcarttype: json['shoppingcarttype'] == null
          ? null
          : (json['shoppingcarttype'] as String),
      quantity: json['quantity'] == null ? null : (json['quantity'] as int),
      productid: json['productid'] == null ? null : (json['productid'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'shoppingcarttype': shoppingcarttype,
      'quantity': quantity,
      'productid': productid,
    };
  }

  AddProductToCartFromCatalogPostRequest copyWith({
    String? shoppingcarttype,
    int? quantity,
    int? productid,
  }) {
    return AddProductToCartFromCatalogPostRequest(
      shoppingcarttype: shoppingcarttype ?? this.shoppingcarttype,
      quantity: quantity ?? this.quantity,
      productid: productid ?? this.productid,
    );
  }

  @override
  List<Object?> get props {
    return [
      shoppingcarttype,
      quantity,
      productid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
