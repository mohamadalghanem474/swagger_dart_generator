import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class UpdateShipaShipmentEventsPostRequest extends Equatable {
  const UpdateShipaShipmentEventsPostRequest({
    this.date,
    this.event,
    this.status,
    this.shipaRef,
    this.customerRef,
    this.storyStatusId,
    this.cancelReasonId,
    this.storyStatusText,
    this.cancelReasonText,
  });

  final DateTime? date;

  final String? event;

  final String? status;

  final String? shipaRef;

  final String? customerRef;

  final String? storyStatusId;

  final String? cancelReasonId;

  final String? storyStatusText;

  final String? cancelReasonText;

  static UpdateShipaShipmentEventsPostRequest fromJson(
      Map<String, dynamic> json) {
    return UpdateShipaShipmentEventsPostRequest(
      date: json['date'] == null
          ? null
          : DateTime.parse((json['date'] as String)),
      event: json['event'] == null ? null : (json['event'] as String),
      status: json['status'] == null ? null : (json['status'] as String),
      shipaRef: json['shipaRef'] == null ? null : (json['shipaRef'] as String),
      customerRef:
          json['customerRef'] == null ? null : (json['customerRef'] as String),
      storyStatusId: json['storyStatusId'] == null
          ? null
          : (json['storyStatusId'] as String),
      cancelReasonId: json['cancelReasonId'] == null
          ? null
          : (json['cancelReasonId'] as String),
      storyStatusText: json['storyStatusText'] == null
          ? null
          : (json['storyStatusText'] as String),
      cancelReasonText: json['cancelReasonText'] == null
          ? null
          : (json['cancelReasonText'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'date': date?.toIso8601String(),
      'event': event,
      'status': status,
      'shipaRef': shipaRef,
      'customerRef': customerRef,
      'storyStatusId': storyStatusId,
      'cancelReasonId': cancelReasonId,
      'storyStatusText': storyStatusText,
      'cancelReasonText': cancelReasonText,
    };
  }

  UpdateShipaShipmentEventsPostRequest copyWith({
    DateTime? date,
    String? event,
    String? status,
    String? shipaRef,
    String? customerRef,
    String? storyStatusId,
    String? cancelReasonId,
    String? storyStatusText,
    String? cancelReasonText,
  }) {
    return UpdateShipaShipmentEventsPostRequest(
      date: date ?? this.date,
      event: event ?? this.event,
      status: status ?? this.status,
      shipaRef: shipaRef ?? this.shipaRef,
      customerRef: customerRef ?? this.customerRef,
      storyStatusId: storyStatusId ?? this.storyStatusId,
      cancelReasonId: cancelReasonId ?? this.cancelReasonId,
      storyStatusText: storyStatusText ?? this.storyStatusText,
      cancelReasonText: cancelReasonText ?? this.cancelReasonText,
    );
  }

  @override
  List<Object?> get props {
    return [
      date,
      event,
      status,
      shipaRef,
      customerRef,
      storyStatusId,
      cancelReasonId,
      storyStatusText,
      cancelReasonText,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
