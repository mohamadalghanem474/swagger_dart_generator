import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SettlmentPostRequest extends Equatable {
  const SettlmentPostRequest({
    this.OrderId,
    this.SettledTimeStamp,
  });

  final int? OrderId;

  final DateTime? SettledTimeStamp;

  static SettlmentPostRequest fromJson(Map<String, dynamic> json) {
    return SettlmentPostRequest(
      OrderId: json['OrderId'] == null ? null : (json['OrderId'] as int),
      SettledTimeStamp: json['SettledTimeStamp'] == null
          ? null
          : DateTime.parse((json['SettledTimeStamp'] as String)),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'OrderId': OrderId,
      'SettledTimeStamp': SettledTimeStamp?.toIso8601String(),
    };
  }

  SettlmentPostRequest copyWith({
    int? OrderId,
    DateTime? SettledTimeStamp,
  }) {
    return SettlmentPostRequest(
      OrderId: OrderId ?? this.OrderId,
      SettledTimeStamp: SettledTimeStamp ?? this.SettledTimeStamp,
    );
  }

  @override
  List<Object?> get props {
    return [
      OrderId,
      SettledTimeStamp,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
