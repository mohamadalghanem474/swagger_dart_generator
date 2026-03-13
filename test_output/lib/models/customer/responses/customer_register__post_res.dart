import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class RegisterPostResponse extends Equatable {
  const RegisterPostResponse({
    this.email,
    this.first_name,
    this.last_name,
    this.company,
    this.phone,
    this.mobile_number,
    this.password,
    this.full_address,
    this.country_id,
    this.state_province_id,
    this.business_type_id,
    this.industry_id,
    this.num_of_shipment_per_m_id,
    this.new_industry,
    this.icarry_plan_id,
    this.link_social,
    this.is_business,
    this.is_social,
    this.street,
    this.town,
    this.building,
    this.floor,
    this.is_on_demand,
    this.custom_properties,
  });

  final String? email;

  final String? first_name;

  final String? last_name;

  final String? company;

  final String? phone;

  final String? mobile_number;

  final String? password;

  final String? full_address;

  final int? country_id;

  final int? state_province_id;

  final int? business_type_id;

  final int? industry_id;

  final int? num_of_shipment_per_m_id;

  final String? new_industry;

  final int? icarry_plan_id;

  final String? link_social;

  final String? is_business;

  final String? is_social;

  final String? street;

  final String? town;

  final String? building;

  final String? floor;

  final String? is_on_demand;

  final Map<String, dynamic>? custom_properties;

  static RegisterPostResponse fromJson(Map<String, dynamic> json) {
    return RegisterPostResponse(
      email: json['email'] == null ? null : (json['email'] as String),
      first_name:
          json['first_name'] == null ? null : (json['first_name'] as String),
      last_name:
          json['last_name'] == null ? null : (json['last_name'] as String),
      company: json['company'] == null ? null : (json['company'] as String),
      phone: json['phone'] == null ? null : (json['phone'] as String),
      mobile_number: json['mobile_number'] == null
          ? null
          : (json['mobile_number'] as String),
      password: json['password'] == null ? null : (json['password'] as String),
      full_address: json['full_address'] == null
          ? null
          : (json['full_address'] as String),
      country_id:
          json['country_id'] == null ? null : (json['country_id'] as int),
      state_province_id: json['state_province_id'] == null
          ? null
          : (json['state_province_id'] as int),
      business_type_id: json['business_type_id'] == null
          ? null
          : (json['business_type_id'] as int),
      industry_id:
          json['industry_id'] == null ? null : (json['industry_id'] as int),
      num_of_shipment_per_m_id: json['num_of_shipment_per_m_id'] == null
          ? null
          : (json['num_of_shipment_per_m_id'] as int),
      new_industry: json['new_industry'] == null
          ? null
          : (json['new_industry'] as String),
      icarry_plan_id: json['icarry_plan_id'] == null
          ? null
          : (json['icarry_plan_id'] as int),
      link_social:
          json['link_social'] == null ? null : (json['link_social'] as String),
      is_business:
          json['is_business'] == null ? null : (json['is_business'] as String),
      is_social:
          json['is_social'] == null ? null : (json['is_social'] as String),
      street: json['street'] == null ? null : (json['street'] as String),
      town: json['town'] == null ? null : (json['town'] as String),
      building: json['building'] == null ? null : (json['building'] as String),
      floor: json['floor'] == null ? null : (json['floor'] as String),
      is_on_demand: json['is_on_demand'] == null
          ? null
          : (json['is_on_demand'] as String),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'email': email,
      'first_name': first_name,
      'last_name': last_name,
      'company': company,
      'phone': phone,
      'mobile_number': mobile_number,
      'password': password,
      'full_address': full_address,
      'country_id': country_id,
      'state_province_id': state_province_id,
      'business_type_id': business_type_id,
      'industry_id': industry_id,
      'num_of_shipment_per_m_id': num_of_shipment_per_m_id,
      'new_industry': new_industry,
      'icarry_plan_id': icarry_plan_id,
      'link_social': link_social,
      'is_business': is_business,
      'is_social': is_social,
      'street': street,
      'town': town,
      'building': building,
      'floor': floor,
      'is_on_demand': is_on_demand,
      'custom_properties': custom_properties,
    };
  }

  RegisterPostResponse copyWith({
    String? email,
    String? first_name,
    String? last_name,
    String? company,
    String? phone,
    String? mobile_number,
    String? password,
    String? full_address,
    int? country_id,
    int? state_province_id,
    int? business_type_id,
    int? industry_id,
    int? num_of_shipment_per_m_id,
    String? new_industry,
    int? icarry_plan_id,
    String? link_social,
    String? is_business,
    String? is_social,
    String? street,
    String? town,
    String? building,
    String? floor,
    String? is_on_demand,
    Map<String, dynamic>? custom_properties,
  }) {
    return RegisterPostResponse(
      email: email ?? this.email,
      first_name: first_name ?? this.first_name,
      last_name: last_name ?? this.last_name,
      company: company ?? this.company,
      phone: phone ?? this.phone,
      mobile_number: mobile_number ?? this.mobile_number,
      password: password ?? this.password,
      full_address: full_address ?? this.full_address,
      country_id: country_id ?? this.country_id,
      state_province_id: state_province_id ?? this.state_province_id,
      business_type_id: business_type_id ?? this.business_type_id,
      industry_id: industry_id ?? this.industry_id,
      num_of_shipment_per_m_id:
          num_of_shipment_per_m_id ?? this.num_of_shipment_per_m_id,
      new_industry: new_industry ?? this.new_industry,
      icarry_plan_id: icarry_plan_id ?? this.icarry_plan_id,
      link_social: link_social ?? this.link_social,
      is_business: is_business ?? this.is_business,
      is_social: is_social ?? this.is_social,
      street: street ?? this.street,
      town: town ?? this.town,
      building: building ?? this.building,
      floor: floor ?? this.floor,
      is_on_demand: is_on_demand ?? this.is_on_demand,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      email,
      first_name,
      last_name,
      company,
      phone,
      mobile_number,
      password,
      full_address,
      country_id,
      state_province_id,
      business_type_id,
      industry_id,
      num_of_shipment_per_m_id,
      new_industry,
      icarry_plan_id,
      link_social,
      is_business,
      is_social,
      street,
      town,
      building,
      floor,
      is_on_demand,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
