import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ProductEmailAFriendGetRequest extends Equatable {
  const ProductEmailAFriendGetRequest({this.productid});

  final int? productid;

  static ProductEmailAFriendGetRequest fromJson(Map<String, dynamic> json) {
    return ProductEmailAFriendGetRequest(
        productid:
            json['productid'] == null ? null : (json['productid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'productid': productid};
  }

  ProductEmailAFriendGetRequest copyWith({int? productid}) {
    return ProductEmailAFriendGetRequest(
        productid: productid ?? this.productid);
  }

  @override
  List<Object?> get props {
    return [productid];
  }

  @override
  bool get stringify {
    return true;
  }
}
