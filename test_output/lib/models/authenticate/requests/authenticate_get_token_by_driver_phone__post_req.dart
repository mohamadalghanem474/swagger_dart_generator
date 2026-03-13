import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetTokenByDriverPhonePostRequest extends Equatable {
  const GetTokenByDriverPhonePostRequest({this.Phone});

  final String? Phone;

  static GetTokenByDriverPhonePostRequest fromJson(Map<String, dynamic> json) {
    return GetTokenByDriverPhonePostRequest(
        Phone: json['Phone'] == null ? null : (json['Phone'] as String));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'Phone': Phone};
  }

  GetTokenByDriverPhonePostRequest copyWith({String? Phone}) {
    return GetTokenByDriverPhonePostRequest(Phone: Phone ?? this.Phone);
  }

  @override
  List<Object?> get props {
    return [Phone];
  }

  @override
  bool get stringify {
    return true;
  }
}
