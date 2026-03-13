import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetStateProvincesByIdGetRequest extends Equatable {
  const GetStateProvincesByIdGetRequest({this.id});

  final int? id;

  static GetStateProvincesByIdGetRequest fromJson(Map<String, dynamic> json) {
    return GetStateProvincesByIdGetRequest(
        id: json['id'] == null ? null : (json['id'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'id': id};
  }

  GetStateProvincesByIdGetRequest copyWith({int? id}) {
    return GetStateProvincesByIdGetRequest(id: id ?? this.id);
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
