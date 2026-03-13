import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class AddressDeleteDeleteRequest extends Equatable {
  const AddressDeleteDeleteRequest({this.addressid});

  final int? addressid;

  static AddressDeleteDeleteRequest fromJson(Map<String, dynamic> json) {
    return AddressDeleteDeleteRequest(
        addressid:
            json['addressid'] == null ? null : (json['addressid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'addressid': addressid};
  }

  AddressDeleteDeleteRequest copyWith({int? addressid}) {
    return AddressDeleteDeleteRequest(addressid: addressid ?? this.addressid);
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
