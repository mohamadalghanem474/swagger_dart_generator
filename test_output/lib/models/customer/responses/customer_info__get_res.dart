import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class InfoGetResponse extends Equatable {
  const InfoGetResponse({
    this.email,
    this.email_to_revalidate,
    this.check_username_availability_enabled,
    this.allow_users_to_change_usernames,
    this.usernames_enabled,
    this.username,
    this.gender_enabled,
    this.gender,
    this.first_name_enabled,
    this.first_name,
    this.vendor_id,
    this.first_name_required,
    this.last_name_enabled,
    this.last_name,
    this.last_name_required,
    this.date_of_birth_enabled,
    this.date_of_birth_day,
    this.date_of_birth_month,
    this.date_of_birth_year,
    this.date_of_birth_required,
    this.company_enabled,
    this.company_required,
    this.company,
    this.street_address_enabled,
    this.street_address_required,
    this.street_address,
    this.street_address2_enabled,
    this.street_address2_required,
    this.street_address2,
    this.zip_postal_code_enabled,
    this.zip_postal_code_required,
    this.zip_postal_code,
    this.city_enabled,
    this.city_required,
    this.city,
    this.county_enabled,
    this.county_required,
    this.county,
    this.country_enabled,
    this.country_required,
    this.country_id,
    this.available_countries,
    this.state_province_enabled,
    this.state_province_required,
    this.state_province_id,
    this.available_states,
    this.phone_enabled,
    this.phone_required,
    this.phone,
    this.fax_enabled,
    this.fax_required,
    this.fax,
    this.newsletter_enabled,
    this.newsletter,
    this.signature_enabled,
    this.signature,
    this.time_zone_id,
    this.allow_customers_to_set_time_zone,
    this.available_time_zones,
    this.vat_number,
    this.vat_number_status_note,
    this.display_vat_number,
    this.associated_external_auth_records,
    this.number_of_external_authentication_providers,
    this.allow_customers_to_remove_associations,
    this.customer_attributes,
    this.gdpr_consents,
    this.custom_properties,
  });

  final String? email;

  final DateTime? email_to_revalidate;

  final bool? check_username_availability_enabled;

  final bool? allow_users_to_change_usernames;

  final bool? usernames_enabled;

  final String? username;

  final bool? gender_enabled;

  final String? gender;

  final bool? first_name_enabled;

  final String? first_name;

  final int? vendor_id;

  final bool? first_name_required;

  final bool? last_name_enabled;

  final String? last_name;

  final bool? last_name_required;

  final bool? date_of_birth_enabled;

  final int? date_of_birth_day;

  final int? date_of_birth_month;

  final int? date_of_birth_year;

  final bool? date_of_birth_required;

  final bool? company_enabled;

  final bool? company_required;

  final String? company;

  final bool? street_address_enabled;

  final bool? street_address_required;

  final String? street_address;

  final bool? street_address2_enabled;

  final bool? street_address2_required;

  final String? street_address2;

  final bool? zip_postal_code_enabled;

  final bool? zip_postal_code_required;

  final String? zip_postal_code;

  final bool? city_enabled;

  final bool? city_required;

  final String? city;

  final bool? county_enabled;

  final bool? county_required;

  final String? county;

  final bool? country_enabled;

  final bool? country_required;

  final int? country_id;

  final List<String>? available_countries;

  final bool? state_province_enabled;

  final bool? state_province_required;

  final int? state_province_id;

  final List<String>? available_states;

  final bool? phone_enabled;

  final bool? phone_required;

  final String? phone;

  final bool? fax_enabled;

  final bool? fax_required;

  final String? fax;

  final bool? newsletter_enabled;

  final bool? newsletter;

  final bool? signature_enabled;

  final String? signature;

  final DateTime? time_zone_id;

  final bool? allow_customers_to_set_time_zone;

  final List<String>? available_time_zones;

  final String? vat_number;

  final String? vat_number_status_note;

  final bool? display_vat_number;

  final List<String>? associated_external_auth_records;

  final int? number_of_external_authentication_providers;

  final bool? allow_customers_to_remove_associations;

  final List<String>? customer_attributes;

  final List<String>? gdpr_consents;

  final Map<String, dynamic>? custom_properties;

  static InfoGetResponse fromJson(Map<String, dynamic> json) {
    return InfoGetResponse(
      email: json['email'] == null ? null : (json['email'] as String),
      email_to_revalidate: json['email_to_revalidate'] == null
          ? null
          : DateTime.parse((json['email_to_revalidate'] as String)),
      check_username_availability_enabled:
          json['check_username_availability_enabled'] == null
              ? null
              : (json['check_username_availability_enabled'] as bool),
      allow_users_to_change_usernames:
          json['allow_users_to_change_usernames'] == null
              ? null
              : (json['allow_users_to_change_usernames'] as bool),
      usernames_enabled: json['usernames_enabled'] == null
          ? null
          : (json['usernames_enabled'] as bool),
      username: json['username'] == null ? null : (json['username'] as String),
      gender_enabled: json['gender_enabled'] == null
          ? null
          : (json['gender_enabled'] as bool),
      gender: json['gender'] == null ? null : (json['gender'] as String),
      first_name_enabled: json['first_name_enabled'] == null
          ? null
          : (json['first_name_enabled'] as bool),
      first_name:
          json['first_name'] == null ? null : (json['first_name'] as String),
      vendor_id: json['vendor_id'] == null ? null : (json['vendor_id'] as int),
      first_name_required: json['first_name_required'] == null
          ? null
          : (json['first_name_required'] as bool),
      last_name_enabled: json['last_name_enabled'] == null
          ? null
          : (json['last_name_enabled'] as bool),
      last_name:
          json['last_name'] == null ? null : (json['last_name'] as String),
      last_name_required: json['last_name_required'] == null
          ? null
          : (json['last_name_required'] as bool),
      date_of_birth_enabled: json['date_of_birth_enabled'] == null
          ? null
          : (json['date_of_birth_enabled'] as bool),
      date_of_birth_day: json['date_of_birth_day'] == null
          ? null
          : (json['date_of_birth_day'] as int),
      date_of_birth_month: json['date_of_birth_month'] == null
          ? null
          : (json['date_of_birth_month'] as int),
      date_of_birth_year: json['date_of_birth_year'] == null
          ? null
          : (json['date_of_birth_year'] as int),
      date_of_birth_required: json['date_of_birth_required'] == null
          ? null
          : (json['date_of_birth_required'] as bool),
      company_enabled: json['company_enabled'] == null
          ? null
          : (json['company_enabled'] as bool),
      company_required: json['company_required'] == null
          ? null
          : (json['company_required'] as bool),
      company: json['company'] == null ? null : (json['company'] as String),
      street_address_enabled: json['street_address_enabled'] == null
          ? null
          : (json['street_address_enabled'] as bool),
      street_address_required: json['street_address_required'] == null
          ? null
          : (json['street_address_required'] as bool),
      street_address: json['street_address'] == null
          ? null
          : (json['street_address'] as String),
      street_address2_enabled: json['street_address2_enabled'] == null
          ? null
          : (json['street_address2_enabled'] as bool),
      street_address2_required: json['street_address2_required'] == null
          ? null
          : (json['street_address2_required'] as bool),
      street_address2: json['street_address2'] == null
          ? null
          : (json['street_address2'] as String),
      zip_postal_code_enabled: json['zip_postal_code_enabled'] == null
          ? null
          : (json['zip_postal_code_enabled'] as bool),
      zip_postal_code_required: json['zip_postal_code_required'] == null
          ? null
          : (json['zip_postal_code_required'] as bool),
      zip_postal_code: json['zip_postal_code'] == null
          ? null
          : (json['zip_postal_code'] as String),
      city_enabled:
          json['city_enabled'] == null ? null : (json['city_enabled'] as bool),
      city_required: json['city_required'] == null
          ? null
          : (json['city_required'] as bool),
      city: json['city'] == null ? null : (json['city'] as String),
      county_enabled: json['county_enabled'] == null
          ? null
          : (json['county_enabled'] as bool),
      county_required: json['county_required'] == null
          ? null
          : (json['county_required'] as bool),
      county: json['county'] == null ? null : (json['county'] as String),
      country_enabled: json['country_enabled'] == null
          ? null
          : (json['country_enabled'] as bool),
      country_required: json['country_required'] == null
          ? null
          : (json['country_required'] as bool),
      country_id:
          json['country_id'] == null ? null : (json['country_id'] as int),
      available_countries: json['available_countries'] == null
          ? null
          : json['available_countries'],
      state_province_enabled: json['state_province_enabled'] == null
          ? null
          : (json['state_province_enabled'] as bool),
      state_province_required: json['state_province_required'] == null
          ? null
          : (json['state_province_required'] as bool),
      state_province_id: json['state_province_id'] == null
          ? null
          : (json['state_province_id'] as int),
      available_states:
          json['available_states'] == null ? null : json['available_states'],
      phone_enabled: json['phone_enabled'] == null
          ? null
          : (json['phone_enabled'] as bool),
      phone_required: json['phone_required'] == null
          ? null
          : (json['phone_required'] as bool),
      phone: json['phone'] == null ? null : (json['phone'] as String),
      fax_enabled:
          json['fax_enabled'] == null ? null : (json['fax_enabled'] as bool),
      fax_required:
          json['fax_required'] == null ? null : (json['fax_required'] as bool),
      fax: json['fax'] == null ? null : (json['fax'] as String),
      newsletter_enabled: json['newsletter_enabled'] == null
          ? null
          : (json['newsletter_enabled'] as bool),
      newsletter:
          json['newsletter'] == null ? null : (json['newsletter'] as bool),
      signature_enabled: json['signature_enabled'] == null
          ? null
          : (json['signature_enabled'] as bool),
      signature:
          json['signature'] == null ? null : (json['signature'] as String),
      time_zone_id: json['time_zone_id'] == null
          ? null
          : DateTime.parse((json['time_zone_id'] as String)),
      allow_customers_to_set_time_zone:
          json['allow_customers_to_set_time_zone'] == null
              ? null
              : (json['allow_customers_to_set_time_zone'] as bool),
      available_time_zones: json['available_time_zones'] == null
          ? null
          : json['available_time_zones'],
      vat_number:
          json['vat_number'] == null ? null : (json['vat_number'] as String),
      vat_number_status_note: json['vat_number_status_note'] == null
          ? null
          : (json['vat_number_status_note'] as String),
      display_vat_number: json['display_vat_number'] == null
          ? null
          : (json['display_vat_number'] as bool),
      associated_external_auth_records:
          json['associated_external_auth_records'] == null
              ? null
              : json['associated_external_auth_records'],
      number_of_external_authentication_providers:
          json['number_of_external_authentication_providers'] == null
              ? null
              : (json['number_of_external_authentication_providers'] as int),
      allow_customers_to_remove_associations:
          json['allow_customers_to_remove_associations'] == null
              ? null
              : (json['allow_customers_to_remove_associations'] as bool),
      customer_attributes: json['customer_attributes'] == null
          ? null
          : json['customer_attributes'],
      gdpr_consents:
          json['gdpr_consents'] == null ? null : json['gdpr_consents'],
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'email': email,
      'email_to_revalidate': email_to_revalidate?.toIso8601String(),
      'check_username_availability_enabled':
          check_username_availability_enabled,
      'allow_users_to_change_usernames': allow_users_to_change_usernames,
      'usernames_enabled': usernames_enabled,
      'username': username,
      'gender_enabled': gender_enabled,
      'gender': gender,
      'first_name_enabled': first_name_enabled,
      'first_name': first_name,
      'vendor_id': vendor_id,
      'first_name_required': first_name_required,
      'last_name_enabled': last_name_enabled,
      'last_name': last_name,
      'last_name_required': last_name_required,
      'date_of_birth_enabled': date_of_birth_enabled,
      'date_of_birth_day': date_of_birth_day,
      'date_of_birth_month': date_of_birth_month,
      'date_of_birth_year': date_of_birth_year,
      'date_of_birth_required': date_of_birth_required,
      'company_enabled': company_enabled,
      'company_required': company_required,
      'company': company,
      'street_address_enabled': street_address_enabled,
      'street_address_required': street_address_required,
      'street_address': street_address,
      'street_address2_enabled': street_address2_enabled,
      'street_address2_required': street_address2_required,
      'street_address2': street_address2,
      'zip_postal_code_enabled': zip_postal_code_enabled,
      'zip_postal_code_required': zip_postal_code_required,
      'zip_postal_code': zip_postal_code,
      'city_enabled': city_enabled,
      'city_required': city_required,
      'city': city,
      'county_enabled': county_enabled,
      'county_required': county_required,
      'county': county,
      'country_enabled': country_enabled,
      'country_required': country_required,
      'country_id': country_id,
      'available_countries': available_countries,
      'state_province_enabled': state_province_enabled,
      'state_province_required': state_province_required,
      'state_province_id': state_province_id,
      'available_states': available_states,
      'phone_enabled': phone_enabled,
      'phone_required': phone_required,
      'phone': phone,
      'fax_enabled': fax_enabled,
      'fax_required': fax_required,
      'fax': fax,
      'newsletter_enabled': newsletter_enabled,
      'newsletter': newsletter,
      'signature_enabled': signature_enabled,
      'signature': signature,
      'time_zone_id': time_zone_id?.toIso8601String(),
      'allow_customers_to_set_time_zone': allow_customers_to_set_time_zone,
      'available_time_zones': available_time_zones,
      'vat_number': vat_number,
      'vat_number_status_note': vat_number_status_note,
      'display_vat_number': display_vat_number,
      'associated_external_auth_records': associated_external_auth_records,
      'number_of_external_authentication_providers':
          number_of_external_authentication_providers,
      'allow_customers_to_remove_associations':
          allow_customers_to_remove_associations,
      'customer_attributes': customer_attributes,
      'gdpr_consents': gdpr_consents,
      'custom_properties': custom_properties,
    };
  }

  InfoGetResponse copyWith({
    String? email,
    DateTime? email_to_revalidate,
    bool? check_username_availability_enabled,
    bool? allow_users_to_change_usernames,
    bool? usernames_enabled,
    String? username,
    bool? gender_enabled,
    String? gender,
    bool? first_name_enabled,
    String? first_name,
    int? vendor_id,
    bool? first_name_required,
    bool? last_name_enabled,
    String? last_name,
    bool? last_name_required,
    bool? date_of_birth_enabled,
    int? date_of_birth_day,
    int? date_of_birth_month,
    int? date_of_birth_year,
    bool? date_of_birth_required,
    bool? company_enabled,
    bool? company_required,
    String? company,
    bool? street_address_enabled,
    bool? street_address_required,
    String? street_address,
    bool? street_address2_enabled,
    bool? street_address2_required,
    String? street_address2,
    bool? zip_postal_code_enabled,
    bool? zip_postal_code_required,
    String? zip_postal_code,
    bool? city_enabled,
    bool? city_required,
    String? city,
    bool? county_enabled,
    bool? county_required,
    String? county,
    bool? country_enabled,
    bool? country_required,
    int? country_id,
    List<String>? available_countries,
    bool? state_province_enabled,
    bool? state_province_required,
    int? state_province_id,
    List<String>? available_states,
    bool? phone_enabled,
    bool? phone_required,
    String? phone,
    bool? fax_enabled,
    bool? fax_required,
    String? fax,
    bool? newsletter_enabled,
    bool? newsletter,
    bool? signature_enabled,
    String? signature,
    DateTime? time_zone_id,
    bool? allow_customers_to_set_time_zone,
    List<String>? available_time_zones,
    String? vat_number,
    String? vat_number_status_note,
    bool? display_vat_number,
    List<String>? associated_external_auth_records,
    int? number_of_external_authentication_providers,
    bool? allow_customers_to_remove_associations,
    List<String>? customer_attributes,
    List<String>? gdpr_consents,
    Map<String, dynamic>? custom_properties,
  }) {
    return InfoGetResponse(
      email: email ?? this.email,
      email_to_revalidate: email_to_revalidate ?? this.email_to_revalidate,
      check_username_availability_enabled:
          check_username_availability_enabled ??
              this.check_username_availability_enabled,
      allow_users_to_change_usernames: allow_users_to_change_usernames ??
          this.allow_users_to_change_usernames,
      usernames_enabled: usernames_enabled ?? this.usernames_enabled,
      username: username ?? this.username,
      gender_enabled: gender_enabled ?? this.gender_enabled,
      gender: gender ?? this.gender,
      first_name_enabled: first_name_enabled ?? this.first_name_enabled,
      first_name: first_name ?? this.first_name,
      vendor_id: vendor_id ?? this.vendor_id,
      first_name_required: first_name_required ?? this.first_name_required,
      last_name_enabled: last_name_enabled ?? this.last_name_enabled,
      last_name: last_name ?? this.last_name,
      last_name_required: last_name_required ?? this.last_name_required,
      date_of_birth_enabled:
          date_of_birth_enabled ?? this.date_of_birth_enabled,
      date_of_birth_day: date_of_birth_day ?? this.date_of_birth_day,
      date_of_birth_month: date_of_birth_month ?? this.date_of_birth_month,
      date_of_birth_year: date_of_birth_year ?? this.date_of_birth_year,
      date_of_birth_required:
          date_of_birth_required ?? this.date_of_birth_required,
      company_enabled: company_enabled ?? this.company_enabled,
      company_required: company_required ?? this.company_required,
      company: company ?? this.company,
      street_address_enabled:
          street_address_enabled ?? this.street_address_enabled,
      street_address_required:
          street_address_required ?? this.street_address_required,
      street_address: street_address ?? this.street_address,
      street_address2_enabled:
          street_address2_enabled ?? this.street_address2_enabled,
      street_address2_required:
          street_address2_required ?? this.street_address2_required,
      street_address2: street_address2 ?? this.street_address2,
      zip_postal_code_enabled:
          zip_postal_code_enabled ?? this.zip_postal_code_enabled,
      zip_postal_code_required:
          zip_postal_code_required ?? this.zip_postal_code_required,
      zip_postal_code: zip_postal_code ?? this.zip_postal_code,
      city_enabled: city_enabled ?? this.city_enabled,
      city_required: city_required ?? this.city_required,
      city: city ?? this.city,
      county_enabled: county_enabled ?? this.county_enabled,
      county_required: county_required ?? this.county_required,
      county: county ?? this.county,
      country_enabled: country_enabled ?? this.country_enabled,
      country_required: country_required ?? this.country_required,
      country_id: country_id ?? this.country_id,
      available_countries: available_countries ?? this.available_countries,
      state_province_enabled:
          state_province_enabled ?? this.state_province_enabled,
      state_province_required:
          state_province_required ?? this.state_province_required,
      state_province_id: state_province_id ?? this.state_province_id,
      available_states: available_states ?? this.available_states,
      phone_enabled: phone_enabled ?? this.phone_enabled,
      phone_required: phone_required ?? this.phone_required,
      phone: phone ?? this.phone,
      fax_enabled: fax_enabled ?? this.fax_enabled,
      fax_required: fax_required ?? this.fax_required,
      fax: fax ?? this.fax,
      newsletter_enabled: newsletter_enabled ?? this.newsletter_enabled,
      newsletter: newsletter ?? this.newsletter,
      signature_enabled: signature_enabled ?? this.signature_enabled,
      signature: signature ?? this.signature,
      time_zone_id: time_zone_id ?? this.time_zone_id,
      allow_customers_to_set_time_zone: allow_customers_to_set_time_zone ??
          this.allow_customers_to_set_time_zone,
      available_time_zones: available_time_zones ?? this.available_time_zones,
      vat_number: vat_number ?? this.vat_number,
      vat_number_status_note:
          vat_number_status_note ?? this.vat_number_status_note,
      display_vat_number: display_vat_number ?? this.display_vat_number,
      associated_external_auth_records: associated_external_auth_records ??
          this.associated_external_auth_records,
      number_of_external_authentication_providers:
          number_of_external_authentication_providers ??
              this.number_of_external_authentication_providers,
      allow_customers_to_remove_associations:
          allow_customers_to_remove_associations ??
              this.allow_customers_to_remove_associations,
      customer_attributes: customer_attributes ?? this.customer_attributes,
      gdpr_consents: gdpr_consents ?? this.gdpr_consents,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      email,
      email_to_revalidate,
      check_username_availability_enabled,
      allow_users_to_change_usernames,
      usernames_enabled,
      username,
      gender_enabled,
      gender,
      first_name_enabled,
      first_name,
      vendor_id,
      first_name_required,
      last_name_enabled,
      last_name,
      last_name_required,
      date_of_birth_enabled,
      date_of_birth_day,
      date_of_birth_month,
      date_of_birth_year,
      date_of_birth_required,
      company_enabled,
      company_required,
      company,
      street_address_enabled,
      street_address_required,
      street_address,
      street_address2_enabled,
      street_address2_required,
      street_address2,
      zip_postal_code_enabled,
      zip_postal_code_required,
      zip_postal_code,
      city_enabled,
      city_required,
      city,
      county_enabled,
      county_required,
      county,
      country_enabled,
      country_required,
      country_id,
      available_countries,
      state_province_enabled,
      state_province_required,
      state_province_id,
      available_states,
      phone_enabled,
      phone_required,
      phone,
      fax_enabled,
      fax_required,
      fax,
      newsletter_enabled,
      newsletter,
      signature_enabled,
      signature,
      time_zone_id,
      allow_customers_to_set_time_zone,
      available_time_zones,
      vat_number,
      vat_number_status_note,
      display_vat_number,
      associated_external_auth_records,
      number_of_external_authentication_providers,
      allow_customers_to_remove_associations,
      customer_attributes,
      gdpr_consents,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
