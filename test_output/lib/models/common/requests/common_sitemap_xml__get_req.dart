import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SitemapXmlGetRequest extends Equatable {
  const SitemapXmlGetRequest({this.id});

  final int? id;

  static SitemapXmlGetRequest fromJson(Map<String, dynamic> json) {
    return SitemapXmlGetRequest(
        id: json['id'] == null ? null : (json['id'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'id': id};
  }

  SitemapXmlGetRequest copyWith({int? id}) {
    return SitemapXmlGetRequest(id: id ?? this.id);
  }

  @override
  List<Object?> get props {
    return [id];
  }

  @override
  bool get stringify {
    return true;
  }
}
