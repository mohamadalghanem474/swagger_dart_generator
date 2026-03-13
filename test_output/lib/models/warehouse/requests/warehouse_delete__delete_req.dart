import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class DeleteDeleteRequest extends Equatable {
  const DeleteDeleteRequest({this.id});

  final int? id;

  static DeleteDeleteRequest fromJson(Map<String, dynamic> json) {
    return DeleteDeleteRequest(
        id: json['id'] == null ? null : (json['id'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'id': id};
  }

  DeleteDeleteRequest copyWith({int? id}) {
    return DeleteDeleteRequest(id: id ?? this.id);
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
