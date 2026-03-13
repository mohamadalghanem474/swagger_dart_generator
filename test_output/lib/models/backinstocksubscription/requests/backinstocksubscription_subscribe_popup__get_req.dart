import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SubscribePopupGetRequest extends Equatable {
  const SubscribePopupGetRequest({this.productid});

  final int? productid;

  static SubscribePopupGetRequest fromJson(Map<String, dynamic> json) {
    return SubscribePopupGetRequest(
        productid:
            json['productid'] == null ? null : (json['productid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'productid': productid};
  }

  SubscribePopupGetRequest copyWith({int? productid}) {
    return SubscribePopupGetRequest(productid: productid ?? this.productid);
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
