import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ProductReviewsGetRequest extends Equatable {
  const ProductReviewsGetRequest({this.productid});

  final int? productid;

  static ProductReviewsGetRequest fromJson(Map<String, dynamic> json) {
    return ProductReviewsGetRequest(
        productid:
            json['productid'] == null ? null : (json['productid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'productid': productid};
  }

  ProductReviewsGetRequest copyWith({int? productid}) {
    return ProductReviewsGetRequest(productid: productid ?? this.productid);
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
