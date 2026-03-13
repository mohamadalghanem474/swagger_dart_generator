import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SettlmentOrdersPostRequest extends Equatable {
  const SettlmentOrdersPostRequest({
    this.OrderIds,
    this.SettledTimeStamp,
  });

  final List<int>? OrderIds;

  final DateTime? SettledTimeStamp;

  static SettlmentOrdersPostRequest fromJson(Map<String, dynamic> json) {
    return SettlmentOrdersPostRequest(
      OrderIds: json['OrderIds'] == null ? null : json['OrderIds'],
      SettledTimeStamp: json['SettledTimeStamp'] == null
          ? null
          : DateTime.parse((json['SettledTimeStamp'] as String)),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'OrderIds': OrderIds,
      'SettledTimeStamp': SettledTimeStamp?.toIso8601String(),
    };
  }

  SettlmentOrdersPostRequest copyWith({
    List<int>? OrderIds,
    DateTime? SettledTimeStamp,
  }) {
    return SettlmentOrdersPostRequest(
      OrderIds: OrderIds ?? this.OrderIds,
      SettledTimeStamp: SettledTimeStamp ?? this.SettledTimeStamp,
    );
  }

  @override
  List<Object?> get props {
    return [
      OrderIds,
      SettledTimeStamp,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
