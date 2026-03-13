import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ForumWatchGetRequest extends Equatable {
  const ForumWatchGetRequest({this.id});

  final int? id;

  static ForumWatchGetRequest fromJson(Map<String, dynamic> json) {
    return ForumWatchGetRequest(
        id: json['id'] == null ? null : (json['id'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'id': id};
  }

  ForumWatchGetRequest copyWith({int? id}) {
    return ForumWatchGetRequest(id: id ?? this.id);
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
