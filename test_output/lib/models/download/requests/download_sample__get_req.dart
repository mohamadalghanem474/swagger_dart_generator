import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SampleGetRequest extends Equatable {
  const SampleGetRequest({this.productid});

  final int? productid;

  static SampleGetRequest fromJson(Map<String, dynamic> json) {
    return SampleGetRequest(
        productid:
            json['productid'] == null ? null : (json['productid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'productid': productid};
  }

  SampleGetRequest copyWith({int? productid}) {
    return SampleGetRequest(productid: productid ?? this.productid);
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
