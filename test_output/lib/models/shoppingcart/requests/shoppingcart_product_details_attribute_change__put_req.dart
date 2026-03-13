import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ProductDetailsAttributeChangePutRequest extends Equatable {
  const ProductDetailsAttributeChangePutRequest({
    this.validateattributeconditions,
    this.loadpicture,
    this.productid,
  });

  final bool? validateattributeconditions;

  final bool? loadpicture;

  final int? productid;

  static ProductDetailsAttributeChangePutRequest fromJson(
      Map<String, dynamic> json) {
    return ProductDetailsAttributeChangePutRequest(
      validateattributeconditions: json['validateattributeconditions'] == null
          ? null
          : (json['validateattributeconditions'] as bool),
      loadpicture:
          json['loadpicture'] == null ? null : (json['loadpicture'] as bool),
      productid: json['productid'] == null ? null : (json['productid'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'validateattributeconditions': validateattributeconditions,
      'loadpicture': loadpicture,
      'productid': productid,
    };
  }

  ProductDetailsAttributeChangePutRequest copyWith({
    bool? validateattributeconditions,
    bool? loadpicture,
    int? productid,
  }) {
    return ProductDetailsAttributeChangePutRequest(
      validateattributeconditions:
          validateattributeconditions ?? this.validateattributeconditions,
      loadpicture: loadpicture ?? this.loadpicture,
      productid: productid ?? this.productid,
    );
  }

  @override
  List<Object?> get props {
    return [
      validateattributeconditions,
      loadpicture,
      productid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
