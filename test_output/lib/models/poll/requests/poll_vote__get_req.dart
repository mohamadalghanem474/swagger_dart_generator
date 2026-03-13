import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class VoteGetRequest extends Equatable {
  const VoteGetRequest({this.pollanswerid});

  final int? pollanswerid;

  static VoteGetRequest fromJson(Map<String, dynamic> json) {
    return VoteGetRequest(
        pollanswerid: json['pollanswerid'] == null
            ? null
            : (json['pollanswerid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'pollanswerid': pollanswerid};
  }

  VoteGetRequest copyWith({int? pollanswerid}) {
    return VoteGetRequest(pollanswerid: pollanswerid ?? this.pollanswerid);
  }

  @override
  List<Object?> get props {
    return [pollanswerid];
  }

  @override
  bool get stringify {
    return true;
  }
}
