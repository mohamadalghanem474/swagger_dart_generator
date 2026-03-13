import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetAllDriversGetRequest extends Equatable {
  const GetAllDriversGetRequest({this.searchvalue});

  final String? searchvalue;

  static GetAllDriversGetRequest fromJson(Map<String, dynamic> json) {
    return GetAllDriversGetRequest(
        searchvalue: json['searchvalue'] == null
            ? null
            : (json['searchvalue'] as String));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'searchvalue': searchvalue};
  }

  GetAllDriversGetRequest copyWith({String? searchvalue}) {
    return GetAllDriversGetRequest(
        searchvalue: searchvalue ?? this.searchvalue);
  }

  @override
  List<Object?> get props {
    return [searchvalue];
  }

  @override
  bool get stringify {
    return true;
  }
}
