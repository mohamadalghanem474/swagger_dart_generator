import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class PostVoteGetResponse extends Equatable {
  const PostVoteGetResponse({
    this.error,
    this.vote_count,
    this.is_up,
  });

  final String? error;

  final int? vote_count;

  final bool? is_up;

  static PostVoteGetResponse fromJson(Map<String, dynamic> json) {
    return PostVoteGetResponse(
      error: json['error'] == null ? null : (json['error'] as String),
      vote_count:
          json['vote_count'] == null ? null : (json['vote_count'] as int),
      is_up: json['is_up'] == null ? null : (json['is_up'] as bool),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'error': error,
      'vote_count': vote_count,
      'is_up': is_up,
    };
  }

  PostVoteGetResponse copyWith({
    String? error,
    int? vote_count,
    bool? is_up,
  }) {
    return PostVoteGetResponse(
      error: error ?? this.error,
      vote_count: vote_count ?? this.vote_count,
      is_up: is_up ?? this.is_up,
    );
  }

  @override
  List<Object?> get props {
    return [
      error,
      vote_count,
      is_up,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
