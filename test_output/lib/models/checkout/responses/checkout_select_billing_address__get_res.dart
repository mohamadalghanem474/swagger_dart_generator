import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SelectBillingAddressGetResponse extends Equatable {
  const SelectBillingAddressGetResponse({
    this.redirect_to_method,
    this.id,
  });

  final String? redirect_to_method;

  final int? id;

  static SelectBillingAddressGetResponse fromJson(Map<String, dynamic> json) {
    return SelectBillingAddressGetResponse(
      redirect_to_method: json['redirect_to_method'] == null
          ? null
          : (json['redirect_to_method'] as String),
      id: json['id'] == null ? null : (json['id'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'redirect_to_method': redirect_to_method,
      'id': id,
    };
  }

  SelectBillingAddressGetResponse copyWith({
    String? redirect_to_method,
    int? id,
  }) {
    return SelectBillingAddressGetResponse(
      redirect_to_method: redirect_to_method ?? this.redirect_to_method,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props {
    return [
      redirect_to_method,
      id,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
