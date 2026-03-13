import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ResetErpEntityStatusPostRequest extends Equatable {
  const ResetErpEntityStatusPostRequest({
    this.erpentryid,
    this.isreceived,
  });

  final int? erpentryid;

  final bool? isreceived;

  static ResetErpEntityStatusPostRequest fromJson(Map<String, dynamic> json) {
    return ResetErpEntityStatusPostRequest(
      erpentryid:
          json['erpentryid'] == null ? null : (json['erpentryid'] as int),
      isreceived:
          json['isreceived'] == null ? null : (json['isreceived'] as bool),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'erpentryid': erpentryid,
      'isreceived': isreceived,
    };
  }

  ResetErpEntityStatusPostRequest copyWith({
    int? erpentryid,
    bool? isreceived,
  }) {
    return ResetErpEntityStatusPostRequest(
      erpentryid: erpentryid ?? this.erpentryid,
      isreceived: isreceived ?? this.isreceived,
    );
  }

  @override
  List<Object?> get props {
    return [
      erpentryid,
      isreceived,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
