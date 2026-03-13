import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetStationForCurrentManagerPostRequest extends Equatable {
  const GetStationForCurrentManagerPostRequest({this.searchvalue});

  final String? searchvalue;

  static GetStationForCurrentManagerPostRequest fromJson(
      Map<String, dynamic> json) {
    return GetStationForCurrentManagerPostRequest(
        searchvalue: json['searchvalue'] == null
            ? null
            : (json['searchvalue'] as String));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'searchvalue': searchvalue};
  }

  GetStationForCurrentManagerPostRequest copyWith({String? searchvalue}) {
    return GetStationForCurrentManagerPostRequest(
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
