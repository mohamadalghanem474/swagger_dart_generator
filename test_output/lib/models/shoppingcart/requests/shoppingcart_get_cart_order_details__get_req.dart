import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetCartOrderDetailsGetRequest extends Equatable {
  const GetCartOrderDetailsGetRequest({this.shoppingcarttype});

  final String? shoppingcarttype;

  static GetCartOrderDetailsGetRequest fromJson(Map<String, dynamic> json) {
    return GetCartOrderDetailsGetRequest(
        shoppingcarttype: json['shoppingcarttype'] == null
            ? null
            : (json['shoppingcarttype'] as String));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'shoppingcarttype': shoppingcarttype};
  }

  GetCartOrderDetailsGetRequest copyWith({String? shoppingcarttype}) {
    return GetCartOrderDetailsGetRequest(
        shoppingcarttype: shoppingcarttype ?? this.shoppingcarttype);
  }

  @override
  List<Object?> get props {
    return [shoppingcarttype];
  }

  @override
  bool get stringify {
    return true;
  }
}
