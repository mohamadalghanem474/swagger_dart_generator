import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class DeleteEditAddressDeleteRequest extends Equatable {
  const DeleteEditAddressDeleteRequest({
    this.opc,
    this.addressid,
  });

  final bool? opc;

  final int? addressid;

  static DeleteEditAddressDeleteRequest fromJson(Map<String, dynamic> json) {
    return DeleteEditAddressDeleteRequest(
      opc: json['opc'] == null ? null : (json['opc'] as bool),
      addressid: json['addressid'] == null ? null : (json['addressid'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'opc': opc,
      'addressid': addressid,
    };
  }

  DeleteEditAddressDeleteRequest copyWith({
    bool? opc,
    int? addressid,
  }) {
    return DeleteEditAddressDeleteRequest(
      opc: opc ?? this.opc,
      addressid: addressid ?? this.addressid,
    );
  }

  @override
  List<Object?> get props {
    return [
      opc,
      addressid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
