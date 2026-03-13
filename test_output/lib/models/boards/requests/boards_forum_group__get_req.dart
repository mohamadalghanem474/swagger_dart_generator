import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ForumGroupGetRequest extends Equatable {
  const ForumGroupGetRequest({this.id});

  final int? id;

  static ForumGroupGetRequest fromJson(Map<String, dynamic> json) {
    return ForumGroupGetRequest(
        id: json['id'] == null ? null : (json['id'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'id': id};
  }

  ForumGroupGetRequest copyWith({int? id}) {
    return ForumGroupGetRequest(id: id ?? this.id);
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
