import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ActiveDiscussionsRssGetRequest extends Equatable {
  const ActiveDiscussionsRssGetRequest({this.forumid});

  final int? forumid;

  static ActiveDiscussionsRssGetRequest fromJson(Map<String, dynamic> json) {
    return ActiveDiscussionsRssGetRequest(
        forumid: json['forumid'] == null ? null : (json['forumid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'forumid': forumid};
  }

  ActiveDiscussionsRssGetRequest copyWith({int? forumid}) {
    return ActiveDiscussionsRssGetRequest(forumid: forumid ?? this.forumid);
  }

  @override
  List<Object?> get props {
    return [forumid];
  }

  @override
  bool get stringify {
    return true;
  }
}
