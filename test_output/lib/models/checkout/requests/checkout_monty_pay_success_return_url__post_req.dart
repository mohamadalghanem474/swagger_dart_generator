import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class MontyPaySuccessReturnUrlPostRequest extends Equatable {
  const MontyPaySuccessReturnUrlPostRequest({this.orderguid});

  final String? orderguid;

  static MontyPaySuccessReturnUrlPostRequest fromJson(
      Map<String, dynamic> json) {
    return MontyPaySuccessReturnUrlPostRequest(
        orderguid:
            json['orderguid'] == null ? null : (json['orderguid'] as String));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'orderguid': orderguid};
  }

  MontyPaySuccessReturnUrlPostRequest copyWith({String? orderguid}) {
    return MontyPaySuccessReturnUrlPostRequest(
        orderguid: orderguid ?? this.orderguid);
  }

  @override
  List<Object?> get props {
    return [orderguid];
  }

  @override
  bool get stringify {
    return true;
  }
}
