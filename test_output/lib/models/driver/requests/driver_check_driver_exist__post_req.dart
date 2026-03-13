import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class CheckDriverExistPostRequest extends Equatable {
  const CheckDriverExistPostRequest({this.phone});

  final String? phone;

  static CheckDriverExistPostRequest fromJson(Map<String, dynamic> json) {
    return CheckDriverExistPostRequest(
        phone: json['phone'] == null ? null : (json['phone'] as String));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'phone': phone};
  }

  CheckDriverExistPostRequest copyWith({String? phone}) {
    return CheckDriverExistPostRequest(phone: phone ?? this.phone);
  }

  @override
  List<Object?> get props {
    return [phone];
  }

  @override
  bool get stringify {
    return true;
  }
}
