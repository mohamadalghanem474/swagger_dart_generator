import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class GetOrderNoteFileGetRequest extends Equatable {
  const GetOrderNoteFileGetRequest({this.ordernoteid});

  final int? ordernoteid;

  static GetOrderNoteFileGetRequest fromJson(Map<String, dynamic> json) {
    return GetOrderNoteFileGetRequest(
        ordernoteid:
            json['ordernoteid'] == null ? null : (json['ordernoteid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'ordernoteid': ordernoteid};
  }

  GetOrderNoteFileGetRequest copyWith({int? ordernoteid}) {
    return GetOrderNoteFileGetRequest(
        ordernoteid: ordernoteid ?? this.ordernoteid);
  }

  @override
  List<Object?> get props {
    return [ordernoteid];
  }

  @override
  bool get stringify {
    return true;
  }
}
