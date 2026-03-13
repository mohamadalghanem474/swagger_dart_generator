import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetAddressByIdGetRequest extends Equatable {
  const GetAddressByIdGetRequest({this.addressid});

  final int? addressid;

  static GetAddressByIdGetRequest fromJson(Map<String, dynamic> json) {
    return GetAddressByIdGetRequest(
        addressid:
            json['addressid'] == null ? null : (json['addressid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'addressid': addressid};
  }

  GetAddressByIdGetRequest copyWith({int? addressid}) {
    return GetAddressByIdGetRequest(addressid: addressid ?? this.addressid);
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
