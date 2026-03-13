import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SetDefaultAddressGetRequest extends Equatable {
  const SetDefaultAddressGetRequest({this.addressid});

  final int? addressid;

  static SetDefaultAddressGetRequest fromJson(Map<String, dynamic> json) {
    return SetDefaultAddressGetRequest(
        addressid:
            json['addressid'] == null ? null : (json['addressid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'addressid': addressid};
  }

  SetDefaultAddressGetRequest copyWith({int? addressid}) {
    return SetDefaultAddressGetRequest(addressid: addressid ?? this.addressid);
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
