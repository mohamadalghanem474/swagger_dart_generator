import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class RemoveProductFromCompareListGetRequest extends Equatable {
  const RemoveProductFromCompareListGetRequest({this.productid});

  final int? productid;

  static RemoveProductFromCompareListGetRequest fromJson(
      Map<String, dynamic> json) {
    return RemoveProductFromCompareListGetRequest(
        productid:
            json['productid'] == null ? null : (json['productid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'productid': productid};
  }

  RemoveProductFromCompareListGetRequest copyWith({int? productid}) {
    return RemoveProductFromCompareListGetRequest(
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
