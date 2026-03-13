import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CustomerProductReviewsGetResponse extends Equatable {
  const CustomerProductReviewsGetResponse({
    this.product_reviews,
    this.pager_model,
    this.custom_properties,
  });

  final List<String>? product_reviews;

  final String? pager_model;

  final Map<String, dynamic>? custom_properties;

  static CustomerProductReviewsGetResponse fromJson(Map<String, dynamic> json) {
    return CustomerProductReviewsGetResponse(
      product_reviews:
          json['product_reviews'] == null ? null : json['product_reviews'],
      pager_model:
          json['pager_model'] == null ? null : (json['pager_model'] as String),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'product_reviews': product_reviews,
      'pager_model': pager_model,
      'custom_properties': custom_properties,
    };
  }

  CustomerProductReviewsGetResponse copyWith({
    List<String>? product_reviews,
    String? pager_model,
    Map<String, dynamic>? custom_properties,
  }) {
    return CustomerProductReviewsGetResponse(
      product_reviews: product_reviews ?? this.product_reviews,
      pager_model: pager_model ?? this.pager_model,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      product_reviews,
      pager_model,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
