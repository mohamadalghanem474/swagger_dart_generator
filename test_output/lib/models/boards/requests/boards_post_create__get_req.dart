import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class PostCreateGetRequest extends Equatable {
  const PostCreateGetRequest({
    this.quoteid,
    this.id,
    this.quote,
  });

  final int? quoteid;

  final int? id;

  final String? quote;

  static PostCreateGetRequest fromJson(Map<String, dynamic> json) {
    return PostCreateGetRequest(
      quoteid: json['quoteid'] == null ? null : (json['quoteid'] as int),
      id: json['id'] == null ? null : (json['id'] as int),
      quote: json['quote'] == null ? null : (json['quote'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'quoteid': quoteid,
      'id': id,
      'quote': quote,
    };
  }

  PostCreateGetRequest copyWith({
    int? quoteid,
    int? id,
    String? quote,
  }) {
    return PostCreateGetRequest(
      quoteid: quoteid ?? this.quoteid,
      id: id ?? this.id,
      quote: quote ?? this.quote,
    );
  }

  @override
  List<Object?> get props {
    return [
      quoteid,
      id,
      quote,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
