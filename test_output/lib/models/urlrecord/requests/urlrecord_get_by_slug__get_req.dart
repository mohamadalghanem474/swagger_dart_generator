import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetBySlugGetRequest extends Equatable {
  const GetBySlugGetRequest({this.slug});

  final String? slug;

  static GetBySlugGetRequest fromJson(Map<String, dynamic> json) {
    return GetBySlugGetRequest(
        slug: json['slug'] == null ? null : (json['slug'] as String));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'slug': slug};
  }

  GetBySlugGetRequest copyWith({String? slug}) {
    return GetBySlugGetRequest(slug: slug ?? this.slug);
  }

  @override
  List<Object?> get props {
    return [slug];
  }

  @override
  bool get stringify {
    return true;
  }
}
