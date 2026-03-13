import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class InActiveCustomerAccountPostRequest extends Equatable {
  const InActiveCustomerAccountPostRequest({this.email});

  final String? email;

  static InActiveCustomerAccountPostRequest fromJson(
      Map<String, dynamic> json) {
    return InActiveCustomerAccountPostRequest(
        email: json['email'] == null ? null : (json['email'] as String));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'email': email};
  }

  InActiveCustomerAccountPostRequest copyWith({String? email}) {
    return InActiveCustomerAccountPostRequest(email: email ?? this.email);
  }

  @override
  List<Object?> get props {
    return [email];
  }

  @override
  bool get stringify {
    return true;
  }
}
