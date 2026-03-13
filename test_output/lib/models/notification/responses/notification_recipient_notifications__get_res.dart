import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class RecipientNotificationsGetResponse extends Equatable {
  const RecipientNotificationsGetResponse({
    this.notifications,
    this.custom_properties,
  });

  final List<String>? notifications;

  final Map<String, dynamic>? custom_properties;

  static RecipientNotificationsGetResponse fromJson(Map<String, dynamic> json) {
    return RecipientNotificationsGetResponse(
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

  RecipientNotificationsGetResponse copyWith({
    List<String>? notifications,
    Map<String, dynamic>? custom_properties,
  }) {
    return RecipientNotificationsGetResponse(
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
