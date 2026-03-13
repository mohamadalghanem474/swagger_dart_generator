import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class NotificationListGetResponse extends Equatable {
  const NotificationListGetResponse({
    this.notifications,
    this.custom_properties,
  });

  final List<String>? notifications;

  final Map<String, dynamic>? custom_properties;

  static NotificationListGetResponse fromJson(Map<String, dynamic> json) {
    return NotificationListGetResponse(
      notifications:
          json['notifications'] == null ? null : json['notifications'],
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'notifications': notifications,
      'custom_properties': custom_properties,
    };
  }

  NotificationListGetResponse copyWith({
    List<String>? notifications,
    Map<String, dynamic>? custom_properties,
  }) {
    return NotificationListGetResponse(
      notifications: notifications ?? this.notifications,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      notifications,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
