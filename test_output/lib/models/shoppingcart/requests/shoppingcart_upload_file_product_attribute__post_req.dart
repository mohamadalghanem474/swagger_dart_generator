import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class UploadFileProductAttributePostRequest extends Equatable {
  const UploadFileProductAttributePostRequest({this.attributeid});

  final int? attributeid;

  static UploadFileProductAttributePostRequest fromJson(
      Map<String, dynamic> json) {
    return UploadFileProductAttributePostRequest(
        attributeid:
            json['attributeid'] == null ? null : (json['attributeid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'attributeid': attributeid};
  }

  UploadFileProductAttributePostRequest copyWith({int? attributeid}) {
    return UploadFileProductAttributePostRequest(
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
