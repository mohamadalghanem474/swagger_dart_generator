import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class AddItemsToCartFromWishlistPutRequest extends Equatable {
  const AddItemsToCartFromWishlistPutRequest({this.customerguid});

  final String? customerguid;

  static AddItemsToCartFromWishlistPutRequest fromJson(
      Map<String, dynamic> json) {
    return AddItemsToCartFromWishlistPutRequest(
        customerguid: json['customerguid'] == null
            ? null
            : (json['customerguid'] as String));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'customerguid': customerguid};
  }

  AddItemsToCartFromWishlistPutRequest copyWith({String? customerguid}) {
    return AddItemsToCartFromWishlistPutRequest(
        customerguid: customerguid ?? this.customerguid);
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
