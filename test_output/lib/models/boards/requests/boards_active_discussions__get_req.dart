import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ActiveDiscussionsGetRequest extends Equatable {
  const ActiveDiscussionsGetRequest({
    this.forumid,
    this.pagenumber,
  });

  final int? forumid;

  final int? pagenumber;

  static ActiveDiscussionsGetRequest fromJson(Map<String, dynamic> json) {
    return ActiveDiscussionsGetRequest(
      forumid: json['forumid'] == null ? null : (json['forumid'] as int),
      pagenumber:
          json['pagenumber'] == null ? null : (json['pagenumber'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'forumid': forumid,
      'pagenumber': pagenumber,
    };
  }

  ActiveDiscussionsGetRequest copyWith({
    int? forumid,
    int? pagenumber,
  }) {
    return ActiveDiscussionsGetRequest(
      forumid: forumid ?? this.forumid,
      pagenumber: pagenumber ?? this.pagenumber,
    );
  }

  @override
  List<Object?> get props {
    return [
      forumid,
      pagenumber,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
