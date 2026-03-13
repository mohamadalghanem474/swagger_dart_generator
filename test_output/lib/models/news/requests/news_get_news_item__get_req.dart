import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetNewsItemGetRequest extends Equatable {
  const GetNewsItemGetRequest({this.newsitemid});

  final int? newsitemid;

  static GetNewsItemGetRequest fromJson(Map<String, dynamic> json) {
    return GetNewsItemGetRequest(
        newsitemid:
            json['newsitemid'] == null ? null : (json['newsitemid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'newsitemid': newsitemid};
  }

  GetNewsItemGetRequest copyWith({int? newsitemid}) {
    return GetNewsItemGetRequest(newsitemid: newsitemid ?? this.newsitemid);
  }

  @override
  List<Object?> get props {
    return [newsitemid];
  }

  @override
  bool get stringify {
    return true;
  }
}
