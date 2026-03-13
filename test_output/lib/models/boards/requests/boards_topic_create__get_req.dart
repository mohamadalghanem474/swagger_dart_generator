import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class TopicCreateGetRequest extends Equatable {
  const TopicCreateGetRequest({this.id});

  final int? id;

  static TopicCreateGetRequest fromJson(Map<String, dynamic> json) {
    return TopicCreateGetRequest(
        id: json['id'] == null ? null : (json['id'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'id': id};
  }

  TopicCreateGetRequest copyWith({int? id}) {
    return TopicCreateGetRequest(id: id ?? this.id);
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
