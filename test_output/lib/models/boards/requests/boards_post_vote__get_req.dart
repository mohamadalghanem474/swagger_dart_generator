import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class PostVoteGetRequest extends Equatable {
  const PostVoteGetRequest({
    this.isup,
    this.postid,
  });

  final bool? isup;

  final int? postid;

  static PostVoteGetRequest fromJson(Map<String, dynamic> json) {
    return PostVoteGetRequest(
      isup: json['isup'] == null ? null : (json['isup'] as bool),
      postid: json['postid'] == null ? null : (json['postid'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'isup': isup,
      'postid': postid,
    };
  }

  PostVoteGetRequest copyWith({
    bool? isup,
    int? postid,
  }) {
    return PostVoteGetRequest(
      isup: isup ?? this.isup,
      postid: postid ?? this.postid,
    );
  }

  @override
  List<Object?> get props {
    return [
      isup,
      postid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
