import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SitemapPostResponse extends Equatable {
  const SitemapPostResponse({
    this.items,
    this.page_model,
    this.custom_properties,
  });

  final List<String>? items;

  final String? page_model;

  final Map<String, dynamic>? custom_properties;

  static SitemapPostResponse fromJson(Map<String, dynamic> json) {
    return SitemapPostResponse(
      items: json['items'] == null ? null : json['items'],
      page_model:
          json['page_model'] == null ? null : (json['page_model'] as String),
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'items': items,
      'page_model': page_model,
      'custom_properties': custom_properties,
    };
  }

  SitemapPostResponse copyWith({
    List<String>? items,
    String? page_model,
    Map<String, dynamic>? custom_properties,
  }) {
    return SitemapPostResponse(
      items: items ?? this.items,
      page_model: page_model ?? this.page_model,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      items,
      page_model,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
