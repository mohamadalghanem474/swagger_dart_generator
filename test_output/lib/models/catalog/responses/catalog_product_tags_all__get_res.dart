import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ProductTagsAllGetResponse extends Equatable {
  const ProductTagsAllGetResponse({
    this.total_tags,
    this.tags,
    this.custom_properties,
  });

  final int? total_tags;

  final List<String>? tags;

  final Map<String, dynamic>? custom_properties;

  static ProductTagsAllGetResponse fromJson(Map<String, dynamic> json) {
    return ProductTagsAllGetResponse(
      total_tags:
          json['total_tags'] == null ? null : (json['total_tags'] as int),
      tags: json['tags'] == null ? null : json['tags'],
      custom_properties: json['custom_properties'] == null
          ? null
          : (json['custom_properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'total_tags': total_tags,
      'tags': tags,
      'custom_properties': custom_properties,
    };
  }

  ProductTagsAllGetResponse copyWith({
    int? total_tags,
    List<String>? tags,
    Map<String, dynamic>? custom_properties,
  }) {
    return ProductTagsAllGetResponse(
      total_tags: total_tags ?? this.total_tags,
      tags: tags ?? this.tags,
      custom_properties: custom_properties ?? this.custom_properties,
    );
  }

  @override
  List<Object?> get props {
    return [
      total_tags,
      tags,
      custom_properties,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
