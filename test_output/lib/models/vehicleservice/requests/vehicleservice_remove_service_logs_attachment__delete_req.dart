import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class RemoveServiceLogsAttachmentDeleteRequest extends Equatable {
  const RemoveServiceLogsAttachmentDeleteRequest({
    this.servicelogsid,
    this.fileid,
  });

  final int? servicelogsid;

  final int? fileid;

  static RemoveServiceLogsAttachmentDeleteRequest fromJson(
      Map<String, dynamic> json) {
    return RemoveServiceLogsAttachmentDeleteRequest(
      servicelogsid:
          json['servicelogsid'] == null ? null : (json['servicelogsid'] as int),
      fileid: json['fileid'] == null ? null : (json['fileid'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'servicelogsid': servicelogsid,
      'fileid': fileid,
    };
  }

  RemoveServiceLogsAttachmentDeleteRequest copyWith({
    int? servicelogsid,
    int? fileid,
  }) {
    return RemoveServiceLogsAttachmentDeleteRequest(
      servicelogsid: servicelogsid ?? this.servicelogsid,
      fileid: fileid ?? this.fileid,
    );
  }

  @override
  List<Object?> get props {
    return [
      servicelogsid,
      fileid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
