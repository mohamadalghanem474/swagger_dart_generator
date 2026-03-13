import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetProductDetailsGetResponse extends Equatable {
  const GetProductDetailsGetResponse({
    this.product_template_view_path,
    this.product_details_model,
  });

  final String? product_template_view_path;

  final String? product_details_model;

  static GetProductDetailsGetResponse fromJson(Map<String, dynamic> json) {
    return GetProductDetailsGetResponse(
      product_template_view_path: json['product_template_view_path'] == null
          ? null
          : (json['product_template_view_path'] as String),
      product_details_model: json['product_details_model'] == null
          ? null
          : (json['product_details_model'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'product_template_view_path': product_template_view_path,
      'product_details_model': product_details_model,
    };
  }

  GetProductDetailsGetResponse copyWith({
    String? product_template_view_path,
    String? product_details_model,
  }) {
    return GetProductDetailsGetResponse(
      product_template_view_path:
          product_template_view_path ?? this.product_template_view_path,
      product_details_model:
          product_details_model ?? this.product_details_model,
    );
  }

  @override
  List<Object?> get props {
    return [
      product_template_view_path,
      product_details_model,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
