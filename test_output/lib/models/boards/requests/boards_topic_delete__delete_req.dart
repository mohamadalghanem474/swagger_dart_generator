import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class TopicDeleteDeleteRequest extends Equatable {
  const TopicDeleteDeleteRequest({this.id});

  final int? id;

  static TopicDeleteDeleteRequest fromJson(Map<String, dynamic> json) {
    return TopicDeleteDeleteRequest(
        id: json['id'] == null ? null : (json['id'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'id': id};
  }

  TopicDeleteDeleteRequest copyWith({int? id}) {
    return TopicDeleteDeleteRequest(id: id ?? this.id);
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
