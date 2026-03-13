import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SelectBillingAddressGetRequest extends Equatable {
  const SelectBillingAddressGetRequest({
    this.shiptosameaddress,
    this.addressid,
  });

  final bool? shiptosameaddress;

  final int? addressid;

  static SelectBillingAddressGetRequest fromJson(Map<String, dynamic> json) {
    return SelectBillingAddressGetRequest(
      shiptosameaddress: json['shiptosameaddress'] == null
          ? null
          : (json['shiptosameaddress'] as bool),
      addressid: json['addressid'] == null ? null : (json['addressid'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'shiptosameaddress': shiptosameaddress,
      'addressid': addressid,
    };
  }

  SelectBillingAddressGetRequest copyWith({
    bool? shiptosameaddress,
    int? addressid,
  }) {
    return SelectBillingAddressGetRequest(
      shiptosameaddress: shiptosameaddress ?? this.shiptosameaddress,
      addressid: addressid ?? this.addressid,
    );
  }

  @override
  List<Object?> get props {
    return [
      shiptosameaddress,
      addressid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
