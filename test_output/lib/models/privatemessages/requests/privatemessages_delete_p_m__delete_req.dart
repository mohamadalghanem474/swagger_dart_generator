import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class DeletePMDeleteRequest extends Equatable {
  const DeletePMDeleteRequest({this.privatemessageid});

  final int? privatemessageid;

  static DeletePMDeleteRequest fromJson(Map<String, dynamic> json) {
    return DeletePMDeleteRequest(
        privatemessageid: json['privatemessageid'] == null
            ? null
            : (json['privatemessageid'] as int));
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'privatemessageid': privatemessageid};
  }

  DeletePMDeleteRequest copyWith({int? privatemessageid}) {
    return DeletePMDeleteRequest(
        privatemessageid: privatemessageid ?? this.privatemessageid);
  }

  @override
  List<Object?> get props {
    return [privatemessageid];
  }

  @override
  bool get stringify {
    return true;
  }
}
