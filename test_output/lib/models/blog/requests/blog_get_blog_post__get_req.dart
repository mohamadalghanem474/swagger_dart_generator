import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetBlogPostGetRequest extends Equatable {
  const GetBlogPostGetRequest({this.blogpostid});

  final int? blogpostid;

  static GetBlogPostGetRequest fromJson(Map<String, dynamic> json) {
    return GetBlogPostGetRequest(
        blogpostid:
            json['blogpostid'] == null ? null : (json['blogpostid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'blogpostid': blogpostid};
  }

  GetBlogPostGetRequest copyWith({int? blogpostid}) {
    return GetBlogPostGetRequest(blogpostid: blogpostid ?? this.blogpostid);
  }

  @override
  List<Object?> get props {
    return [blogpostid];
  }

  @override
  bool get stringify {
    return true;
  }
}
