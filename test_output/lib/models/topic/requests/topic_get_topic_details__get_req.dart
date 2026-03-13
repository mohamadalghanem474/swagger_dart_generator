import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetTopicDetailsGetRequest extends Equatable {
  const GetTopicDetailsGetRequest({this.id});

  final int? id;

  static GetTopicDetailsGetRequest fromJson(Map<String, dynamic> json) {
    return GetTopicDetailsGetRequest(
        id: json['id'] == null ? null : (json['id'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'id': id};
  }

  GetTopicDetailsGetRequest copyWith({int? id}) {
    return GetTopicDetailsGetRequest(id: id ?? this.id);
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
