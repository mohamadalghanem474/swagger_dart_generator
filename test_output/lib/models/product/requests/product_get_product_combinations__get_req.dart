import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetProductCombinationsGetRequest extends Equatable {
  const GetProductCombinationsGetRequest({this.productid});

  final int? productid;

  static GetProductCombinationsGetRequest fromJson(Map<String, dynamic> json) {
    return GetProductCombinationsGetRequest(
        productid:
            json['productid'] == null ? null : (json['productid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'productid': productid};
  }

  GetProductCombinationsGetRequest copyWith({int? productid}) {
    return GetProductCombinationsGetRequest(
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
