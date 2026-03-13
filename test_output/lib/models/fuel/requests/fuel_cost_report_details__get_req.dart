import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CostReportDetailsGetRequest extends Equatable {
  const CostReportDetailsGetRequest({
    this.id,
    this.costtype,
  });

  final int? id;

  final String? costtype;

  static CostReportDetailsGetRequest fromJson(Map<String, dynamic> json) {
    return CostReportDetailsGetRequest(
      id: json['id'] == null ? null : (json['id'] as int),
      costtype: json['costtype'] == null ? null : (json['costtype'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'costtype': costtype,
    };
  }

  CostReportDetailsGetRequest copyWith({
    int? id,
    String? costtype,
  }) {
    return CostReportDetailsGetRequest(
      id: id ?? this.id,
      costtype: costtype ?? this.costtype,
    );
  }

  @override
  List<Object?> get props {
    return [
      id,
      costtype,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
