import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class IdPostRequest extends Equatable {
  const IdPostRequest({this.id});

  final int? id;

  static IdPostRequest fromJson(Map<String, dynamic> json) {
    return IdPostRequest(id: json['id'] == null ? null : (json['id'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'id': id};
  }

  IdPostRequest copyWith({int? id}) {
    return IdPostRequest(id: id ?? this.id);
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
