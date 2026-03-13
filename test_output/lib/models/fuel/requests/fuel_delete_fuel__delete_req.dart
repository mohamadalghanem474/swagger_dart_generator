import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class DeleteFuelDeleteRequest extends Equatable {
  const DeleteFuelDeleteRequest({this.id});

  final int? id;

  static DeleteFuelDeleteRequest fromJson(Map<String, dynamic> json) {
    return DeleteFuelDeleteRequest(
        id: json['id'] == null ? null : (json['id'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'id': id};
  }

  DeleteFuelDeleteRequest copyWith({int? id}) {
    return DeleteFuelDeleteRequest(id: id ?? this.id);
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
