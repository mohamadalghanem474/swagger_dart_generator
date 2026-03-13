import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetVendorAvailableWalletsGetRequest extends Equatable {
  const GetVendorAvailableWalletsGetRequest({this.vendorid});

  final int? vendorid;

  static GetVendorAvailableWalletsGetRequest fromJson(
      Map<String, dynamic> json) {
    return GetVendorAvailableWalletsGetRequest(
        vendorid: json['vendorid'] == null ? null : (json['vendorid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'vendorid': vendorid};
  }

  GetVendorAvailableWalletsGetRequest copyWith({int? vendorid}) {
    return GetVendorAvailableWalletsGetRequest(
        vendorid: vendorid ?? this.vendorid);
  }

  @override
  List<Object?> get props {
    return [vendorid];
  }

  @override
  bool get stringify {
    return true;
  }
}
