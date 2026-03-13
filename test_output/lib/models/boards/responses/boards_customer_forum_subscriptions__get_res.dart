import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CustomerForumSubscriptionsGetResponse extends Equatable {
  const CustomerForumSubscriptionsGetResponse({
    this.forum_subscriptions,
    this.pager_model,
    this.custom_properties,
  });

  final List<String>? forum_subscriptions;

  final String? pager_model;

  final Map<String, dynamic>? custom_properties;

  static CustomerForumSubscriptionsGetResponse fromJson(
      Map<String, dynamic> json) {
    return CustomerForumSubscriptionsGetResponse(
      forum_subscriptions: json['forum_subscriptions'] == null
          ? null
          : json['forum_subscriptions'],
      pager_model:
          json['pager_model'] == null ? null : (json['pager_model'] as String),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'forum_subscriptions': forum_subscriptions,
      'pager_model': pager_model,
      'custom_properties': custom_properties,
    };
  }

  CustomerForumSubscriptionsGetResponse copyWith({
    List<String>? forum_subscriptions,
    String? pager_model,
    Map<String, dynamic>? custom_properties,
  }) {
    return CustomerForumSubscriptionsGetResponse(
      forum_subscriptions: forum_subscriptions ?? this.forum_subscriptions,
      pager_model: pager_model ?? this.pager_model,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      forum_subscriptions,
      pager_model,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
