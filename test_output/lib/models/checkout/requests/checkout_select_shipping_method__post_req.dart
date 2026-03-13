import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class SelectShippingMethodPostRequest extends Equatable {
  const SelectShippingMethodPostRequest({this.shippingoption});

  final String? shippingoption;

  static SelectShippingMethodPostRequest fromJson(Map<String, dynamic> json) {
    return SelectShippingMethodPostRequest(
        shippingoption: json['shippingoption'] == null
            ? null
            : (json['shippingoption'] as String));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'shippingoption': shippingoption};
  }

  SelectShippingMethodPostRequest copyWith({String? shippingoption}) {
    return SelectShippingMethodPostRequest(
        shippingoption: shippingoption ?? this.shippingoption);
  }

  @override
  List<Object?> get props {
    return [shippingoption];
  }

  @override
  bool get stringify {
    return true;
  }
}
