import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetByIdGetRequest extends Equatable {
  const GetByIdGetRequest({this.id});

  final int? id;

  static GetByIdGetRequest fromJson(Map<String, dynamic> json) {
    return GetByIdGetRequest(
        id: json['id'] == null ? null : (json['id'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'id': id};
  }

  GetByIdGetRequest copyWith({int? id}) {
    return GetByIdGetRequest(id: id ?? this.id);
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
