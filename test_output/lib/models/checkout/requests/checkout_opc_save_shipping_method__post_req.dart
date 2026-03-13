import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class OpcSaveShippingMethodPostRequest extends Equatable {
  const OpcSaveShippingMethodPostRequest({this.shippingoption});

  final String? shippingoption;

  static OpcSaveShippingMethodPostRequest fromJson(Map<String, dynamic> json) {
    return OpcSaveShippingMethodPostRequest(
        shippingoption: json['shippingoption'] == null
            ? null
            : (json['shippingoption'] as String));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'shippingoption': shippingoption};
  }

  OpcSaveShippingMethodPostRequest copyWith({String? shippingoption}) {
    return OpcSaveShippingMethodPostRequest(
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
