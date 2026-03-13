import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CreateBusinessShipmentDetailsPostResponse extends Equatable {
  const CreateBusinessShipmentDetailsPostResponse({
    this.product_dtos,
    this.parcel_quantity,
    this.cod_currency,
    this.package_value,
    this.parcel_description,
    this.external_id,
    this.parcel_dimensions_list,
    this.apply_multipiece,
    this.is_fresh_food,
    this.shipment_id,
    this.actual_weight,
    this.package_type,
    this.length,
    this.width,
    this.height,
    this.volumetric_weight,
    this.notes,
    this.selected_sticker_labels,
    this.id,
  });

  final List<String>? product_dtos;

  final int? parcel_quantity;

  final String? cod_currency;

  final double? package_value;

  final String? parcel_description;

  final String? external_id;

  final List<String>? parcel_dimensions_list;

  final bool? apply_multipiece;

  final bool? is_fresh_food;

  final int? shipment_id;

  final double? actual_weight;

  final String? package_type;

  final double? length;

  final double? width;

  final double? height;

  final double? volumetric_weight;

  final String? notes;

  final List<int>? selected_sticker_labels;

  final int? id;

  static CreateBusinessShipmentDetailsPostResponse fromJson(
      Map<String, dynamic> json) {
    return CreateBusinessShipmentDetailsPostResponse(
      product_dtos: json['product_dtos'] == null ? null : json['product_dtos'],
      parcel_quantity: json['parcel_quantity'] == null
          ? null
          : (json['parcel_quantity'] as int),
      cod_currency: json['cod_currency'] == null
          ? null
          : (json['cod_currency'] as String),
      package_value: json['package_value'] == null
          ? null
          : (json['package_value'] as double),
      parcel_description: json['parcel_description'] == null
          ? null
          : (json['parcel_description'] as String),
      external_id:
          json['external_id'] == null ? null : (json['external_id'] as String),
      parcel_dimensions_list: json['parcel_dimensions_list'] == null
          ? null
          : json['parcel_dimensions_list'],
      apply_multipiece: json['apply_multipiece'] == null
          ? null
          : (json['apply_multipiece'] as bool),
      is_fresh_food: json['is_fresh_food'] == null
          ? null
          : (json['is_fresh_food'] as bool),
      shipment_id:
          json['shipment_id'] == null ? null : (json['shipment_id'] as int),
      actual_weight: json['actual_weight'] == null
          ? null
          : (json['actual_weight'] as double),
      package_type: json['package_type'] == null
          ? null
          : (json['package_type'] as String),
      length: json['length'] == null ? null : (json['length'] as double),
      width: json['width'] == null ? null : (json['width'] as double),
      height: json['height'] == null ? null : (json['height'] as double),
      volumetric_weight: json['volumetric_weight'] == null
          ? null
          : (json['volumetric_weight'] as double),
      notes: json['notes'] == null ? null : (json['notes'] as String),
      selected_sticker_labels: json['selected_sticker_labels'] == null
          ? null
          : json['selected_sticker_labels'],
      id: json['id'] == null ? null : (json['id'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'product_dtos': product_dtos,
      'parcel_quantity': parcel_quantity,
      'cod_currency': cod_currency,
      'package_value': package_value,
      'parcel_description': parcel_description,
      'external_id': external_id,
      'parcel_dimensions_list': parcel_dimensions_list,
      'apply_multipiece': apply_multipiece,
      'is_fresh_food': is_fresh_food,
      'shipment_id': shipment_id,
      'actual_weight': actual_weight,
      'package_type': package_type,
      'length': length,
      'width': width,
      'height': height,
      'volumetric_weight': volumetric_weight,
      'notes': notes,
      'selected_sticker_labels': selected_sticker_labels,
      'id': id,
    };
  }

  CreateBusinessShipmentDetailsPostResponse copyWith({
    List<String>? product_dtos,
    int? parcel_quantity,
    String? cod_currency,
    double? package_value,
    String? parcel_description,
    String? external_id,
    List<String>? parcel_dimensions_list,
    bool? apply_multipiece,
    bool? is_fresh_food,
    int? shipment_id,
    double? actual_weight,
    String? package_type,
    double? length,
    double? width,
    double? height,
    double? volumetric_weight,
    String? notes,
    List<int>? selected_sticker_labels,
    int? id,
  }) {
    return CreateBusinessShipmentDetailsPostResponse(
      product_dtos: product_dtos ?? this.product_dtos,
      parcel_quantity: parcel_quantity ?? this.parcel_quantity,
      cod_currency: cod_currency ?? this.cod_currency,
      package_value: package_value ?? this.package_value,
      parcel_description: parcel_description ?? this.parcel_description,
      external_id: external_id ?? this.external_id,
      parcel_dimensions_list:
          parcel_dimensions_list ?? this.parcel_dimensions_list,
      apply_multipiece: apply_multipiece ?? this.apply_multipiece,
      is_fresh_food: is_fresh_food ?? this.is_fresh_food,
      shipment_id: shipment_id ?? this.shipment_id,
      actual_weight: actual_weight ?? this.actual_weight,
      package_type: package_type ?? this.package_type,
      length: length ?? this.length,
      width: width ?? this.width,
      height: height ?? this.height,
      volumetric_weight: volumetric_weight ?? this.volumetric_weight,
      notes: notes ?? this.notes,
      selected_sticker_labels:
          selected_sticker_labels ?? this.selected_sticker_labels,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props {
    return [
      product_dtos,
      parcel_quantity,
      cod_currency,
      package_value,
      parcel_description,
      external_id,
      parcel_dimensions_list,
      apply_multipiece,
      is_fresh_food,
      shipment_id,
      actual_weight,
      package_type,
      length,
      width,
      height,
      volumetric_weight,
      notes,
      selected_sticker_labels,
      id,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
