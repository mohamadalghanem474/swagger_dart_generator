import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class DeleteTeamMemberDeleteRequest extends Equatable {
  const DeleteTeamMemberDeleteRequest({this.id});

  final int? id;

  static DeleteTeamMemberDeleteRequest fromJson(Map<String, dynamic> json) {
    return DeleteTeamMemberDeleteRequest(
        id: json['id'] == null ? null : (json['id'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'id': id};
  }

  DeleteTeamMemberDeleteRequest copyWith({int? id}) {
    return DeleteTeamMemberDeleteRequest(id: id ?? this.id);
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
