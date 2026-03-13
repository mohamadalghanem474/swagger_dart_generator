import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetAllGetRequest extends Equatable {
  const GetAllGetRequest({this.name});

  final String? name;

  static GetAllGetRequest fromJson(Map<String, dynamic> json) {
    return GetAllGetRequest(
        name: json['name'] == null ? null : (json['name'] as String));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'name': name};
  }

  GetAllGetRequest copyWith({String? name}) {
    return GetAllGetRequest(name: name ?? this.name);
  }

  @override
  List<Object?> get props {
    return [name];
  }

  @override
  bool get stringify {
    return true;
  }
}
