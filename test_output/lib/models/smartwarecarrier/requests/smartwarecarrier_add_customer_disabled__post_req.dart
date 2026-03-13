import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class AddCustomerDisabledPostRequest extends Equatable {
  const AddCustomerDisabledPostRequest({
    this.carrierid,
    this.userid,
  });

  final int? carrierid;

  final int? userid;

  static AddCustomerDisabledPostRequest fromJson(Map<String, dynamic> json) {
    return AddCustomerDisabledPostRequest(
      carrierid: json['carrierid'] == null ? null : (json['carrierid'] as int),
      userid: json['userid'] == null ? null : (json['userid'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'carrierid': carrierid,
      'userid': userid,
    };
  }

  AddCustomerDisabledPostRequest copyWith({
    int? carrierid,
    int? userid,
  }) {
    return AddCustomerDisabledPostRequest(
      carrierid: carrierid ?? this.carrierid,
      userid: userid ?? this.userid,
    );
  }

  @override
  List<Object?> get props {
    return [
      carrierid,
      userid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
