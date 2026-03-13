import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetVendorProductsPostResponse extends Equatable {
  const GetVendorProductsPostResponse({
    this.template_view_path,
    this.catalog_products_model,
  });

  final String? template_view_path;

  final String? catalog_products_model;

  static GetVendorProductsPostResponse fromJson(Map<String, dynamic> json) {
    return GetVendorProductsPostResponse(
      template_view_path: json['template_view_path'] == null
          ? null
          : (json['template_view_path'] as String),
      catalog_products_model: json['catalog_products_model'] == null
          ? null
          : (json['catalog_products_model'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'template_view_path': template_view_path,
      'catalog_products_model': catalog_products_model,
    };
  }

  GetVendorProductsPostResponse copyWith({
    String? template_view_path,
    String? catalog_products_model,
  }) {
    return GetVendorProductsPostResponse(
      template_view_path: template_view_path ?? this.template_view_path,
      catalog_products_model:
          catalog_products_model ?? this.catalog_products_model,
    );
  }

  @override
  List<Object?> get props {
    return [
      template_view_path,
      catalog_products_model,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
