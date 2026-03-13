import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class DeleteServiceLogDeleteRequest extends Equatable {
  const DeleteServiceLogDeleteRequest({this.id});

  final int? id;

  static DeleteServiceLogDeleteRequest fromJson(Map<String, dynamic> json) {
    return DeleteServiceLogDeleteRequest(
        id: json['id'] == null ? null : (json['id'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'id': id};
  }

  DeleteServiceLogDeleteRequest copyWith({int? id}) {
    return DeleteServiceLogDeleteRequest(id: id ?? this.id);
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
