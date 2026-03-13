import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SendPMPostRequest extends Equatable {
  const SendPMPostRequest({
    this.to_customer_id,
    this.customer_to_name,
    this.allow_viewing_to_profile,
    this.reply_to_message_id,
    this.subject,
    this.message,
    this.id,
    this.custom_properties,
  });

  final int? to_customer_id;

  final String? customer_to_name;

  final bool? allow_viewing_to_profile;

  final int? reply_to_message_id;

  final String? subject;

  final String? message;

  final int? id;

  final Map<String, dynamic>? custom_properties;

  static SendPMPostRequest fromJson(Map<String, dynamic> json) {
    return SendPMPostRequest(
      to_customer_id: json['to_customer_id'] == null
          ? null
          : (json['to_customer_id'] as int),
      customer_to_name: json['customer_to_name'] == null
          ? null
          : (json['customer_to_name'] as String),
      allow_viewing_to_profile: json['allow_viewing_to_profile'] == null
          ? null
          : (json['allow_viewing_to_profile'] as bool),
      reply_to_message_id: json['reply_to_message_id'] == null
          ? null
          : (json['reply_to_message_id'] as int),
      subject: json['subject'] == null ? null : (json['subject'] as String),
      message: json['message'] == null ? null : (json['message'] as String),
      id: json['id'] == null ? null : (json['id'] as int),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'to_customer_id': to_customer_id,
      'customer_to_name': customer_to_name,
      'allow_viewing_to_profile': allow_viewing_to_profile,
      'reply_to_message_id': reply_to_message_id,
      'subject': subject,
      'message': message,
      'id': id,
      'custom_properties': custom_properties,
    };
  }

  SendPMPostRequest copyWith({
    int? to_customer_id,
    String? customer_to_name,
    bool? allow_viewing_to_profile,
    int? reply_to_message_id,
    String? subject,
    String? message,
    int? id,
    Map<String, dynamic>? custom_properties,
  }) {
    return SendPMPostRequest(
      to_customer_id: to_customer_id ?? this.to_customer_id,
      customer_to_name: customer_to_name ?? this.customer_to_name,
      allow_viewing_to_profile:
          allow_viewing_to_profile ?? this.allow_viewing_to_profile,
      reply_to_message_id: reply_to_message_id ?? this.reply_to_message_id,
      subject: subject ?? this.subject,
      message: message ?? this.message,
      id: id ?? this.id,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      to_customer_id,
      customer_to_name,
      allow_viewing_to_profile,
      reply_to_message_id,
      subject,
      message,
      id,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
