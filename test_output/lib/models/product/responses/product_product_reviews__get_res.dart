import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ProductReviewsGetResponse extends Equatable {
  const ProductReviewsGetResponse({
    this.product_id,
    this.product_name,
    this.product_se_name,
    this.items,
    this.add_product_review,
    this.review_type_list,
    this.add_additional_product_review_list,
    this.custom_properties,
  });

  final int? product_id;

  final String? product_name;

  final String? product_se_name;

  final List<String>? items;

  final String? add_product_review;

  final List<String>? review_type_list;

  final List<String>? add_additional_product_review_list;

  final Map<String, dynamic>? custom_properties;

  static ProductReviewsGetResponse fromJson(Map<String, dynamic> json) {
    return ProductReviewsGetResponse(
      product_id:
          json['product_id'] == null ? null : (json['product_id'] as int),
      product_name: json['product_name'] == null
          ? null
          : (json['product_name'] as String),
      product_se_name: json['product_se_name'] == null
          ? null
          : (json['product_se_name'] as String),
      items: json['items'] == null ? null : json['items'],
      add_product_review: json['add_product_review'] == null
          ? null
          : (json['add_product_review'] as String),
      review_type_list:
          json['review_type_list'] == null ? null : json['review_type_list'],
      add_additional_product_review_list:
          json['add_additional_product_review_list'] == null
              ? null
              : json['add_additional_product_review_list'],
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'product_id': product_id,
      'product_name': product_name,
      'product_se_name': product_se_name,
      'items': items,
      'add_product_review': add_product_review,
      'review_type_list': review_type_list,
      'add_additional_product_review_list': add_additional_product_review_list,
      'custom_properties': custom_properties,
    };
  }

  ProductReviewsGetResponse copyWith({
    int? product_id,
    String? product_name,
    String? product_se_name,
    List<String>? items,
    String? add_product_review,
    List<String>? review_type_list,
    List<String>? add_additional_product_review_list,
    Map<String, dynamic>? custom_properties,
  }) {
    return ProductReviewsGetResponse(
      product_id: product_id ?? this.product_id,
      product_name: product_name ?? this.product_name,
      product_se_name: product_se_name ?? this.product_se_name,
      items: items ?? this.items,
      add_product_review: add_product_review ?? this.add_product_review,
      review_type_list: review_type_list ?? this.review_type_list,
      add_additional_product_review_list: add_additional_product_review_list ??
          this.add_additional_product_review_list,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      product_id,
      product_name,
      product_se_name,
      items,
      add_product_review,
      review_type_list,
      add_additional_product_review_list,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
