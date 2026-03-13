import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CompareProductsGetResponse extends Equatable {
  const CompareProductsGetResponse({
    this.products,
    this.include_short_description_in_compare_products,
    this.include_full_description_in_compare_products,
    this.id,
    this.custom_properties,
  });

  final List<String>? products;

  final bool? include_short_description_in_compare_products;

  final bool? include_full_description_in_compare_products;

  final int? id;

  final Map<String, dynamic>? custom_properties;

  static CompareProductsGetResponse fromJson(Map<String, dynamic> json) {
    return CompareProductsGetResponse(
      products: json['products'] == null ? null : json['products'],
      include_short_description_in_compare_products:
          json['include_short_description_in_compare_products'] == null
              ? null
              : (json['include_short_description_in_compare_products'] as bool),
      include_full_description_in_compare_products:
          json['include_full_description_in_compare_products'] == null
              ? null
              : (json['include_full_description_in_compare_products'] as bool),
      id: json['id'] == null ? null : (json['id'] as int),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'products': products,
      'include_short_description_in_compare_products':
          include_short_description_in_compare_products,
      'include_full_description_in_compare_products':
          include_full_description_in_compare_products,
      'id': id,
      'custom_properties': custom_properties,
    };
  }

  CompareProductsGetResponse copyWith({
    List<String>? products,
    bool? include_short_description_in_compare_products,
    bool? include_full_description_in_compare_products,
    int? id,
    Map<String, dynamic>? custom_properties,
  }) {
    return CompareProductsGetResponse(
      products: products ?? this.products,
      include_short_description_in_compare_products:
          include_short_description_in_compare_products ??
              this.include_short_description_in_compare_products,
      include_full_description_in_compare_products:
          include_full_description_in_compare_products ??
              this.include_full_description_in_compare_products,
      id: id ?? this.id,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      products,
      include_short_description_in_compare_products,
      include_full_description_in_compare_products,
      id,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
