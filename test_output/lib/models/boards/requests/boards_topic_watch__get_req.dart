import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class TopicWatchGetRequest extends Equatable {
  const TopicWatchGetRequest({this.id});

  final int? id;

  static TopicWatchGetRequest fromJson(Map<String, dynamic> json) {
    return TopicWatchGetRequest(
        id: json['id'] == null ? null : (json['id'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'id': id};
  }

  TopicWatchGetRequest copyWith({int? id}) {
    return TopicWatchGetRequest(id: id ?? this.id);
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
