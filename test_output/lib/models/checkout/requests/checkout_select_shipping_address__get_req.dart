import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SelectShippingAddressGetRequest extends Equatable {
  const SelectShippingAddressGetRequest({this.addressid});

  final int? addressid;

  static SelectShippingAddressGetRequest fromJson(Map<String, dynamic> json) {
    return SelectShippingAddressGetRequest(
        addressid:
            json['addressid'] == null ? null : (json['addressid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'addressid': addressid};
  }

  SelectShippingAddressGetRequest copyWith({int? addressid}) {
    return SelectShippingAddressGetRequest(
        addressid: addressid ?? this.addressid);
  }

  @override
  List<Object?> get props {
    return [addressid];
  }

  @override
  bool get stringify {
    return true;
  }
}
