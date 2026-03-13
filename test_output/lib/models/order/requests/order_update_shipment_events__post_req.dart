import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class UpdateShipmentEventsPostRequest extends Equatable {
  const UpdateShipmentEventsPostRequest({
    this.ShipmentRef,
    this.StatusCode,
    this.Note,
    this.Location,
    this.EventDateTime,
  });

  final String? ShipmentRef;

  final String? StatusCode;

  final String? Note;

  final String? Location;

  final DateTime? EventDateTime;

  static UpdateShipmentEventsPostRequest fromJson(Map<String, dynamic> json) {
    return UpdateShipmentEventsPostRequest(
      ShipmentRef:
          json['ShipmentRef'] == null ? null : (json['ShipmentRef'] as String),
      StatusCode:
          json['StatusCode'] == null ? null : (json['StatusCode'] as String),
      Note: json['Note'] == null ? null : (json['Note'] as String),
      Location: json['Location'] == null ? null : (json['Location'] as String),
      EventDateTime: json['EventDateTime'] == null
          ? null
          : DateTime.parse((json['EventDateTime'] as String)),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'ShipmentRef': ShipmentRef,
      'StatusCode': StatusCode,
      'Note': Note,
      'Location': Location,
      'EventDateTime': EventDateTime?.toIso8601String(),
    };
  }

  UpdateShipmentEventsPostRequest copyWith({
    String? ShipmentRef,
    String? StatusCode,
    String? Note,
    String? Location,
    DateTime? EventDateTime,
  }) {
    return UpdateShipmentEventsPostRequest(
      ShipmentRef: ShipmentRef ?? this.ShipmentRef,
      StatusCode: StatusCode ?? this.StatusCode,
      Note: Note ?? this.Note,
      Location: Location ?? this.Location,
      EventDateTime: EventDateTime ?? this.EventDateTime,
    );
  }

  @override
  List<Object?> get props {
    return [
      ShipmentRef,
      StatusCode,
      Note,
      Location,
      EventDateTime,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
