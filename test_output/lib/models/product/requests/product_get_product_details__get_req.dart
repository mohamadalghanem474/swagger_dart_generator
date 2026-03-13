import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetProductDetailsGetRequest extends Equatable {
  const GetProductDetailsGetRequest({
    this.updatecartitemid,
    this.productid,
  });

  final int? updatecartitemid;

  final int? productid;

  static GetProductDetailsGetRequest fromJson(Map<String, dynamic> json) {
    return GetProductDetailsGetRequest(
      updatecartitemid: json['updatecartitemid'] == null
          ? null
          : (json['updatecartitemid'] as int),
      productid: json['productid'] == null ? null : (json['productid'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'updatecartitemid': updatecartitemid,
      'productid': productid,
    };
  }

  GetProductDetailsGetRequest copyWith({
    int? updatecartitemid,
    int? productid,
  }) {
    return GetProductDetailsGetRequest(
      updatecartitemid: updatecartitemid ?? this.updatecartitemid,
      productid: productid ?? this.productid,
    );
  }

  @override
  List<Object?> get props {
    return [
      updatecartitemid,
      productid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
