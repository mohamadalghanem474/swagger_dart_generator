import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CreateBusinessPostRequest extends Equatable {
  const CreateBusinessPostRequest({
    this.from_id,
    this.to_id,
    this.id,
  });

  final int? from_id;

  final int? to_id;

  final int? id;

  static CreateBusinessPostRequest fromJson(Map<String, dynamic> json) {
    return CreateBusinessPostRequest(
      from_id: json['from_id'] == null ? null : (json['from_id'] as int),
      to_id: json['to_id'] == null ? null : (json['to_id'] as int),
      id: json['id'] == null ? null : (json['id'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'from_id': from_id,
      'to_id': to_id,
      'id': id,
    };
  }

  CreateBusinessPostRequest copyWith({
    int? from_id,
    int? to_id,
    int? id,
  }) {
    return CreateBusinessPostRequest(
      from_id: from_id ?? this.from_id,
      to_id: to_id ?? this.to_id,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props {
    return [
      from_id,
      to_id,
      id,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
