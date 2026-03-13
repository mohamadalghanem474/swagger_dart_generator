import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class UserAgreementGetResponse extends Equatable {
  const UserAgreementGetResponse({
    this.order_item_guid,
    this.user_agreement_text,
    this.custom_properties,
  });

  final String? order_item_guid;

  final String? user_agreement_text;

  final Map<String, dynamic>? custom_properties;

  static UserAgreementGetResponse fromJson(Map<String, dynamic> json) {
    return UserAgreementGetResponse(
      order_item_guid: json['order_item_guid'] == null
          ? null
          : (json['order_item_guid'] as String),
      user_agreement_text: json['user_agreement_text'] == null
          ? null
          : (json['user_agreement_text'] as String),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'order_item_guid': order_item_guid,
      'user_agreement_text': user_agreement_text,
      'custom_properties': custom_properties,
    };
  }

  UserAgreementGetResponse copyWith({
    String? order_item_guid,
    String? user_agreement_text,
    Map<String, dynamic>? custom_properties,
  }) {
    return UserAgreementGetResponse(
      order_item_guid: order_item_guid ?? this.order_item_guid,
      user_agreement_text: user_agreement_text ?? this.user_agreement_text,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      order_item_guid,
      user_agreement_text,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
