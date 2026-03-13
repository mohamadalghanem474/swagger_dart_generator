import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class RemoveExternalAssociationDeleteRequest extends Equatable {
  const RemoveExternalAssociationDeleteRequest({this.id});

  final int? id;

  static RemoveExternalAssociationDeleteRequest fromJson(
      Map<String, dynamic> json) {
    return RemoveExternalAssociationDeleteRequest(
        id: json['id'] == null ? null : (json['id'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'id': id};
  }

  RemoveExternalAssociationDeleteRequest copyWith({int? id}) {
    return RemoveExternalAssociationDeleteRequest(id: id ?? this.id);
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
