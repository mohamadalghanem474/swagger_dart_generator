import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class RecipientDetailsGetRequest extends Equatable {
  const RecipientDetailsGetRequest({this.id});

  final int? id;

  static RecipientDetailsGetRequest fromJson(Map<String, dynamic> json) {
    return RecipientDetailsGetRequest(
        id: json['id'] == null ? null : (json['id'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'id': id};
  }

  RecipientDetailsGetRequest copyWith({int? id}) {
    return RecipientDetailsGetRequest(id: id ?? this.id);
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
