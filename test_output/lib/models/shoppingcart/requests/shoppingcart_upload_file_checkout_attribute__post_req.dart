import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class UploadFileCheckoutAttributePostRequest extends Equatable {
  const UploadFileCheckoutAttributePostRequest({this.attributeid});

  final int? attributeid;

  static UploadFileCheckoutAttributePostRequest fromJson(
      Map<String, dynamic> json) {
    return UploadFileCheckoutAttributePostRequest(
        attributeid:
            json['attributeid'] == null ? null : (json['attributeid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'attributeid': attributeid};
  }

  UploadFileCheckoutAttributePostRequest copyWith({int? attributeid}) {
    return UploadFileCheckoutAttributePostRequest(
        attributeid: attributeid ?? this.attributeid);
  }

  @override
  List<Object?> get props {
    return [attributeid];
  }

  @override
  bool get stringify {
    return true;
  }
}
