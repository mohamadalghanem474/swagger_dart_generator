import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class AddVendorDisabledPostRequest extends Equatable {
  const AddVendorDisabledPostRequest({
    this.carrierid,
    this.userid,
    this.isdomestic,
  });

  final int? carrierid;

  final int? userid;

  final bool? isdomestic;

  static AddVendorDisabledPostRequest fromJson(Map<String, dynamic> json) {
    return AddVendorDisabledPostRequest(
      carrierid: json['carrierid'] == null ? null : (json['carrierid'] as int),
      userid: json['userid'] == null ? null : (json['userid'] as int),
      isdomestic:
          json['isdomestic'] == null ? null : (json['isdomestic'] as bool),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'carrierid': carrierid,
      'userid': userid,
      'isdomestic': isdomestic,
    };
  }

  AddVendorDisabledPostRequest copyWith({
    int? carrierid,
    int? userid,
    bool? isdomestic,
  }) {
    return AddVendorDisabledPostRequest(
      carrierid: carrierid ?? this.carrierid,
      userid: userid ?? this.userid,
      isdomestic: isdomestic ?? this.isdomestic,
    );
  }

  @override
  List<Object?> get props {
    return [
      carrierid,
      userid,
      isdomestic,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
