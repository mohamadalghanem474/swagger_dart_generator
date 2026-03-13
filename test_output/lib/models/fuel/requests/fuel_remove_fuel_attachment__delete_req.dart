import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class RemoveFuelAttachmentDeleteRequest extends Equatable {
  const RemoveFuelAttachmentDeleteRequest({
    this.fuelid,
    this.fileid,
  });

  final int? fuelid;

  final int? fileid;

  static RemoveFuelAttachmentDeleteRequest fromJson(Map<String, dynamic> json) {
    return RemoveFuelAttachmentDeleteRequest(
      fuelid: json['fuelid'] == null ? null : (json['fuelid'] as int),
      fileid: json['fileid'] == null ? null : (json['fileid'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'fuelid': fuelid,
      'fileid': fileid,
    };
  }

  RemoveFuelAttachmentDeleteRequest copyWith({
    int? fuelid,
    int? fileid,
  }) {
    return RemoveFuelAttachmentDeleteRequest(
      fuelid: fuelid ?? this.fuelid,
      fileid: fileid ?? this.fileid,
    );
  }

  @override
  List<Object?> get props {
    return [
      fuelid,
      fileid,
    ];
  }

  @override
  bool get stringify {
    return true;
  }
}
