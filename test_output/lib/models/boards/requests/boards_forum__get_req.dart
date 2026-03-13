import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class ForumGetRequest extends Equatable {
  const ForumGetRequest({
    this.pagenumber,
    this.id,
  });

  final int? pagenumber;

  final int? id;

  static ForumGetRequest fromJson(Map<String, dynamic> json) {
    return ForumGetRequest(
      pagenumber:
          json['pagenumber'] == null ? null : (json['pagenumber'] as int),
      id: json['id'] == null ? null : (json['id'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'pagenumber': pagenumber,
      'id': id,
    };
  }

  ForumGetRequest copyWith({
    int? pagenumber,
    int? id,
  }) {
    return ForumGetRequest(
      pagenumber: pagenumber ?? this.pagenumber,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props {
    return [
      pagenumber,
      id,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
