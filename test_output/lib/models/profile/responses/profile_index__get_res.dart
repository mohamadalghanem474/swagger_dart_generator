import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class IndexGetResponse extends Equatable {
  const IndexGetResponse({
    this.customer_profile_id,
    this.profile_title,
    this.posts_page,
    this.paging_posts,
    this.forums_enabled,
    this.custom_properties,
  });

  final int? customer_profile_id;

  final String? profile_title;

  final int? posts_page;

  final bool? paging_posts;

  final bool? forums_enabled;

  final Map<String, dynamic>? custom_properties;

  static IndexGetResponse fromJson(Map<String, dynamic> json) {
    return IndexGetResponse(
      customer_profile_id: json['customer_profile_id'] == null
          ? null
          : (json['customer_profile_id'] as int),
      profile_title: json['profile_title'] == null
          ? null
          : (json['profile_title'] as String),
      posts_page:
          json['posts_page'] == null ? null : (json['posts_page'] as int),
      paging_posts:
          json['paging_posts'] == null ? null : (json['paging_posts'] as bool),
      forums_enabled: json['forums_enabled'] == null
          ? null
          : (json['forums_enabled'] as bool),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'customer_profile_id': customer_profile_id,
      'profile_title': profile_title,
      'posts_page': posts_page,
      'paging_posts': paging_posts,
      'forums_enabled': forums_enabled,
      'custom_properties': custom_properties,
    };
  }

  IndexGetResponse copyWith({
    int? customer_profile_id,
    String? profile_title,
    int? posts_page,
    bool? paging_posts,
    bool? forums_enabled,
    Map<String, dynamic>? custom_properties,
  }) {
    return IndexGetResponse(
      customer_profile_id: customer_profile_id ?? this.customer_profile_id,
      profile_title: profile_title ?? this.profile_title,
      posts_page: posts_page ?? this.posts_page,
      paging_posts: paging_posts ?? this.paging_posts,
      forums_enabled: forums_enabled ?? this.forums_enabled,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      customer_profile_id,
      profile_title,
      posts_page,
      paging_posts,
      forums_enabled,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
