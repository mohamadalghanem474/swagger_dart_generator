import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class MontyPayCancelReturnUrlPostRequest extends Equatable {
  const MontyPayCancelReturnUrlPostRequest({this.orderguid});

  final String? orderguid;

  static MontyPayCancelReturnUrlPostRequest fromJson(
      Map<String, dynamic> json) {
    return MontyPayCancelReturnUrlPostRequest(
        orderguid:
            json['orderguid'] == null ? null : (json['orderguid'] as String));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'orderguid': orderguid};
  }

  MontyPayCancelReturnUrlPostRequest copyWith({String? orderguid}) {
    return MontyPayCancelReturnUrlPostRequest(
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
