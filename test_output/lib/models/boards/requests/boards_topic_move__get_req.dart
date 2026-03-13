import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class TopicMoveGetRequest extends Equatable {
  const TopicMoveGetRequest({this.id});

  final int? id;

  static TopicMoveGetRequest fromJson(Map<String, dynamic> json) {
    return TopicMoveGetRequest(
        id: json['id'] == null ? null : (json['id'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'id': id};
  }

  TopicMoveGetRequest copyWith({int? id}) {
    return TopicMoveGetRequest(id: id ?? this.id);
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
