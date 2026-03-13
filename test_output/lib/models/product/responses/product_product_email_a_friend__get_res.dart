import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ProductEmailAFriendGetResponse extends Equatable {
  const ProductEmailAFriendGetResponse({
    this.product_id,
    this.product_name,
    this.product_se_name,
    this.friend_email,
    this.your_email_address,
    this.personal_message,
    this.successfully_sent,
    this.result,
    this.display_captcha,
    this.custom_properties,
  });

  final int? product_id;

  final String? product_name;

  final String? product_se_name;

  final String? friend_email;

  final String? your_email_address;

  final String? personal_message;

  final bool? successfully_sent;

  final String? result;

  final bool? display_captcha;

  final Map<String, dynamic>? custom_properties;

  static ProductEmailAFriendGetResponse fromJson(Map<String, dynamic> json) {
    return ProductEmailAFriendGetResponse(
      product_id:
          json['product_id'] == null ? null : (json['product_id'] as int),
      product_name: json['product_name'] == null
          ? null
          : (json['product_name'] as String),
      product_se_name: json['product_se_name'] == null
          ? null
          : (json['product_se_name'] as String),
      friend_email: json['friend_email'] == null
          ? null
          : (json['friend_email'] as String),
      your_email_address: json['your_email_address'] == null
          ? null
          : (json['your_email_address'] as String),
      personal_message: json['personal_message'] == null
          ? null
          : (json['personal_message'] as String),
      successfully_sent: json['successfully_sent'] == null
          ? null
          : (json['successfully_sent'] as bool),
      result: json['result'] == null ? null : (json['result'] as String),
      display_captcha: json['display_captcha'] == null
          ? null
          : (json['display_captcha'] as bool),
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
      'friend_email': friend_email,
      'your_email_address': your_email_address,
      'personal_message': personal_message,
      'successfully_sent': successfully_sent,
      'result': result,
      'display_captcha': display_captcha,
      'custom_properties': custom_properties,
    };
  }

  ProductEmailAFriendGetResponse copyWith({
    int? product_id,
    String? product_name,
    String? product_se_name,
    String? friend_email,
    String? your_email_address,
    String? personal_message,
    bool? successfully_sent,
    String? result,
    bool? display_captcha,
    Map<String, dynamic>? custom_properties,
  }) {
    return ProductEmailAFriendGetResponse(
      product_id: product_id ?? this.product_id,
      product_name: product_name ?? this.product_name,
      product_se_name: product_se_name ?? this.product_se_name,
      friend_email: friend_email ?? this.friend_email,
      your_email_address: your_email_address ?? this.your_email_address,
      personal_message: personal_message ?? this.personal_message,
      successfully_sent: successfully_sent ?? this.successfully_sent,
      result: result ?? this.result,
      display_captcha: display_captcha ?? this.display_captcha,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      product_id,
      product_name,
      product_se_name,
      friend_email,
      your_email_address,
      personal_message,
      successfully_sent,
      result,
      display_captcha,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
