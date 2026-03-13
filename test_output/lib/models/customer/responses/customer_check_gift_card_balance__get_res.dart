import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CheckGiftCardBalanceGetResponse extends Equatable {
  const CheckGiftCardBalanceGetResponse({
    this.result,
    this.message,
    this.gift_card_code,
    this.custom_properties,
  });

  final String? result;

  final String? message;

  final String? gift_card_code;

  final Map<String, dynamic>? custom_properties;

  static CheckGiftCardBalanceGetResponse fromJson(Map<String, dynamic> json) {
    return CheckGiftCardBalanceGetResponse(
      result: json['result'] == null ? null : (json['result'] as String),
      message: json['message'] == null ? null : (json['message'] as String),
      gift_card_code: json['gift_card_code'] == null
          ? null
          : (json['gift_card_code'] as String),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'result': result,
      'message': message,
      'gift_card_code': gift_card_code,
      'custom_properties': custom_properties,
    };
  }

  CheckGiftCardBalanceGetResponse copyWith({
    String? result,
    String? message,
    String? gift_card_code,
    Map<String, dynamic>? custom_properties,
  }) {
    return CheckGiftCardBalanceGetResponse(
      result: result ?? this.result,
      message: message ?? this.message,
      gift_card_code: gift_card_code ?? this.gift_card_code,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      result,
      message,
      gift_card_code,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
