import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SitemapXmlGetResponse extends Equatable {
  const SitemapXmlGetResponse({
    this.site_map_xml,
    this.mime_type,
  });

  final String? site_map_xml;

  final String? mime_type;

  static SitemapXmlGetResponse fromJson(Map<String, dynamic> json) {
    return SitemapXmlGetResponse(
      site_map_xml: json['site_map_xml'] == null
          ? null
          : (json['site_map_xml'] as String),
      mime_type:
          json['mime_type'] == null ? null : (json['mime_type'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'site_map_xml': site_map_xml,
      'mime_type': mime_type,
    };
  }

  SitemapXmlGetResponse copyWith({
    String? site_map_xml,
    String? mime_type,
  }) {
    return SitemapXmlGetResponse(
      site_map_xml: site_map_xml ?? this.site_map_xml,
      mime_type: mime_type ?? this.mime_type,
    );
  }

  @override
  List<Object?> get props {
    return [
      site_map_xml,
      mime_type,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
