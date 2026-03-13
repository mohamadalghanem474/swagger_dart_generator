import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class InfoPostResponse extends Equatable {
  const InfoPostResponse({
    this.id,
    this.name,
    this.email,
    this.description,
    this.picture_url,
    this.vendor_attributes,
    this.commercial_circular_url,
    this.mof_certificate_url,
    this.vat_certificate_url,
    this.personal_id_url,
    this.commercial_circularfile_name,
    this.mof_certificatefile_name,
    this.vat_certificatefile_name,
    this.personal_idfile_name,
    this.commercial_number,
    this.vat_number,
    this.business_type_id,
    this.business_type,
    this.industry_id,
    this.industry,
    this.num_of_shipment_per_m_id,
    this.num_of_shipment_per_m,
    this.icarry_plan_id,
    this.icarry_plan,
    this.new_industry,
    this.link_social,
    this.is_business,
    this.custom_properties,
  });

  final int? id;

  final String? name;

  final String? email;

  final String? description;

  final String? picture_url;

  final List<String>? vendor_attributes;

  final String? commercial_circular_url;

  final String? mof_certificate_url;

  final String? vat_certificate_url;

  final String? personal_id_url;

  final String? commercial_circularfile_name;

  final String? mof_certificatefile_name;

  final String? vat_certificatefile_name;

  final String? personal_idfile_name;

  final String? commercial_number;

  final String? vat_number;

  final int? business_type_id;

  final List<String>? business_type;

  final int? industry_id;

  final List<String>? industry;

  final int? num_of_shipment_per_m_id;

  final List<String>? num_of_shipment_per_m;

  final int? icarry_plan_id;

  final List<String>? icarry_plan;

  final String? new_industry;

  final String? link_social;

  final bool? is_business;

  final Map<String, dynamic>? custom_properties;

  static InfoPostResponse fromJson(Map<String, dynamic> json) {
    return InfoPostResponse(
      id: json['id'] == null ? null : (json['id'] as int),
      name: json['name'] == null ? null : (json['name'] as String),
      email: json['email'] == null ? null : (json['email'] as String),
      description:
          json['description'] == null ? null : (json['description'] as String),
      picture_url:
          json['picture_url'] == null ? null : (json['picture_url'] as String),
      vendor_attributes:
          json['vendor_attributes'] == null ? null : json['vendor_attributes'],
      commercial_circular_url: json['commercial_circular_url'] == null
          ? null
          : (json['commercial_circular_url'] as String),
      mof_certificate_url: json['mof_certificate_url'] == null
          ? null
          : (json['mof_certificate_url'] as String),
      vat_certificate_url: json['vat_certificate_url'] == null
          ? null
          : (json['vat_certificate_url'] as String),
      personal_id_url: json['personal_id_url'] == null
          ? null
          : (json['personal_id_url'] as String),
      commercial_circularfile_name: json['commercial_circularfile_name'] == null
          ? null
          : (json['commercial_circularfile_name'] as String),
      mof_certificatefile_name: json['mof_certificatefile_name'] == null
          ? null
          : (json['mof_certificatefile_name'] as String),
      vat_certificatefile_name: json['vat_certificatefile_name'] == null
          ? null
          : (json['vat_certificatefile_name'] as String),
      personal_idfile_name: json['personal_idfile_name'] == null
          ? null
          : (json['personal_idfile_name'] as String),
      commercial_number: json['commercial_number'] == null
          ? null
          : (json['commercial_number'] as String),
      vat_number:
          json['vat_number'] == null ? null : (json['vat_number'] as String),
      business_type_id: json['business_type_id'] == null
          ? null
          : (json['business_type_id'] as int),
      business_type:
          json['business_type'] == null ? null : json['business_type'],
      industry_id:
          json['industry_id'] == null ? null : (json['industry_id'] as int),
      industry: json['industry'] == null ? null : json['industry'],
      num_of_shipment_per_m_id: json['num_of_shipment_per_m_id'] == null
          ? null
          : (json['num_of_shipment_per_m_id'] as int),
      num_of_shipment_per_m: json['num_of_shipment_per_m'] == null
          ? null
          : json['num_of_shipment_per_m'],
      icarry_plan_id: json['icarry_plan_id'] == null
          ? null
          : (json['icarry_plan_id'] as int),
      icarry_plan: json['icarry_plan'] == null ? null : json['icarry_plan'],
      new_industry: json['new_industry'] == null
          ? null
          : (json['new_industry'] as String),
      link_social:
          json['link_social'] == null ? null : (json['link_social'] as String),
      is_business:
          json['is_business'] == null ? null : (json['is_business'] as bool),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
      'description': description,
      'picture_url': picture_url,
      'vendor_attributes': vendor_attributes,
      'commercial_circular_url': commercial_circular_url,
      'mof_certificate_url': mof_certificate_url,
      'vat_certificate_url': vat_certificate_url,
      'personal_id_url': personal_id_url,
      'commercial_circularfile_name': commercial_circularfile_name,
      'mof_certificatefile_name': mof_certificatefile_name,
      'vat_certificatefile_name': vat_certificatefile_name,
      'personal_idfile_name': personal_idfile_name,
      'commercial_number': commercial_number,
      'vat_number': vat_number,
      'business_type_id': business_type_id,
      'business_type': business_type,
      'industry_id': industry_id,
      'industry': industry,
      'num_of_shipment_per_m_id': num_of_shipment_per_m_id,
      'num_of_shipment_per_m': num_of_shipment_per_m,
      'icarry_plan_id': icarry_plan_id,
      'icarry_plan': icarry_plan,
      'new_industry': new_industry,
      'link_social': link_social,
      'is_business': is_business,
      'custom_properties': custom_properties,
    };
  }

  InfoPostResponse copyWith({
    int? id,
    String? name,
    String? email,
    String? description,
    String? picture_url,
    List<String>? vendor_attributes,
    String? commercial_circular_url,
    String? mof_certificate_url,
    String? vat_certificate_url,
    String? personal_id_url,
    String? commercial_circularfile_name,
    String? mof_certificatefile_name,
    String? vat_certificatefile_name,
    String? personal_idfile_name,
    String? commercial_number,
    String? vat_number,
    int? business_type_id,
    List<String>? business_type,
    int? industry_id,
    List<String>? industry,
    int? num_of_shipment_per_m_id,
    List<String>? num_of_shipment_per_m,
    int? icarry_plan_id,
    List<String>? icarry_plan,
    String? new_industry,
    String? link_social,
    bool? is_business,
    Map<String, dynamic>? custom_properties,
  }) {
    return InfoPostResponse(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      description: description ?? this.description,
      picture_url: picture_url ?? this.picture_url,
      vendor_attributes: vendor_attributes ?? this.vendor_attributes,
      commercial_circular_url:
          commercial_circular_url ?? this.commercial_circular_url,
      mof_certificate_url: mof_certificate_url ?? this.mof_certificate_url,
      vat_certificate_url: vat_certificate_url ?? this.vat_certificate_url,
      personal_id_url: personal_id_url ?? this.personal_id_url,
      commercial_circularfile_name:
          commercial_circularfile_name ?? this.commercial_circularfile_name,
      mof_certificatefile_name:
          mof_certificatefile_name ?? this.mof_certificatefile_name,
      vat_certificatefile_name:
          vat_certificatefile_name ?? this.vat_certificatefile_name,
      personal_idfile_name: personal_idfile_name ?? this.personal_idfile_name,
      commercial_number: commercial_number ?? this.commercial_number,
      vat_number: vat_number ?? this.vat_number,
      business_type_id: business_type_id ?? this.business_type_id,
      business_type: business_type ?? this.business_type,
      industry_id: industry_id ?? this.industry_id,
      industry: industry ?? this.industry,
      num_of_shipment_per_m_id:
          num_of_shipment_per_m_id ?? this.num_of_shipment_per_m_id,
      num_of_shipment_per_m:
          num_of_shipment_per_m ?? this.num_of_shipment_per_m,
      icarry_plan_id: icarry_plan_id ?? this.icarry_plan_id,
      icarry_plan: icarry_plan ?? this.icarry_plan,
      new_industry: new_industry ?? this.new_industry,
      link_social: link_social ?? this.link_social,
      is_business: is_business ?? this.is_business,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      id,
      name,
      email,
      description,
      picture_url,
      vendor_attributes,
      commercial_circular_url,
      mof_certificate_url,
      vat_certificate_url,
      personal_id_url,
      commercial_circularfile_name,
      mof_certificatefile_name,
      vat_certificatefile_name,
      personal_idfile_name,
      commercial_number,
      vat_number,
      business_type_id,
      business_type,
      industry_id,
      industry,
      num_of_shipment_per_m_id,
      num_of_shipment_per_m,
      icarry_plan_id,
      icarry_plan,
      new_industry,
      link_social,
      is_business,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
