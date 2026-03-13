import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ContactVendorGetRequest extends Equatable {
  const ContactVendorGetRequest({this.vendorid});

  final int? vendorid;

  static ContactVendorGetRequest fromJson(Map<String, dynamic> json) {
    return ContactVendorGetRequest(
        vendorid: json['vendorid'] == null ? null : (json['vendorid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'vendorid': vendorid};
  }

  ContactVendorGetRequest copyWith({int? vendorid}) {
    return ContactVendorGetRequest(vendorid: vendorid ?? this.vendorid);
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
