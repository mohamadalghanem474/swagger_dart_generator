import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class AddressEditGetRequest extends Equatable {
  const AddressEditGetRequest({this.addressid});

  final int? addressid;

  static AddressEditGetRequest fromJson(Map<String, dynamic> json) {
    return AddressEditGetRequest(
        addressid:
            json['addressid'] == null ? null : (json['addressid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'addressid': addressid};
  }

  AddressEditGetRequest copyWith({int? addressid}) {
    return AddressEditGetRequest(addressid: addressid ?? this.addressid);
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
