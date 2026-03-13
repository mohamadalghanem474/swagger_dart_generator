import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ForumRssGetRequest extends Equatable {
  const ForumRssGetRequest({this.id});

  final int? id;

  static ForumRssGetRequest fromJson(Map<String, dynamic> json) {
    return ForumRssGetRequest(
        id: json['id'] == null ? null : (json['id'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'id': id};
  }

  ForumRssGetRequest copyWith({int? id}) {
    return ForumRssGetRequest(id: id ?? this.id);
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
