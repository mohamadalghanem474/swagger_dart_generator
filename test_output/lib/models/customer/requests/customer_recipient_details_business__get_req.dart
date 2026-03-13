import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class RecipientDetailsBusinessGetRequest extends Equatable {
  const RecipientDetailsBusinessGetRequest({this.id});

  final int? id;

  static RecipientDetailsBusinessGetRequest fromJson(
      Map<String, dynamic> json) {
    return RecipientDetailsBusinessGetRequest(
        id: json['id'] == null ? null : (json['id'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'id': id};
  }

  RecipientDetailsBusinessGetRequest copyWith({int? id}) {
    return RecipientDetailsBusinessGetRequest(id: id ?? this.id);
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
