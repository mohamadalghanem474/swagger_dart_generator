import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class PostDeleteDeleteRequest extends Equatable {
  const PostDeleteDeleteRequest({this.id});

  final int? id;

  static PostDeleteDeleteRequest fromJson(Map<String, dynamic> json) {
    return PostDeleteDeleteRequest(
        id: json['id'] == null ? null : (json['id'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'id': id};
  }

  PostDeleteDeleteRequest copyWith({int? id}) {
    return PostDeleteDeleteRequest(id: id ?? this.id);
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
