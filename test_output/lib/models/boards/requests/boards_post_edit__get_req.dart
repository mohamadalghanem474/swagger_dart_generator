import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class PostEditGetRequest extends Equatable {
  const PostEditGetRequest({this.id});

  final int? id;

  static PostEditGetRequest fromJson(Map<String, dynamic> json) {
    return PostEditGetRequest(
        id: json['id'] == null ? null : (json['id'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'id': id};
  }

  PostEditGetRequest copyWith({int? id}) {
    return PostEditGetRequest(id: id ?? this.id);
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
