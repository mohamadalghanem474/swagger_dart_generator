import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class WishlistGetRequest extends Equatable {
  const WishlistGetRequest({this.customerguid});

  final String? customerguid;

  static WishlistGetRequest fromJson(Map<String, dynamic> json) {
    return WishlistGetRequest(
        customerguid: json['customerguid'] == null
            ? null
            : (json['customerguid'] as String));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'customerguid': customerguid};
  }

  WishlistGetRequest copyWith({String? customerguid}) {
    return WishlistGetRequest(customerguid: customerguid ?? this.customerguid);
  }

  @override
  List<Object?> get props {
    return [customerguid];
  }

  @override
  bool get stringify {
    return true;
  }
}
