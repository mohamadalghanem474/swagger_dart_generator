import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetByIdGetResponse extends Equatable {
  const GetByIdGetResponse({
    this.name,
    this.allows_billing,
    this.allows_shipping,
    this.two_letter_iso_code,
    this.three_letter_iso_code,
    this.numeric_iso_code,
    this.required_zip_code,
    this.published,
    this.display_order,
    this.limited_to_stores,
    this.id,
  });

  final String? name;

  final bool? allows_billing;

  final bool? allows_shipping;

  final String? two_letter_iso_code;

  final String? three_letter_iso_code;

  final int? numeric_iso_code;

  final bool? required_zip_code;

  final bool? published;

  final int? display_order;

  final bool? limited_to_stores;

  final int? id;

  static GetByIdGetResponse fromJson(Map<String, dynamic> json) {
    return GetByIdGetResponse(
      name: json['name'] == null ? null : (json['name'] as String),
      allows_billing: json['allows_billing'] == null
          ? null
          : (json['allows_billing'] as bool),
      allows_shipping: json['allows_shipping'] == null
          ? null
          : (json['allows_shipping'] as bool),
      two_letter_iso_code: json['two_letter_iso_code'] == null
          ? null
          : (json['two_letter_iso_code'] as String),
      three_letter_iso_code: json['three_letter_iso_code'] == null
          ? null
          : (json['three_letter_iso_code'] as String),
      numeric_iso_code: json['numeric_iso_code'] == null
          ? null
          : (json['numeric_iso_code'] as int),
      required_zip_code: json['required_zip_code'] == null
          ? null
          : (json['required_zip_code'] as bool),
      published: json['published'] == null ? null : (json['published'] as bool),
      display_order:
          json['display_order'] == null ? null : (json['display_order'] as int),
      limited_to_stores: json['limited_to_stores'] == null
          ? null
          : (json['limited_to_stores'] as bool),
      id: json['id'] == null ? null : (json['id'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'allows_billing': allows_billing,
      'allows_shipping': allows_shipping,
      'two_letter_iso_code': two_letter_iso_code,
      'three_letter_iso_code': three_letter_iso_code,
      'numeric_iso_code': numeric_iso_code,
      'required_zip_code': required_zip_code,
      'published': published,
      'display_order': display_order,
      'limited_to_stores': limited_to_stores,
      'id': id,
    };
  }

  GetByIdGetResponse copyWith({
    String? name,
    bool? allows_billing,
    bool? allows_shipping,
    String? two_letter_iso_code,
    String? three_letter_iso_code,
    int? numeric_iso_code,
    bool? required_zip_code,
    bool? published,
    int? display_order,
    bool? limited_to_stores,
    int? id,
  }) {
    return GetByIdGetResponse(
      name: name ?? this.name,
      allows_billing: allows_billing ?? this.allows_billing,
      allows_shipping: allows_shipping ?? this.allows_shipping,
      two_letter_iso_code: two_letter_iso_code ?? this.two_letter_iso_code,
      three_letter_iso_code:
          three_letter_iso_code ?? this.three_letter_iso_code,
      numeric_iso_code: numeric_iso_code ?? this.numeric_iso_code,
      required_zip_code: required_zip_code ?? this.required_zip_code,
      published: published ?? this.published,
      display_order: display_order ?? this.display_order,
      limited_to_stores: limited_to_stores ?? this.limited_to_stores,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props {
    return [
      name,
      allows_billing,
      allows_shipping,
      two_letter_iso_code,
      three_letter_iso_code,
      numeric_iso_code,
      required_zip_code,
      published,
      display_order,
      limited_to_stores,
      id,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
