import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class AddProductToCompareListGetRequest extends Equatable {
  const AddProductToCompareListGetRequest({this.productid});

  final int? productid;

  static AddProductToCompareListGetRequest fromJson(Map<String, dynamic> json) {
    return AddProductToCompareListGetRequest(
        productid:
            json['productid'] == null ? null : (json['productid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'productid': productid};
  }

  AddProductToCompareListGetRequest copyWith({int? productid}) {
    return AddProductToCompareListGetRequest(
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
