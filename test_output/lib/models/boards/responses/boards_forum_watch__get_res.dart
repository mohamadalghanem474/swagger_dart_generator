import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ForumWatchGetResponse extends Equatable {
  const ForumWatchGetResponse({
    this.subscribed,
    this.text,
    this.error,
  });

  final bool? subscribed;

  final String? text;

  final bool? error;

  static ForumWatchGetResponse fromJson(Map<String, dynamic> json) {
    return ForumWatchGetResponse(
      subscribed:
          json['subscribed'] == null ? null : (json['subscribed'] as bool),
      text: json['text'] == null ? null : (json['text'] as String),
      error: json['error'] == null ? null : (json['error'] as bool),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'subscribed': subscribed,
      'text': text,
      'error': error,
    };
  }

  ForumWatchGetResponse copyWith({
    bool? subscribed,
    String? text,
    bool? error,
  }) {
    return ForumWatchGetResponse(
      subscribed: subscribed ?? this.subscribed,
      text: text ?? this.text,
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props {
    return [
      subscribed,
      text,
      error,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
