import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class BusinessCreatePostRequest extends Equatable {
  const BusinessCreatePostRequest({
    this.order_id,
    this.amount,
    this.type_id,
    this.creation_time,
    this.id,
  });

  final int? order_id;

  final double? amount;

  final String? type_id;

  final DateTime? creation_time;

  final int? id;

  static BusinessCreatePostRequest fromJson(Map<String, dynamic> json) {
    return BusinessCreatePostRequest(
      order_id: json['order_id'] == null ? null : (json['order_id'] as int),
      amount: json['amount'] == null ? null : (json['amount'] as double),
      type_id: json['type_id'] == null ? null : (json['type_id'] as String),
      creation_time: json['creation_time'] == null
          ? null
          : DateTime.parse((json['creation_time'] as String)),
      id: json['id'] == null ? null : (json['id'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'order_id': order_id,
      'amount': amount,
      'type_id': type_id,
      'creation_time': creation_time?.toIso8601String(),
      'id': id,
    };
  }

  BusinessCreatePostRequest copyWith({
    int? order_id,
    double? amount,
    String? type_id,
    DateTime? creation_time,
    int? id,
  }) {
    return BusinessCreatePostRequest(
      order_id: order_id ?? this.order_id,
      amount: amount ?? this.amount,
      type_id: type_id ?? this.type_id,
      creation_time: creation_time ?? this.creation_time,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props {
    return [
      order_id,
      amount,
      type_id,
      creation_time,
      id,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
