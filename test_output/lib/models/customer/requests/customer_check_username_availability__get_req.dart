import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CheckUsernameAvailabilityGetRequest extends Equatable {
  const CheckUsernameAvailabilityGetRequest({this.username});

  final String? username;

  static CheckUsernameAvailabilityGetRequest fromJson(
      Map<String, dynamic> json) {
    return CheckUsernameAvailabilityGetRequest(
        username:
            json['username'] == null ? null : (json['username'] as String));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'username': username};
  }

  CheckUsernameAvailabilityGetRequest copyWith({String? username}) {
    return CheckUsernameAvailabilityGetRequest(
        username: username ?? this.username);
  }

  @override
  List<Object?> get props {
    return [username];
  }

  @override
  bool get stringify {
    return true;
  }
}
