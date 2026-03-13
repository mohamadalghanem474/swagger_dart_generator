import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ViewPMGetResponse extends Equatable {
  const ViewPMGetResponse({
    this.from_customer_id,
    this.customer_from_name,
    this.allow_viewing_from_profile,
    this.to_customer_id,
    this.customer_to_name,
    this.allow_viewing_to_profile,
    this.subject,
    this.message,
    this.created_on,
    this.is_read,
    this.id,
    this.custom_properties,
  });

  final int? from_customer_id;

  final String? customer_from_name;

  final bool? allow_viewing_from_profile;

  final int? to_customer_id;

  final String? customer_to_name;

  final bool? allow_viewing_to_profile;

  final String? subject;

  final String? message;

  final String? created_on;

  final bool? is_read;

  final int? id;

  final Map<String, dynamic>? custom_properties;

  static ViewPMGetResponse fromJson(Map<String, dynamic> json) {
    return ViewPMGetResponse(
      from_customer_id: json['from_customer_id'] == null
          ? null
          : (json['from_customer_id'] as int),
      customer_from_name: json['customer_from_name'] == null
          ? null
          : (json['customer_from_name'] as String),
      allow_viewing_from_profile: json['allow_viewing_from_profile'] == null
          ? null
          : (json['allow_viewing_from_profile'] as bool),
      to_customer_id: json['to_customer_id'] == null
          ? null
          : (json['to_customer_id'] as int),
      customer_to_name: json['customer_to_name'] == null
          ? null
          : (json['customer_to_name'] as String),
      allow_viewing_to_profile: json['allow_viewing_to_profile'] == null
          ? null
          : (json['allow_viewing_to_profile'] as bool),
      subject: json['subject'] == null ? null : (json['subject'] as String),
      message: json['message'] == null ? null : (json['message'] as String),
      created_on:
          json['created_on'] == null ? null : (json['created_on'] as String),
      is_read: json['is_read'] == null ? null : (json['is_read'] as bool),
      id: json['id'] == null ? null : (json['id'] as int),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'from_customer_id': from_customer_id,
      'customer_from_name': customer_from_name,
      'allow_viewing_from_profile': allow_viewing_from_profile,
      'to_customer_id': to_customer_id,
      'customer_to_name': customer_to_name,
      'allow_viewing_to_profile': allow_viewing_to_profile,
      'subject': subject,
      'message': message,
      'created_on': created_on,
      'is_read': is_read,
      'id': id,
      'custom_properties': custom_properties,
    };
  }

  ViewPMGetResponse copyWith({
    int? from_customer_id,
    String? customer_from_name,
    bool? allow_viewing_from_profile,
    int? to_customer_id,
    String? customer_to_name,
    bool? allow_viewing_to_profile,
    String? subject,
    String? message,
    String? created_on,
    bool? is_read,
    int? id,
    Map<String, dynamic>? custom_properties,
  }) {
    return ViewPMGetResponse(
      from_customer_id: from_customer_id ?? this.from_customer_id,
      customer_from_name: customer_from_name ?? this.customer_from_name,
      allow_viewing_from_profile:
          allow_viewing_from_profile ?? this.allow_viewing_from_profile,
      to_customer_id: to_customer_id ?? this.to_customer_id,
      customer_to_name: customer_to_name ?? this.customer_to_name,
      allow_viewing_to_profile:
          allow_viewing_to_profile ?? this.allow_viewing_to_profile,
      subject: subject ?? this.subject,
      message: message ?? this.message,
      created_on: created_on ?? this.created_on,
      is_read: is_read ?? this.is_read,
      id: id ?? this.id,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      from_customer_id,
      customer_from_name,
      allow_viewing_from_profile,
      to_customer_id,
      customer_to_name,
      allow_viewing_to_profile,
      subject,
      message,
      created_on,
      is_read,
      id,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
