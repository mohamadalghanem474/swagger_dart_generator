import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class TopicEditGetRequest extends Equatable {
  const TopicEditGetRequest({this.id});

  final int? id;

  static TopicEditGetRequest fromJson(Map<String, dynamic> json) {
    return TopicEditGetRequest(
        id: json['id'] == null ? null : (json['id'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'id': id};
  }

  TopicEditGetRequest copyWith({int? id}) {
    return TopicEditGetRequest(id: id ?? this.id);
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
